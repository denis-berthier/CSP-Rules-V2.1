
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              BACKDOORS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;           January 2006 - December 2020             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ADDITIONAL FUNCTIONS FOR SUDOKU
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction find-sudoku-backdoors (?string)
    ;;; the puzzle is supposed to be given as a string
    (reset) (reset)
    (if ?*print-actions* then (print-banner))
    (bind ?*list-of-backdoors* (create$))

    (bind ?time0 (time))
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    ;;; puzzle entries are taken into account here
    (init-grid-from-string ?string)
    (assert (context (name 0)))
    (assert (grid 0))

    ;;; the backdoors are looked for here
    (assert (find-backdoors 0))
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?len (length$ ?*list-of-backdoors*))
    (bind ?rat (if (eq ?len 0) then "" else (str-cat ?*rating-type* "-")))
    (bind ?back (if (eq ?len 1) then "BACKDOOR" else "BACKDOORS"))
    (printout t crlf  ?len " " (str-cat ?rat ?back " FOUND: "))
    (print-list-of-labels ?*list-of-backdoors*)
    (printout t crlf crlf)
    (if ?*print-time* then
        (printout t "Puzzle " ?string " :" crlf)
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



(deffunction find-sukaku-backdoors ($?list)
    (reset) (reset)
    (if ?*print-actions* then (print-banner))
    (bind ?*list-of-backdoors* (create$))

    (bind ?time0 (time))
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    ;;; puzzle entries are taken into account here
    (init-sukaku-list $?list)
    (assert (context (name 0)))
    (assert (grid 0))
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))

    ;;; the backdoors are looked for here
    (assert (find-backdoors 0))
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?rat (if (eq (str-length ?*rating-type*) 0) then "" else (str-cat ?*rating-type* "-")))
    (printout t crlf  (length$ ?*list-of-backdoors*) " " (str-cat ?rat "BACKDOORS FOUND: "))
    (print-list-of-labels ?*list-of-backdoors*)
    (printout t crlf crlf)
    (if ?*print-time* then
        (printout t "Puzzle " ?list " :" crlf)
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

(defrule detect-backdoor
    (declare (salience ?*solution-found-salience*))
    (grid ?g)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand))
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
    (bind ?*list-of-backdoors* (create$ ?*list-of-backdoors* ?gen-cand))
    (printout t "ONE BACKDOOR FOUND: " ?gen-cand crlf)
)

