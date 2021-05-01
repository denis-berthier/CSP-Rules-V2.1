
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              ANTI-BACKDOOR PAIRS
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF SOLUTION IN NON-INITIAL CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction find-sudoku-anti-backdoor-pairs (?sudoku-string)
    ;;; the puzzle is supposed to be given as a string
    (reset) (reset)
    (if ?*print-actions* then (print-banner))
    (bind ?*list-of-anti-backdoor-pairs* (create$))

    (bind ?time0 (time))
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    ;;; puzzle entries are taken into account here
    (init-grid-from-string ?sudoku-string)
    (assert (context (name 0)))
    (assert (grid 0))

    ;;; start the search for anti-backdoor-pairs
    (assert (find-anti-backdoor-pairs 0))
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?len (length$ ?*list-of-anti-backdoor-pairs*))
    (bind ?rat (if (eq ?len 0) then "" else (str-cat ?*rating-type* "-")))
    (bind ?back (if (eq ?len 1) then "ANTI-BACKDOOR-PAIR" else "ANTI-BACKDOOR-PAIRS"))
    (printout t crlf  ?len " " (str-cat ?rat ?back " FOUND: "))
    (print-list-of-labels ?*list-of-anti-backdoor-pairs*)
    (printout t crlf crlf)
    (if ?*print-time* then
        (printout t "Puzzle " ?sudoku-string " :" crlf)
        (printout t
            "total-time = " (seconds-to-hours (- ?time2 ?time0))  crlf
        )
        (printout t "nb-facts=" ?*nb-facts* crlf)
        ;(printout t "nb rules " ?nb-rules crlf)
        ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (print-banner)
        (printout t crlf)
    )
)



(deffunction find-sukaku-anti-backdoor-pairs ($?sukaku-list)
    (reset) (reset)
    (if ?*print-actions* then (print-banner))
    (bind ?*list-of-anti-backdoor-pairs* (create$))

    (bind ?time0 (time))
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    ;;; puzzle entries are taken into account here
    (init-sukaku-list ?sukaku-list)
    (assert (context (name 0)))
    (assert (grid 0))
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))

    ;;; start the search for anti-backdoor-pairs
    (assert (find-anti-backdoor-pairs 0))
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?rat (if (eq (str-length ?*rating-type*) 0) then "" else (str-cat ?*rating-type* "-")))
    (printout t crlf  (length$ ?*list-of-anti-backdoor-pairs*) " " (str-cat ?rat "ANTI-BACKDOOR-PAIRS FOUND: "))
    (print-list-of-labels ?*list-of-anti-backdoor-pairs*)
    (printout t crlf crlf)
    (if ?*print-time* then
        (printout t "Puzzle " ?sukaku-list " :" crlf)
        (printout t
            "total-time = " (seconds-to-hours (- ?time2 ?time0))  crlf
        )
        (printout t "nb-facts=" ?*nb-facts* crlf)
        ;(printout t "nb rules " ?nb-rules crlf)
        ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (print-banner)
        (printout t crlf)
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF SOLUTION IN NON-INITIAL CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; redefine the rule for Sudoku

(defrule detect-anti-backdoor-pair
    (declare (salience ?*solution-found-salience*))
    (grid ?g)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand) (generating-cand2 ?gen-cand2))
    ?pl <- (technique ?cont BRT)
    ;;; the presence of a c-value for every rc-cell in a context means that a solution has been found
    (forall (row ?row)
        (forall (column ?col)
            (exists (number ?nb)
                (candidate (context ?cont) (status c-value) (row ?row) (column ?col) (number ?nb))
            )
        )
    )
=>
    (retract ?pl)
    (assert (clean-and-retract ?cont))
    (bind ?*list-of-anti-backdoor-pairs* (create$ ?*list-of-anti-backdoor-pairs* ?gen-cand ?gen-cand2))
    (printout t "ONE ANTI-BACKDOOR-PAIR FOUND: " ?gen-cand " " ?gen-cand2 crlf)
)


