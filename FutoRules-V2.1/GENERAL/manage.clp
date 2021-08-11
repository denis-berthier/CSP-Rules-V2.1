
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; COMPUTE CURRENT RESOLUTION STATE AS A LIST OR PRINT IT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-n-spaces (?n)
    (loop-for-count ?n (printout t " "))
)


(deffunction compute-current-resolution-state-in-context (?cont)
    (if (> ?*grid-size* 25) then (printout t "Currently, this function works only for grid size ≤ 25" crlf) (return FALSE))
    (bind ?current-rs (create$))
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?rc-content "")
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    ;;; add these lines for puzzles on larger grids
                    (bind ?nb2 ?nb)
                    (if (> ?*grid-size* 9) then (bind ?nb2 (transform-nb-to-letter ?nb)))
                   (bind ?rc-content (sym-cat ?rc-content ?nb2))
                )
                (if (= ?nb ?*grid-size*) then (bind ?current-rs (create$ ?current-rs ?rc-content)))
            )
        )
    )
    ?current-rs
)


(deffunction print-current-resolution-state-in-context (?cont)
    (if (> ?*grid-size* 25) then (printout t "Currently, this function works only for grid size ≤ 25" crlf) (return FALSE))
    (foreach ?row ?*rows*
        (printout t "   ")
        (foreach ?col ?*columns*
            (bind ?nb-cands 0)
            (bind ?spaces (+ ?*grid-size* 1))
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    (bind ?nb2 ?nb)
                    (bind ?nb-cands (+ ?nb-cands 1))
                    (bind ?spaces (- ?spaces 1))
                    ;;; add this line for puzzles on larger grids
                    (if (> ?*grid-size* 9) then (bind ?nb2 (transform-nb-to-letter ?nb)))
                    (printout t ?nb2)
                )
                (if (= ?nb ?*grid-size*) then (print-n-spaces ?spaces))
            )
            (if (= ?col ?*grid-size*) then (printout t crlf))
        )
    )
    (printout t crlf)
)


(deffunction compute-current-resolution-state ()
    (compute-current-resolution-state-in-context 0)
)

(deffunction print-current-resolution-state ()
    (print-current-resolution-state-in-context 0)
)


