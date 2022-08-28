
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              ANALYSE K-DIGIT PATTERNS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - May 2022               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; Patterns must be defined by strings of 81 characters, which can be:
;;; "." or "0" for cells not in the pattern
;;; "1" or "X" for cells in the pattern

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Read, pretty-print and analyse patterns
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction init-candidates-from-k-digit-pattern-string (?k ?string)
    ;;; Initialize candidates for cells with no entry.
    ;;; Initializing candidates as follows avoids having lots of elementary propagation rules
    ;;; firing at the start to eliminate them.
    (bind ?*nb-candidates* 0)
    (bind ?len (length$ ?string))
    (if (< ?len 81) then
        (bind ?string (str-cat ?string
            "000000000000000000000000000000000000000000000000000000000000000000000000000000000"
        ))
    )
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            ;;; read the content of the cell from the entries
            (bind ?i (cell-index ?row ?col))
            (bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?string)))) ; supposes there is only one symbol per entry

            ;;; if the content is "0" or ".", then assert the 9 possible candidates for the cell
            (if (or (eq ?nb 0) (eq ?nb .)) then
                (bind ?blk (block ?row ?col))
                (bind ?sqr (square ?row ?col))
                ;;; for every number ?nbx, assert it as a candidate
                (foreach ?nbx ?*numbers*
                    (bind ?labx (nrc-to-label ?nbx ?row ?col))
                    (assert (candidate (context 0) (status cand) (label ?labx) (number ?nbx) (row ?row) (column ?col) (block ?blk) (square ?sqr)))
                    (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                    (if (or ?*print-all-details* ?*print-init-details*) then
                        (printout t "Asserting candidate " ?nbx " for " (row-name ?row) (column-name ?col) crlf)
                    )
                )
            )
            (if (or (eq ?nb 1) (eq ?nb X)) then
                (bind ?blk (block ?row ?col))
                (bind ?sqr (square ?row ?col))
                ;;; for every number in {1 2 3}, assert it as a candidate
                (foreach ?nbx ?*numbers*
                    (if (<= ?nbx ?k) then
                        (bind ?labx (nrc-to-label ?nbx ?row ?col))
                        (assert (candidate (context 0) (status cand) (label ?labx) (number ?nbx) (row ?row) (column ?col) (block ?blk) (square ?sqr)))
                        (assert (is-restricted-TE-target 0 ?labx))
                        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                        (if (or ?*print-all-details* ?*print-init-details*) then
                            (printout t "Asserting candidate " ?nbx " for " (row-name ?row) (column-name ?col) crlf)
                        )
                    )
                )
            )
        )
    )
)



(deffunction init-k-digit-pattern-string (?k ?string)
    (if ?*print-actions* then (printout t ?string crlf))
    (reset) (reset)
    ;;; General background is defined here (fixed facts and structures common to all the instances)
    (bind ?*restrict-TE-targets* TRUE)
    (init-general-application-structures)
    ;;; Data specific to the instance are defined here
    ;;; This function could be simplified (and initialization time shortened)
    ;;; by combining the following two calls into a single function,
    ;;; but, for easier navigation in the facts base, I prefer asserting all the c-values first and then all the candidates.
    ;;; Initialize candidates for cells with no entry
    (init-candidates-from-k-digit-pattern-string ?k ?string)
    (assert (context (name 0)))
    (assert (grid 0))
)


(deffunction solve-k-digit-pattern-string (?k ?string)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; General background plus puzzle entries are taken into account here
    (init-k-digit-pattern-string ?k ?string)
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))

    ;;; The puzzle is solved here
    (bind ?n (run))
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
    ;;; make the default unrestricted form of T&E available for other calculations
    (bind ?*restrict-TE-targets* FALSE)
    (if ?*print-actions* then (print-banner) (printout t crlf))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; solve pattern files
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-grid-from-k-digit-pattern-string-file (?k ?file-symb)
    ;;; read next line containing the grid entries
    (bind ?string (readline ?file-symb))
    (if ?*print-actions* then (printout t ?string crlf))
    ;;; fixed facts and structures common to all the instances are defined here
    (bind ?*restrict-TE-targets* TRUE)
    (init-general-application-structures)
    (bind ?*nb-csp-variables-solved* 0)
    ;;; This function could be simplified (and initialization time shortened)
    ;;; by combining the following two calls into a single function,
    ;;; but, for easier navigation in the facts base, I prefer asserting all the c-values first and then all the candidates.
    ;;; Initialize candidates for cells with no entry
    (init-candidates-from-k-digit-pattern-string ?k ?string)
)


