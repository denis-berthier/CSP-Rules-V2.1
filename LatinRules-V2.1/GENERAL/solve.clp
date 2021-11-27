
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              SOLVE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - July 2021               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for initialising grid structure
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; these functions create facts depending only on grid structure and not on the actual presence of candidates


(deffunction init-variables-scopes ()
	;;; this function creates facts depending only on grid structure and not on the actual presence of candidates
	;;; create facts for numbers, rows and columns
    (foreach ?nb ?*numbers* (assert (number ?nb)))
    (foreach ?row ?*rows* (assert (row ?row)))
    (foreach ?col ?*columns* (assert (column ?col)))
    (if ?*Pandiagonal* then
        (foreach ?diag ?*diagonals* (assert (diagonal ?diag)))
        (foreach ?anti-diag ?*anti-diagonals* (assert (anti-diagonal ?anti-diag)))
    )

	;;; create rc-cell facts for rows and columns.
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (assert (rc-cell ?row ?col))
        )
    )
)


(deffunction init-csp-variables ()
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?csp (row-column-to-rc-variable ?row ?col))
            (assert (csp-variable (name ?csp) (type rc)))
            (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))
        )
    )
    (foreach ?row ?*rows*
        (foreach ?nb ?*numbers*
            (bind ?csp (row-number-to-rn-variable ?row ?nb))
            (assert (csp-variable (name ?csp) (type rn)))
        )
    )
    (foreach ?col ?*columns*
        (foreach ?nb ?*numbers*
            (bind ?csp (column-number-to-cn-variable ?col ?nb))
            (assert (csp-variable (name ?csp) (type cn)))
        )
    )
    (if ?*Pandiagonal* then
        (foreach ?diag ?*diagonals*
            (foreach ?nb ?*numbers*
                (bind ?csp (diagonal-number-to-dn-variable ?diag ?nb))
                (assert (csp-variable (name ?csp) (type dn)))
            )
        )
        (foreach ?diag ?*anti-diagonals*
            (foreach ?nb ?*numbers*
                (bind ?csp (anti-diagonal-number-to-an-variable ?diag ?nb))
                (assert (csp-variable (name ?csp) (type an)))
            )
        )
    )
)


(deffunction init-is-csp-variable-for-label ()
    (foreach ?nb ?*numbers*
        (foreach ?row ?*rows*
            (foreach ?col ?*columns*
                (bind ?lab (nrc-to-label ?nb ?row ?col))
                
                (bind ?csp (row-column-to-rc-variable ?row ?col))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))

                (bind ?csp (row-number-to-rn-variable ?row ?nb))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))

                (bind ?csp (column-number-to-cn-variable ?col ?nb))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))
                
                (if ?*Pandiagonal* then
                    (bind ?csp (diagonal-number-to-dn-variable (row-col-to-diag ?row ?col) ?nb))
                    (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))

                    (bind ?csp (anti-diagonal-number-to-an-variable (row-col-to-anti-diag ?row ?col) ?nb))
                    (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))
                )
            )
        )
    )
)



;;; the existence of physical links (rc-, rn-, cn- or dn- an- links) does not suppose that the candidates are still present

