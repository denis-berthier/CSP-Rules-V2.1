
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








;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1) For solving individual puzzles with preferences
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction solve-sudoku-string-w-preferences (?string $?prefs)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    (if (load-modules $?prefs) then
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
                ;;; this is for fake rule: (defrule no-solution-at-all =>)
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
                "computer = " ?*Computer-description* crlf
                "init-time = " (seconds-to-hours ?*init-instance-time*)
                ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
                ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
            )
        )
        (if ?*print-actions* then (print-banner) (printout t crlf))
    )
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
    (bind ?data (subseq$ ?list 1 (* ?*grid-size* ?*grid-size*)))
    (bind ?prefs (subseq$ ?list (+ (* ?*grid-size* ?*grid-size*) 1) (length$ ?list)))
    (if (load-modules ?prefs) then
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
                ;;; this is for fake rule: (defrule no-solution-at-all =>)
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
                "computer = " ?*Computer-description* crlf
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
)


(deffunction solve-sukaku-list-w-preferences ($?list)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    (bind ?data (subseq$ ?list 1 (* ?*grid-size* ?*grid-size*)))
    (bind ?prefs (subseq$ ?list (+ (* ?*grid-size* ?*grid-size*) 1) (length$ ?list)))
    (printout t "List of modules = " ?prefs crlf)
    (if (load-modules ?prefs) then
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
                ;;; this is for fake rule: (defrule no-solution-at-all =>)
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
                "computer = " ?*Computer-description* crlf
                "init-time = " (seconds-to-hours ?*init-instance-time*)
                ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
                ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
            )
        )
        (if ?*print-actions* then (print-banner) (printout t crlf))
    )
)

(deffunction solve-sudoku-grid-w-preferences ($?list)
    (solve-sudoku-list-w-preferences (clean-grid-list ?list))
)

(deffunction solve-sukaku-grid-w-preferences ($?list)
    (solve-sukaku-list-w-preferences (clean-grid-list ?list))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2) For solving with preferences files of puzzles given in string format (one per line)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction solve-grid-from-text-file-w-preferences (?file-symb ?i $?prefs)
    (reset) (reset)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    (if (load-modules $?prefs) then
        ;;; puzzle entries are taken into account here
        (init-grid-from-text-file ?file-symb)
        (assert (context (name 0)))
        (assert (grid ?i))
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
                ;;; this is for fake rule: (defrule no-solution-at-all =>)
                (if (not ?*solution-found*) then (run 1))
            )
        )
        (if (not ?*solution-found*) then
            (focus MAIN)
            (run)
        )

        (bind ?time2 (time))
        (bind ?*solve-instance-time* (- ?time2 ?time1))
        (bind ?*total-instance-time* (- ?time2 ?time0))
        (bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
        (bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
        (if ?*print-time* then
            (printout t
                "computer = " ?*Computer-description* crlf
                "init-time = " (seconds-to-hours ?*init-instance-time*)
                ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
                ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
            )
            (printout t "nb-facts = " ?*nb-facts* crlf)
            ;(printout t "nb rules " ?nb-rules crlf)
            ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
            (printout t crlf)
        )
        (if ?*print-actions* then
            (print-banner)
            (printout t crlf)
        )
    )
)

(deffunction solve-n-grids-after-first-p-from-text-file-w-preferences (?file-name ?p ?n $?prefs)
    (if ?*print-actions* then (print-banner))
    (if (load-modules $?prefs) then
        (bind ?*add-instance-to-solved-list* TRUE)
        (bind ?*solved-list* (create$))
        (bind ?*not-solved-list* (create$))
        (bind ?*no-sol-list* (create$))
        (bind ?*multi-sol-list* (create$))
        (bind ?*exotic-list* (create$))
        (bind ?*belt-list* (create$))
        (bind ?*J-exocet-list* (create$))
        (bind ?*oddagon-list* (create$))
        (bind ?*special-list* (create$))
        (bind ?*special-list1* (create$))
        (bind ?*special-list2* (create$))
        (bind ?*total-time* 0)
        (bind ?*max-time* 0)
        (bind ?*total-outer-time* (time))
        (open ?file-name "file-symb" "r")
        (bind ?i 1)
        (while (<= ?i ?p) (readline "file-symb") (bind ?i (+ ?i 1)))
        (bind ?i (+ ?p 1))
        (while (<= ?i (+ ?p ?n))
            (printout t "#" ?i crlf)
            (bind ?*has-exotic-pattern* FALSE)
            (bind ?*has-belt* FALSE)
            (bind ?*has-J-exocet* FALSE)
            (bind ?*has-oddagon* FALSE)
            (bind ?*has-tridagon* FALSE)

            (solve-grid-from-text-file-w-preferences "file-symb" ?i $?prefs)
            (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
            (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
            (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
            (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
            (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
            (bind ?i (+ ?i 1))
        )
        (close "file-symb")
        (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
        (printout t ";;; computer = " ?*Computer-description* crlf)
        (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
        (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
        (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
    )
)




