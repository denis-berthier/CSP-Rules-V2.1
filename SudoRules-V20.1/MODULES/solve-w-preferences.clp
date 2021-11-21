
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              SOLVE WITH PREFERENCES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - December 2021            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-








(deffunction solve-sudoku-string-w-preferences (?string $?prefs)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    (load-modules $?prefs)
    ;;; General background plus puzzle entries are taken into account here
    (init-sudoku-string ?string)
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))

    ;;; The puzzle is solved here
    (foreach ?module ?prefs
        (if (not ?*solution-found*) then
            (focus ?module)
            (run)
            (if (eq ?module-index 1) then
                (bind ?*print-RS-after-Singles-backup* ?*print-RS-after-Singles*)
                (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
                (bind ?*print-RS-after-Singles* FALSE)
                (bind ?*print-RS-after-whips[1]* FALSE)
            )
            (if (not ?*solution-found*) then (run 1))
        )
    )
    (if (not ?*solution-found*) then
        (focus MAIN)
        (run)
    )
    (bind ?*print-RS-after-Singles* ?*print-RS-after-Singles-backup*)
    (bind ?*print-RS-after-whips[1]* ?*print-RS-after-whips[1]-backup*)

    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
    (bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
    (bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t "Puzzle " ?string " :" crlf)
        (printout t
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
    )
    (if ?*print-actions* then (print-banner) (printout t crlf))
)

;;; also named "solve-w-preferences" for compatibility with the next functions
;;; and because the string representation is the most common one
(deffunction solve-w-preferences (?string  $?prefs)
    (solve-sudoku-string-w-preferences ?string ?prefs)
)
;;; and abbreviated as:
(deffunction solve-w-prefs (?string  $?prefs)
    (solve-sudoku-string-w-preferences ?string ?prefs)
)


(deffunction solve-sudoku-list-w-preferences ($?list)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    (bind ?data (subseq$ $?list 1 (* ?*grid-size* ?*grid-size*)))
    (bind ?prefs (subseq$ $?list (+ (* ?*grid-size* ?*grid-size*) 1) (length$ ?list)))
    (load-modules $?prefs)
    ;;; General background plus puzzle entries are taken into account here
    (init-sudoku-list ?data)
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    
    ;;; The puzzle is solved here
    (foreach ?module ?prefs
        (if (not ?*solution-found*) then
            (focus ?module)
            (run)
            (if (eq ?module-index 1) then
                (bind ?*print-RS-after-Singles-backup* ?*print-RS-after-Singles*)
                (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
                (bind ?*print-RS-after-Singles* FALSE)
                (bind ?*print-RS-after-whips[1]* FALSE)
            )
            (if (not ?*solution-found*) then (run 1))
        )
    )
    (if (not ?*solution-found*) then
        (focus MAIN)
        (run)
    )
    (bind ?*print-RS-after-Singles* ?*print-RS-after-Singles-backup*)
    (bind ?*print-RS-after-whips[1]* ?*print-RS-after-whips[1]-backup*)

    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
    (bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
    (bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t "Puzzle " $?list " :" crlf)
        (printout t
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        ;(printout t "nb-facts = " ?*nb-facts* crlf)
        ;(printout t "nb rules " ?nb-rules crlf)
        ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
    )
    (if ?*print-actions* then (print-banner) (printout t crlf))
)


(deffunction solve-sukaku-list-w-preferences ($?list)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    (bind ?data (subseq$ $?list 1 (* ?*grid-size* ?*grid-size*)))
    (bind ?prefs (subseq$ $?list (+ (* ?*grid-size* ?*grid-size*) 1) (length$ ?list)))
    (load-modules $?prefs)
    ;;; General background plus puzzle entries are taken into account here
    (init-sukaku-list ?data)
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))

    ;;; The puzzle is solved here
    (foreach ?module ?prefs
        (if (not ?*solution-found*) then
            (focus ?module)
            (run)
            (if (eq ?module-index 1) then
                (bind ?*print-RS-after-Singles-backup* ?*print-RS-after-Singles*)
                (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
                (bind ?*print-RS-after-Singles* FALSE)
                (bind ?*print-RS-after-whips[1]* FALSE)
            )
            (if (not ?*solution-found*) then (run 1))
        )
    )
    (if (not ?*solution-found*) then
        (focus MAIN)
        (run)
    )
    (bind ?*print-RS-after-Singles* ?*print-RS-after-Singles-backup*)
    (bind ?*print-RS-after-whips[1]* ?*print-RS-after-whips[1]-backup*)

    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
    (bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
    (bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t "Puzzle " $?list " :" crlf)
        (printout t
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
    )
    (if ?*print-actions* then (print-banner) (printout t crlf))
)


(deffunction solve-sudoku-grid-w-preferences ($?list)
    (solve-sudoku-list-w-preferences (clean-grid-list ?list))
)

(deffunction solve-sukaku-grid-w-preferences ($?list)
    (solve-sukaku-list-w-preferences (clean-grid-list ?list))
)