(deffunction init-physical-links ()
	;;; create facts for physical rc-links
	(foreach ?row ?*rows*
		(foreach ?col ?*columns*
			(foreach ?nb ?*numbers*
                (bind ?lab (nrc-to-label ?nb ?row ?col))
				(bind ?nb2 (+ ?nb 1))
				(while (<= ?nb2 ?*grid-size*)
					(bind ?lab2 (nrc-to-label ?nb2 ?row ?col))
					(assert (physical-link ?lab ?lab2 rc))
					(bind ?nb2 (+ ?nb2 1))
				)
			)
		)
	)

	;;; create facts for physical rn-links
	(foreach ?row ?*rows*
        (foreach ?nb ?*numbers*
            (foreach ?col ?*columns*
                (bind ?lab (nrc-to-label ?nb ?row ?col))
				(bind ?col2 (+ ?col 1))
				(while (<= ?col2 ?*grid-size*)
					(bind ?lab2 (nrc-to-label ?nb ?row ?col2))
					(assert (physical-link ?lab ?lab2 rn))
					(bind ?col2 (+ ?col2 1))
				)
			)
		)
	)

	;;; create facts for physical cn-links
    (foreach ?col ?*columns*
        (foreach ?nb ?*numbers*
            (foreach ?row ?*rows*
                (bind ?lab (nrc-to-label ?nb ?row ?col))
				(bind ?row2 (+ ?row 1))
				(while (<= ?row2 ?*grid-size*)
					(bind ?lab2 (nrc-to-label ?nb ?row2 ?col))
					(assert (physical-link ?lab ?lab2 cn))
					(bind ?row2 (+ ?row2 1))
				)
			)
		)
	)

    ;;; if ?*Pandiagonal*, create facts for physical dn-links and an-links
    (if ?*Pandiagonal* then
        (foreach ?diag ?*diagonals*
            (foreach ?nb ?*numbers*
                (foreach ?anti-diag ?*anti-diagonals*
                    (bind ?lab (nda-to-label ?nb ?diag ?anti-diag))
                    (bind ?anti-diag2 (+ ?anti-diag 1))
                    (while (<= ?anti-diag2 ?*grid-size*)
                        (bind ?lab2 (nda-to-label ?nb ?diag ?anti-diag2))
                        (assert (physical-link ?lab ?lab2 dn))
                        (bind ?anti-diag2 (+ ?anti-diag2 1))
                    )
                )
            )
        )
        (foreach ?anti-diag ?*anti-diagonals*
            (foreach ?nb ?*numbers*
                (foreach ?diag ?*diagonals*
                    (bind ?lab (nda-to-label ?nb ?diag ?anti-diag))
                    (bind ?diag2 (+ ?diag 1))
                    (while (<= ?diag2 ?*grid-size*)
                        (bind ?lab2 (nda-to-label ?nb ?diag2 ?anti-diag))
                        (assert (physical-link ?lab ?lab2 an))
                        (bind ?diag2 (+ ?diag2 1))
                    )
                )
            )
        )
    )
)



(deffunction init-general-application-structures ()
    (init-universal-globals)
    (if ?*Pandiagonal* then (bind ?*has-whips[1]* TRUE))
	(init-variables-scopes)
	(init-csp-variables)
	(init-is-csp-variable-for-label)
    (if ?*Pandiagonal* then (assert (Pandiagonal)))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Basic functions for initialising and solving a puzzle given as a string
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-values-from-string (?givens)
	;;; Assert the values and the associated c-values for cells with given entries.
	(bind ?*nb-csp-variables-solved* 0)
	;;; For every cell,
	(foreach ?row  ?*rows*
		(foreach ?col ?*columns*
			(bind ?i (cell-index ?row ?col))
			;;; read the content of the cell from the entries
			(bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?givens)))) ;;; supposes there is only one symbol per entry
            ;;; add this line for grid size > 9
			(if (> ?*grid-size* 9) then (bind ?nb (transform-letter-to-nb ?nb)))
			;;; if the content is a Number from ?*numbers* (i.e. there is an entry for the cell)
			;;; then assert (the value and) the corresponding c-value
			(if (member$ ?nb ?*numbers*) then
				(bind ?lab (nrc-to-label ?nb ?row ?col))
                (if (not ?*Pandiagonal*)
                    then (assert (candidate (context 0) (status c-value) (label ?lab) (number ?nb) (row ?row) (column ?col)))
                    else (assert (candidate (context 0) (status c-value) (label ?lab) (number ?nb) (row ?row) (column ?col)
                                    (diagonal (row-col-to-diag ?row ?col)) (anti-diagonal (row-col-to-anti-diag ?row ?col))
                            ))
                )
				(bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
				(if (or ?*print-all-details* ?*print-init-details*) then (printout t "Asserting entry: " (row-name ?row)(column-name ?col) " = " ?nb crlf))
			)
		)
	)
	(if ?*print-initial-state* then (printout t ?*nb-csp-variables-solved* " givens"))
)