(deffunction solve-grid-from-k-digit-pattern-string-file (?k ?file-symb ?i)
    (reset) (reset)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; puzzle entries are taken into account here
    (init-grid-from-k-digit-pattern-string-file ?k ?file-symb)
    (pretty-print-current-resolution-state)
    (assert (context (name 0)))
    (assert (grid ?i))
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    (bind ?n (run)) ;;; the grid is solved here
    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
    (bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
    (bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts = " ?*nb-facts* crlf)
        ;(printout t "nb rules " ?nb-rules crlf)
        ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (printout t crlf)
    )
    ;;; make the default unrestricted form of T&E available for other calculations
    (bind ?*restrict-TE-targets* FALSE)
)


(deffunction solve-n-grids-after-first-p-from-k-digit-pattern-string-file (?k ?file-name ?p ?n)
    (if ?*print-actions* then (print-banner))
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

        (solve-grid-from-k-digit-pattern-string-file ?k "file-symb" ?i)
        (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
        (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
        (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
        (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
        (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
    (printout t "Solved list = " ?*solved-list* crlf)
    (printout t (length$ ?*no-sol-list*) " contradictory " ?k "-digit patterns:" crlf)
    (printout t ?*no-sol-list* crlf)
    ;;; make the default unrestricted form of T&E available for other calculations:
    (bind ?*restrict-TE-targets* FALSE)
)


(deffunction solve-n-grids-after-first-p-from-k-digit-pattern-string-file-excluding (?k ?file-name ?p ?n $?l-out)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*has-exotic-pattern* FALSE)
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
        (if (member$ ?i ?l-out)
            then (readline "file-symb")
                 ;(printout t "#" ?i " in already solved lists" crlf)
                 (printout t "#" ?i " " )
            else
                (printout t "#" ?i crlf)
                (bind ?*has-exotic-pattern* FALSE)
                (bind ?*has-belt* FALSE)
                (bind ?*has-J-exocet* FALSE)
                (bind ?*has-oddagon* FALSE)
                (bind ?*has-tridagon* FALSE)

                (solve-grid-from-k-digit-pattern-string-file ?k "file-symb" ?i)
                (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
                (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
                (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
                (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
                (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
        )
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
    (printout t "Solved list = " ?*solved-list* crlf)
    (printout t (length$ ?*no-sol-list*) " contradictory " ?k "-digit patterns:" crlf)
    (printout t ?*no-sol-list* crlf)
    ;;; make the default unrestricted form of T&E available for other calculations:
    (bind ?*restrict-TE-targets* FALSE)
)



(deffunction solve-n-grids-after-first-p-from-k-digit-pattern-string-file-included-but-excluding (?k ?file-name ?p ?n ?l-in $?l-out)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*multi-sol-list* (create$))
    (bind ?*has-exotic-pattern* FALSE)
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
        (if (not (member$ ?i ?l-in))
            then (readline "file-symb")
                 ; (printout t ?i " not in selected list" crlf)
            else (if (member$ ?i ?l-out)
                    then (readline "file-symb")
                        ; (printout t ?i " in already solved lists" crlf)
                    else
                        (printout t "#" ?i crlf)
                        (bind ?*has-exotic-pattern* FALSE)
                        (bind ?*has-belt* FALSE)
                        (bind ?*has-J-exocet* FALSE)
                        (bind ?*has-oddagon* FALSE)
                        (bind ?*has-tridagon* FALSE)

                        (solve-grid-from-k-digit-pattern-string-file ?k "file-symb" ?i)
                        (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
                        (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
                        (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
                        (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
                        (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
                )
        )
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
    (printout t "Solved list = " ?*solved-list* crlf)
    (printout t (length$ ?*no-sol-list*) " contradictory " ?k "-digit patterns:" crlf)
    (printout t ?*no-sol-list* crlf)
    ;;; make the default unrestricted form of T&E available for other calculations:
    (bind ?*restrict-TE-targets* FALSE)
)