(deffunction init-candidates-from-string (?givens)
	;;; Initialize candidates for cells with no entry.
	;;; Initializing candidates as follows avoids having lots of elementary propagation rules
	;;; firing at the start to eliminate them.
	(bind ?*nb-candidates* 0)

	(foreach ?row ?*rows*
		(foreach ?col ?*columns*

			;;; read the content of the cell from the entries
			(bind ?i (cell-index ?row ?col))
			(bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?givens)))) ; supposes there is only one symbol per entry
            ;;; add this line for grid size > 9
            (if (> ?*grid-size* 9) then (bind ?nb (transform-letter-to-nb ?nb)))

            ;;; if the content is not a number (i.e. there is no entry for the cell)
            ;;; then assert the possible candidates for the cell
            (if (not (member$ ?nb ?*numbers*)) then
				;;; for every number ?nbx, check if its candidature for this cell is not obviously forbidden by the other entries of the grid
				(foreach ?nbx ?*numbers*
                    (bind ?labx (nrc-to-label ?nbx ?row ?col))
					(bind ?nbx-allowed TRUE)
					(foreach ?rowy ?*rows*
						(foreach ?coly ?*columns*
                            ;;; read the content of cell (?rowy ?coly) from the entries
							(bind ?iy (cell-index ?rowy ?coly))
							(bind ?nby (nth$ 1 (explode$ (sub-string ?iy ?iy ?givens)))) ;;; supposes there is only one symbol per entry
                            ;;; add this line for grid size > 9
                            (if (> ?*grid-size* 9) then (bind ?nby (transform-letter-to-nb ?nby)))

                            (if (member$ ?nby ?*numbers*) then
                                (bind ?laby (nrc-to-label ?nby ?rowy ?coly))
								(if (labels-linked ?labx ?laby) then (bind ?nbx-allowed FALSE))
							)
						)
					)
					;;; if it is not forbidden, then assert its candidature and the csp-variables to which it belongs
					(if ?nbx-allowed
						then 
							(bind ?labx (nrc-to-label ?nbx ?row ?col))
                            (if (not ?*Pandiagonal*)
                                then (assert (candidate (context 0) (status cand) (label ?labx) (number ?nbx) (row ?row) (column ?col)))
                                else (assert (candidate (context 0) (status cand) (label ?labx) (number ?nbx) (row ?row) (column ?col)
                                                (diagonal (row-col-to-diag ?row ?col)) (anti-diagonal (row-col-to-anti-diag ?row ?col))
                                        ))
                            )
							(bind ?*nb-candidates* (+ ?*nb-candidates* 1))
							 (if (or ?*print-all-details* ?*print-init-details*) then
								(printout t "Asserting candidate " ?nbx " for " (row-name ?row) (column-name ?col) crlf)
							)
					)
				)
			)
		)
	)
	(if ?*print-initial-state* then (printout t ", " ?*nb-candidates* " candidates" crlf))
)




(deffunction init-grid-from-string (?string)
	(if ?*print-actions* then (printout t ?string crlf))
	;;; This function could be simplified (and initialization time shortened)
	;;; by combining the following two calls into a single function,
	;;; but, for easier navigation in the facts base, I prefer asserting all the c-values first and then all the candidates.
	;;; Assert the values and the associated c-values for cells with given entries
	(init-values-from-string ?string)
	;;; Initialize candidates for cells with no entry
	(init-candidates-from-string ?string)
)


(deffunction init (?string) (init-grid-from-string ?string))



(deffunction solve (?string)
	(reset) (reset)  
	(if ?*print-actions* then (print-banner))

	(bind ?time0 (time))
	;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
	;;; puzzle entries are taken into account here
    (init-grid-from-string ?string)
    (assert (context (name 0)))
	(assert (grid 0))
	(bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))

    ;;; the puzzle is solved here
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
        (printout t "nb-facts=" ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (print-banner)
		(printout t crlf)
	)
)



(deffunction sol-string-to-list (?sol-string)
    (bind ?row 1)
    (while (<= ?row ?*grid-size*)
        (bind ?col 1)
        (while (<= ?col ?*grid-size*)
            (bind ?k (cell-index ?row ?col))
            (bind ?nb (nth$ 1 (explode$ (sub-string ?k ?k ?sol-string))))
            (bind ?label (nrc-to-label ?nb ?row ?col))
            (bind ?*known-to-be-in-solution* (create$ ?*known-to-be-in-solution* ?label))
            (bind ?col (+ ?col 1))
        )
        (bind ?row (+ ?row 1))
    )
   ?*known-to-be-in-solution*     
)


(deffunction solve-knowing-solution (?puzzle-string ?sol-string)
	(reset) (reset)  
	(if ?*print-actions* then (print-banner))
    ;;; fixed facts and structures common to all the instances are defined here:
    (bind ?time0 (time))
	(init-general-application-structures)
    ;;; puzzle entries are taken into account here:
	(init-grid-from-string ?puzzle-string)
    (assert (context (name 0)))
	(assert (grid 0))
    ;;; solution entries are taken into account here:
    (assert (deactivate 0 t-whip))
    (bind ?*known-to-be-in-solution* (sol-string-to-list ?sol-string))
	(bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    ;;; the grid is solved here:
	(bind ?nb-rules (run))
	(bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
	(bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
	(bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t "Puzzle " ?puzzle-string " :" crlf)
        (printout t
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts=" ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (print-banner)
		(printout t crlf)
	)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for initialising and solving a puzzle given as a list
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; this allows to solve puzzles given in a user-friendly format (technically a list) such as (without the ";;;"):
;;;  . . 1  2 . .  . . 3
;;;  . . .  . . 4  2 . .
;;;  5 . .  . . .  . 6 .
;;;  7 . .  6 . .  . 1 .
;;;  . . .  . 3 .  . . .
;;;  . 8 .  . . 9  . . 4
;;;  . 3 .  . . .  . . 6
;;;  . . 7  1 . .  . 2 .
;;;  4 . .  . . 7  5 . .
;;; the functions has to be called by (solle-grid-as-list (create$ the_above_list))

(deffunction init-values-from-list ($?list)
    ;;; Assert the values and the associated c-values for cells with given entries.
    ;;; For every cell,
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?i (cell-index ?row ?col))
            ;;; read the content of the cell from the entries
            (bind ?nb (nth$ ?i $?list))
            ;;; add this line for grid size > 9
            (if (> ?*grid-size* 9) then (bind ?nb (transform-letter-to-nb ?nb)))
            ;;; if the content is a number (i.e. there is an entry for the cell)
            ;;; then assert (the value and) the corresponding c-value
            (if (member$ ?nb ?*numbers*) then
                (bind ?xxx (nrc-to-label ?nb ?row ?col))
                ;;; (assert (value ?xxx))
                (if (not ?*Pandiagonal*)
                    then (assert (candidate (context 0) (status c-value) (label ?xxx) (number ?nb) (row ?row) (column ?col)))
                    else (assert (candidate (context 0) (status c-value) (label ?xxx) (number ?nb) (row ?row) (column ?col)
                                    (diagonal (row-col-to-diag ?row ?col)) (anti-diagonal (row-col-to-anti-diag ?row ?col))
                            ))
                )
                (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
                (if (or ?*print-all-details* ?*print-init-details*) then
                    (printout t "Asserting entry: " (row-name ?row)(column-name ?col) ?*equal-sign* ?nb crlf)
                )
            )
        )
    )
    (if ?*print-initial-state* then (printout t ?*nb-csp-variables-solved* " givens"))
)


(deffunction init-candidates-from-list ($?list)
    ;;; Initialize candidates for cells with no entry.
    ;;; Initializing candidates as follows avoids having lots of elementary propagation rules
    ;;; firing at the start to eliminate them.
    (bind ?*nb-candidates* 0)
    ;;; For every cell,
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?i (cell-index ?row ?col))
            ;;; read the content of the cell from the entries
            (bind ?nb (nth$ ?i $?list))
            ;;; add this line for grid size > 9
            (if (> ?*grid-size* 9) then (bind ?nb (transform-letter-to-nb ?nb)))
            ;;; if the content is not a number (i.e. there is no entry for the cell)
            ;;; then assert the possible candidates for the cell
            (if (not (member$ ?nb ?*numbers*)) then
                ;;; for every number nbx,
                (foreach ?nbx ?*numbers*
                    (bind ?labx (nrc-to-label ?nbx ?row ?col))
                    ;;; check if its candidature for this cell is not obviously forbidden by the other entries of the grid
                    (bind ?nbx-allowed TRUE)
                    (foreach ?rowy ?*rows*
                        (foreach ?coly ?*columns*
                            (bind ?iy (cell-index ?rowy ?coly))
                            (bind ?nby (nth$ ?iy $?list))
                            ;;; add this line for grid size > 9
                            (if (> ?*grid-size* 9) then (bind ?nby (transform-letter-to-nb ?nby)))
                            (if (member$ ?nby ?*numbers*) then
                                (bind ?laby (nrc-to-label ?nby ?rowy ?coly))
                                (if (labels-linked ?labx ?laby) then (bind ?nbx-allowed FALSE))
                            )
                        )
                    )
                    ;;; if it is not forbidden, then assert its candidature
                    (if ?nbx-allowed
                        then
                            (bind ?xxx (nrc-to-label ?nbx ?row ?col))
                            (if (not ?*Pandiagonal*)
                                then (assert (candidate (context 0) (status cand) (label ?xxx) (number ?nbx) (row ?row) (column ?col)))
                                else (assert (candidate (context 0) (status cand) (label ?xxx) (number ?nbx) (row ?row) (column ?col)
                                                (diagonal (row-col-to-diag ?row ?col)) (anti-diagonal (row-col-to-anti-diag ?row ?col))
                                        ))
                            )
                            (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                            (if (or ?*print-all-details* ?*print-init-details*) then
                                (printout t "Asserting candidate " ?nbx " for " (row-name ?row)(column-name ?col) crlf)
                            )
                    )
                )
            )
        )
    )
    (if ?*print-initial-state* then (printout t ", " ?*nb-candidates* " candidates" crlf))
)




(deffunction init-list ($?list)
    (if ?*print-actions* then (printout t $?list crlf))
    ;;; This function could be simplified (and initialization time shortened)
    ;;; by combining the following two calls into a single function,
    ;;; but, for easier navigation in the facts base, I prefer asserting all the c-values first and then all the candidates.
    ;;; Assert the values and the associated c-values for cells with given entries
    (init-values-from-list $?list)
    ;;; Initialize candidates for cells with no entry
    (init-candidates-from-list $?list)
)



(deffunction solve-list ($?list)
    (reset) (reset)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    ;;; puzzle entries are taken into account here
    (init-list $?list)
    (assert (context (name 0)))
    (assert (grid 0))
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    ;;; the grid is solved here
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
    (bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
    (bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t "Puzzle " ?list " :" crlf)
        (printout t
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts=" ?*nb-facts* crlf)
        ;(printout t "nb rules " ?nb-rules crlf)
        ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
    )
    (if ?*print-actions* then
        (print-banner)
        (printout t crlf)
    )
)


;;; for compatibility with previous versions
(deffunction solve-grid-as-list ($?list)
    (solve-list ?list)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for dealing with tatham's format
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction tatham-to-LS-string (?str)
    (bind ?len (str-length ?str))
    (bind ?string "")
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?x (nth$ 1 (explode$ (sub-string ?i ?i ?str))))
        (if (numberp ?x) then (bind ?string (str-cat ?string ?x)))
        (if (eq ?x a) then (bind ?string (str-cat ?string ".")))
        (if (eq ?x b) then (bind ?string (str-cat ?string "..")))
        (if (eq ?x c) then (bind ?string (str-cat ?string "...")))
        (if (eq ?x d) then (bind ?string (str-cat ?string "....")))
        (if (eq ?x e) then (bind ?string (str-cat ?string ".....")))
        (if (eq ?x f) then (bind ?string (str-cat ?string "......")))
        (if (eq ?x g) then (bind ?string (str-cat ?string ".......")))
        (if (eq ?x h) then (bind ?string (str-cat ?string "........")))
        (if (eq ?x i) then (bind ?string (str-cat ?string ".........")))
        (if (eq ?x j) then (bind ?string (str-cat ?string "..........")))
        (if (eq ?x k) then (bind ?string (str-cat ?string "...........")))
        (if (eq ?x l) then (bind ?string (str-cat ?string "............")))
        (if (eq ?x m) then (bind ?string (str-cat ?string ".............")))
        (if (eq ?x n) then (bind ?string (str-cat ?string "..............")))
        (if (eq ?x o) then (bind ?string (str-cat ?string "...............")))
        (if (eq ?x p) then (bind ?string (str-cat ?string "................")))
        (if (eq ?x q) then (bind ?string (str-cat ?string ".................")))
        (if (eq ?x r) then (bind ?string (str-cat ?string "..................")))
        (if (eq ?x s) then (bind ?string (str-cat ?string "...................")))
        (if (eq ?x t) then (bind ?string (str-cat ?string "....................")))
        (if (eq ?x u) then (bind ?string (str-cat ?string ".....................")))
        (if (eq ?x v) then (bind ?string (str-cat ?string "......................")))
        (if (eq ?x w) then (bind ?string (str-cat ?string ".......................")))
        (if (eq ?x x) then (bind ?string (str-cat ?string "........................")))
        (if (eq ?x y) then (bind ?string (str-cat ?string ".........................")))
        (if (eq ?x z) then (bind ?string (str-cat ?string "..........................")))

        (bind ?i (+ ?i 1))
    )
    ?string
)



(deffunction solve-tatham (?str)
    (bind ?string (tatham-to-LS-string ?str))
    (if (neq (str-length ?string) (* ?*grid-size* ?*grid-size*)) then (printout t "Error in data length" crlf) (return))
    (solve ?string)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for initialising and solving a partly solved puzzle given as a list of candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; A partly solved LS puzzle is given by a list of candidates
;;; and solved using function solve-partly-solved-puzzle
 

(deffunction string-to-list (?cand-str)
    (bind ?cand-list (create$))
    (loop-for-count (?j 1 (str-length ?cand-str))
        (bind ?nb (nth$ 1 (explode$ (sub-string ?j ?j ?cand-str))))
        ;;; add this line for grid size > 9
        (if (> ?*grid-size* 9) then (bind ?nb2 (transform-letter-to-nb ?nb)))
        ;(if (not (numberp ?nb)) then (printout t "Error in data for cell " ?row " " ?col crlf) (halt))
        ;;; add this candiadte to the list of candidates for this cell
        (bind ?cand-list (create$ ?cand-list ?nb2))
    )
    ?cand-list
)


(deffunction init-partly-solved-puzzle ($?list)
    (reset) (reset)
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    ;;; Initialize values and candidates for all the cells
    (bind ?*nb-csp-variables-solved* 0)
    (bind ?*nb-candidates* 0)
    ;;; For every cell,
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?i (cell-index ?row ?col))
            ;;; read the content of the cell from the entries and turn it into a string:
            (bind ?cand-str (implode$ (create$ (nth$ ?i $?list))))
            ;;; transform this string into a list of candidates:
            (bind ?cand-list (string-to-list ?cand-str))
            ;;; use this list for asserting c-values and candidates
            (if (eq (length$ ?cand-list) 1)
                then ; there is a single candidate for this cell; assert it as a c-value
                    (bind ?nb (nth$ 1 ?cand-list))
                    (bind ?xxx (nrc-to-label ?nb ?row ?col))
                    (if (not ?*Pandiagonal*)
                        then (assert (candidate (context 0) (status c-value) (label ?xxx) (number ?nb) (row ?row) (column ?col)))
                        else (assert (candidate (context 0) (status c-value) (label ?xxx) (number ?nb) (row ?row) (column ?col)
                                        (diagonal (row-col-to-diag ?row ?col)) (anti-diagonal (row-col-to-anti-diag ?row ?col))
                            ))
                    )
                    (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
                    (if (or ?*print-all-details* ?*print-init-details*) then
                        (printout t "Asserting entry: " (row-name ?row)(column-name ?col) ?*equal-sign* ?nb crlf)
                    )
                    else ; assert each element as a candidate for this cell
                    (foreach ?nb ?cand-list
                        (bind ?xxx (nrc-to-label ?nb ?row ?col))
                        (if (not ?*Pandiagonal*)
                            then (assert (candidate (context 0) (status cand) (label ?xxx) (number ?nb) (row ?row) (column ?col)))
                            else (assert (candidate (context 0) (status cand) (label ?xxx) (number ?nb) (row ?row) (column ?col)
                                            (diagonal (row-col-to-diag ?row ?col)) (anti-diagonal (row-col-to-anti-diag ?row ?col))
                                ))
                        )
                        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                        (if (or ?*print-all-details* ?*print-init-details*) then
                            (printout t "Asserting candidate " ?nb " for " (row-name ?row)(column-name ?col) crlf)
                        )
                    )
            )
        )
    )
    (assert (context (name 0)))
    (assert (grid 0))
    ; (if ?*print-initial-state* then (printout t " " ?*nb-candidates* " candidates" crlf))
)

;;; another generic-like name for the same function:
(deffunction init-resolution-state ($?RS)
    (init-partly-solved-puzzle ?RS)
)


 
 
(deffunction solve-partly-solved-puzzle ($?list)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; fixed facts and structures common to all the instances
    ;;; and puzzle entries are taken into account here
    (init-partly-solved-puzzle $?list)
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))

    ;;; the puzzle is solved here
    (bind ?n (run))
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


;;; another generic-like name for the same function:
(deffunction solve-resolution-state ($?RS)
    (solve-partly-solved-puzzle ?RS)
)

