
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              SOLVE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - December 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1) FUNCTIONS FOR INITIALISING GRID STRUCTURE (= FIXED BACKGROUND)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;; these functions create facts depending only on grid structure and not on the actual presence of candidates
;;; these background data are common to all the puzzles


(deffunction init-variables-scopes ()
	;;; this function creates facts depending only on grid structure and not on the actual presence of candidates
	;;; create facts for numbers, rows, columns, blocks and squares
    (foreach ?nb ?*numbers* (assert (number ?nb)))
    (foreach ?row ?*rows* (assert (row ?row)))
    (foreach ?col ?*columns* (assert (column ?col)))
    (foreach ?blk ?*blocks* (assert (block ?blk)))
    (foreach ?sqr ?*squares* (assert (square ?sqr)))

	;;; create rc-cell facts for rows, columns, blocks and squares.
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?blk (block ?row ?col))
            (bind ?sqr (square ?row ?col))
            (assert (rc-cell ?row ?col ?blk ?sqr))
        )
    )

    ;;; assert 2d spaces ; used only in T&E-2d
    (assert (2d-space rc))
    (assert (2d-space rn))
    (assert (2d-space cn))
    (assert (2d-space bn))
)


(deffunction init-correspondences ()
	;;; create facts for correspondences between labels, numbers, rows, columns, blocks and squares.
	;;; the existence of a correspondence does not imply the existence of the candidate
    ;;; correspondences are no longer used in this version of SudoRules
    (foreach ?nb ?*numbers*
        (foreach ?row ?*rows*
            (foreach ?col ?*columns*
				(bind ?blk (block ?row ?col))
				(bind ?sqr (square ?row ?col))
				(bind ?lab (nrc-to-label ?nb ?row ?col))
				(assert (correspondence ?lab ?nb ?row ?col ?blk ?sqr))
			)
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
    (foreach ?blk ?*blocks*
        (foreach ?nb ?*numbers*
            (bind ?csp (block-number-to-bn-variable ?blk ?nb))
            (assert (csp-variable (name ?csp) (type bn)))
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
                (if ?*Typed-Chains* then
                    (assert (is-typed-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type rc)))
                )

                (bind ?csp (row-number-to-rn-variable ?row ?nb))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))
                (if ?*Typed-Chains* then
                    (assert (is-typed-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type rn)))
                )

                (bind ?csp (column-number-to-cn-variable ?col ?nb))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))
                (if ?*Typed-Chains* then
                    (assert (is-typed-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type cn)))
                )

                (bind ?blk (block ?row ?col))
                (bind ?csp (block-number-to-bn-variable ?blk ?nb))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))
                (if ?*Typed-Chains* then
                    (assert (is-typed-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type bn)))
                )
            )
        )
    )
)



;;;;;;;; changed the order CSP-Variables and is-csp-variable predicates are asserted
;;; it allows rc, rn and cn variables to be considered before bn variables
;;; and it reduces the (rare) problems in whips and g-whips due to the no-repeat conditions bearing only on $rlcs and not on $csps

(deffunction init-csp-variables ()
    (foreach ?blk ?*blocks*
        (foreach ?nb ?*numbers*
            (bind ?csp (block-number-to-bn-variable ?blk ?nb))
            (assert (csp-variable (name ?csp) (type bn)))
        )
    )
    (foreach ?col ?*columns*
        (foreach ?nb ?*numbers*
            (bind ?csp (column-number-to-cn-variable ?col ?nb))
            (assert (csp-variable (name ?csp) (type cn)))
        )
    )
    (foreach ?row ?*rows*
        (foreach ?nb ?*numbers*
            (bind ?csp (row-number-to-rn-variable ?row ?nb))
            (assert (csp-variable (name ?csp) (type rn)))
        )
    )
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?csp (row-column-to-rc-variable ?row ?col))
            (assert (csp-variable (name ?csp) (type rc)))
            (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))
        )
    )
)


(deffunction init-is-csp-variable-for-label ()
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (foreach ?nb ?*numbers*
                (bind ?lab (nrc-to-label ?nb ?row ?col))

                (bind ?blk (block ?row ?col))
                (bind ?csp (block-number-to-bn-variable ?blk ?nb))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))
                (if ?*Typed-Chains* then
                    (assert (is-typed-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type bn)))
                )

                (bind ?csp (column-number-to-cn-variable ?col ?nb))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))
                (if ?*Typed-Chains* then
                    (assert (is-typed-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type cn)))
                )

                (bind ?csp (row-number-to-rn-variable ?row ?nb))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))
                (if ?*Typed-Chains* then
                    (assert (is-typed-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type rn)))
                )

                (bind ?csp (row-column-to-rc-variable ?row ?col))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))
                (if ?*Typed-Chains* then
                    (assert (is-typed-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type rc)))
                )
            )
        )
    )
)

;;;;;;; end change order



(deffunction init-intersections ()
	;;; create facts for intersections between rows and blocks
    (foreach ?row ?*rows*
        (foreach ?blk ?*blocks*
			(if (row-intersects ?row ?blk) then (assert (row-intersects ?row ?blk)))
		)
	)
			
	;;; create facts for intersections between columns and blocks
    (foreach ?col ?*columns*
        (foreach ?blk ?*blocks*
			(if (column-intersects ?col ?blk) then (assert (column-intersects ?col ?blk)))
		)
	)

)



;;; the existence of physical links (rc-, rn-, cn- or bn- links) does not suppose that the candidates are still present
;;; the following init-physical-links function is not used in this version of SudoRules

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

	;;; create facts for physical bn-links
	(foreach ?blk ?*blocks*
        (foreach ?nb ?*numbers*
            (foreach ?sqr ?*squares*
                (bind ?row (row ?blk ?sqr))
                (bind ?col (column ?blk ?sqr))
                (bind ?lab (nrc-to-label ?nb ?row ?col))
				(bind ?sqr2 (+ ?sqr 1))
				(while (<= ?sqr2 ?*grid-size*)
                    (bind ?row2 (row ?blk ?sqr2))
                    (bind ?col2 (column ?blk ?sqr2))
					(bind ?lab2 (nrc-to-label ?nb ?row2 ?col2))
					(assert (physical-link ?lab ?lab2 bn))
					(bind ?sqr2 (+ ?sqr2 1))
				)
			)
		)
	)
)



(deffunction init-general-application-structures ()
    (init-universal-globals)
    (bind ?*one-step-candidates* (create$))
	(init-variables-scopes)
    ;(init-correspondences)
	(init-csp-variables)
	(init-is-csp-variable-for-label)
    (init-intersections)
    ;(init-physical-links)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2) SOLVE SUDOKUS AND SUKAKUS GIVEN AS STRINGS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Basic functions for initialising and solving a puzzle given as a string
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-values-from-string (?givens)
	;;; Assert the values and the associated c-values for cells with given entries.
	(bind ?*nb-csp-variables-solved* 0)
	;;; For every cell,
	(foreach ?row  ?*rows*
		(foreach ?col ?*columns*
			(bind ?i (cell-index ?row ?col))
			;;; read the content of the cell from the entries
			(bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?givens)))) ;;; supposes there is only one symbol per entry
            ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
			(if (eq ?*grid-size* 16) then (bind ?nb (transform-hexa-to-nb ?nb)))
			(if (eq ?*grid-size* 25) then (bind ?nb (transform-25letters-to-nb ?nb)))
			;;; if the content is a Number from ?*numbers* (i.e. there is an entry for the cell)
			;;; then assert (the value and) the corresponding c-value
			(if (member$ ?nb ?*numbers*) then
				(bind ?lab (nrc-to-label ?nb ?row ?col))
				(assert (candidate (context 0) (status c-value) (label ?lab) (number ?nb) (row ?row) (column ?col) (block (block ?row ?col)) (square (square ?row ?col))))
				(bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
				(if (or ?*print-all-details* ?*print-init-details*) then (printout t "Asserting entry: " (row-name ?row)(column-name ?col) " = " ?nb crlf))
			)
		)
	)
	; (if ?*print-initial-state* then (printout t ?*nb-csp-variables-solved* " givens") crlf)
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
            ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
			(if (eq ?*grid-size* 16) then (bind ?nb (transform-hexa-to-nb ?nb)))
			(if (eq ?*grid-size* 25) then (bind ?nb (transform-25letters-to-nb ?nb)))
			
            ;;; if the content is not a number (i.e. there is no entry for the cell)
            ;;; then assert the possible candidates for the cell
            (if (not (member$ ?nb ?*numbers*)) then
				(bind ?blk (block ?row ?col))
				(bind ?sqr (square ?row ?col))
				;;; for every number ?nbx, check if its candidature for this cell is not obviously forbidden by the other entries of the grid
				(foreach ?nbx ?*numbers*
                    (bind ?labx (nrc-to-label ?nbx ?row ?col))
					(bind ?nbx-allowed TRUE)
					(foreach ?rowy ?*rows*
						(foreach ?coly ?*columns*
                            ;;; read the content of cell (?rowy ?coly) from the entries
							(bind ?iy (cell-index ?rowy ?coly))
							(bind ?nby (nth$ 1 (explode$ (sub-string ?iy ?iy ?givens)))) ;;; supposes there is only one symbol per entry
                            ;;; add this line for 16x16 given in hexadecimal form
							(if (eq ?*grid-size* 16) then (bind ?nby (transform-hexa-to-nb ?nby))) 
                            (if (eq ?*grid-size* 25) then (bind ?nby (transform-25letters-to-nb ?nby)))
							
                            (if (member$ ?nby ?*numbers*) then
                                (bind ?laby (nrc-to-label ?nby ?rowy ?coly))
								(if (labels-linked ?labx ?laby) then (bind ?nbx-allowed FALSE))
							)
						)
					)
					;;; if it is not forbidden, then assert its candidature 
					(if ?nbx-allowed
						then 
							(bind ?labx (nrc-to-label ?nbx ?row ?col))
							(assert (candidate (context 0) (status cand) (label ?labx) (number ?nbx) (row ?row) (column ?col) (block ?blk) (square ?sqr)))
							(bind ?*nb-candidates* (+ ?*nb-candidates* 1))
							 (if (or ?*print-all-details* ?*print-init-details*) then
								(printout t "Asserting candidate " ?nbx " for " (row-name ?row) (column-name ?col) crlf)
							)
					)
				)
			)
		)
	)
	; (if ?*print-initial-state* then (printout t " " ?*nb-candidates* " candidates" crlf))
)



(deffunction init-sudoku-string (?string)
	(if ?*print-actions* then (printout t ?string crlf))
    (reset) (reset)
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
	;;; This function could be simplified (and initialization time shortened)
	;;; by combining the following two calls into a single function,
	;;; but, for easier navigation in the facts base, I prefer asserting all the c-values first and then all the candidates.
	;;; Assert the values and the associated c-values for cells with given entries
	(init-values-from-string ?string)
	;;; Initialize candidates for cells with no entry
	(init-candidates-from-string ?string)
    (assert (context (name 0)))
    (assert (grid 0))
)

;;; also named init-grid-from-string for homogeneity with previous versions
(deffunction init-grid-from-string (?string)
    (init-sudoku-string ?string)
)

;;; also named "init" for homogeneity with "solve"
(deffunction init (?string)
    (init-sudoku-string ?string)
)


(deffunction solve-sudoku-string (?string)
	(if ?*print-actions* then (print-banner))
	(bind ?time0 (time))
	;;; fixed facts and structures common to all the instances are defined
    ;;; and puzzle entries are taken into account here
    (init-sudoku-string ?string)
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
        ;(printout t "nb-facts = " ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
    )
    (if ?*print-actions* then (print-banner) (printout t crlf))
)

;;; also named "solve" for backwards compatibility
;;; and because the string representation is the most common one
(deffunction solve (?string)
    (solve-sudoku-string ?string)
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
	(if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; fixed facts and structures common to all the instances are defined
    ;;; and puzzle entries are taken into account here
	(init-sudoku-string ?puzzle-string)
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
        ;(printout t "nb-facts = " ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
    )
    (if ?*print-actions* then (print-banner) (printout t crlf))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Additional functions for dealing with tatham's string format
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction tatham-to-sudoku-string (?str)
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


(deffunction init-tatham-string (?str)
    (bind ?string (tatham-to-sudoku-string ?str))
    (if (neq (str-length ?string) (* ?*grid-size* ?*grid-size*)) then (printout t "Error in data length" crlf) (return))
    (init-sudoku-string ?string)
)

(deffunction solve-tatham-string (?str)
    (bind ?string (tatham-to-sudoku-string ?str))
    (if (neq (str-length ?string) (* ?*grid-size* ?*grid-size*)) then (printout t "Error in data length" crlf) (return))
    (solve-sudoku-string ?string)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Basic functions for initialising and solving a sukaku,
;;; i.e. a puzzle given as a string of 729 candidates (in case grid-size = 9x9)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; A pseudo-Susoku puzzle, also called Sukaku, is given by a (redundant) string of 729 candidates,
;;; each element being a dot or a candidate nirjck at the corresponding place.

(deffunction init-candidates-from-string-of-candidates (?givens)
	;;; Initialize candidates for cells with no entry.
	(bind ?*nb-candidates* 0)
    (bind ?index 0) ; nth datum, will vary from 1 to 729

	(foreach ?row ?*rows*
		(foreach ?col ?*columns*
            (foreach ?nb ?*numbers*
                (bind ?index (+ ?index 1))
                ;;; read the nth datum from the entries
                (bind ?datum (nth$ 1 (explode$ (sub-string ?index ?index ?givens))))

                ;;; if the content is equal to ?nb, i.e. there is no candidate (?nb, ?row, ?col)
                ;;; then assert it as a candidate for the cell
                (if (eq ?datum ?nb) then
                    (bind ?blk (block ?row ?col))
                    (bind ?sqr (square ?row ?col))
                    (bind ?lab (nrc-to-label ?nb ?row ?col))
                    (assert (candidate (context 0) (status cand) (label ?lab) (number ?nb) (row ?row) (column ?col) (block ?blk) (square ?sqr)))
                    (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                    (if (or ?*print-all-details* ?*print-init-details*) then
                        (printout t "Asserting candidate " ?nb " for " (row-name ?row) (column-name ?col) crlf)
					)
				)
			)
		)
	)
	; (if ?*print-initial-state* then (printout t " " ?*nb-candidates* " candidates" crlf))
)




(deffunction init-sukaku-string (?string)
	(if ?*print-actions* then (printout t ?string crlf))
    (reset) (reset)
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
	(init-candidates-from-string-of-candidates ?string)
    (assert (context (name 0)))
    (assert (grid 0))
)


(deffunction solve-sukaku-string (?string)
	(if ?*print-actions* then (print-banner))
	(bind ?time0 (time))
	;;; puzzle entries are taken into account here
    (init-sukaku-string ?string)
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
		(printout t "Puzzle " ?string " :" crlf)
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

;;; for compatibility with other function names (no upper cases):
(deffunction solve-sukaku (?string)
    (solve-sukaku-string ?string)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3) SOLVE SUDOKUS AND SUKAKUS GIVEN AS LISTS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for initialising and solving a puzzle given as a list
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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
;;; the functions has to be called by (solve-grid-as-list (create$ the_above_list))

(deffunction init-values-from-list ($?list)
	;;; Assert the values and the associated c-values for cells with given entries.
	;;; For every cell,
	(foreach ?row ?*rows*
		(foreach ?col ?*columns*
			(bind ?i (cell-index ?row ?col))
			;;; read the content of the cell from the entries
			(bind ?nb (nth$ ?i $?list))
            ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
            (if (eq ?*grid-size* 16) then (bind ?nb (transform-hexa-to-nb ?nb)))
            (if (eq ?*grid-size* 25) then (bind ?nb (transform-25letters-to-nb ?nb)))
			;;; if the content is a number (i.e. there is an entry for the cell)
			;;; then assert (the value and) the corresponding c-value
			(if (member$ ?nb ?*numbers*) then
				(bind ?xxx (nrc-to-label ?nb ?row ?col))
				;;; (assert (value ?xxx))
				(assert (candidate (context 0) (status c-value) (label ?xxx) (number ?nb) (row ?row) (column ?col) (block (block ?row ?col)) (square (square ?row ?col))))
				(bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
				(if (or ?*print-all-details* ?*print-init-details*) then
					(printout t "Asserting entry: " (row-name ?row)(column-name ?col) ?*equal-sign* ?nb crlf)
				)
			)
		)
	)
	; (if ?*print-initial-state* then (printout t ?*nb-csp-variables-solved* " givens") crlf)
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
            ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
            (if (eq ?*grid-size* 16) then (bind ?nb (transform-hexa-to-nb ?nb)))
            (if (eq ?*grid-size* 25) then (bind ?nb (transform-25letters-to-nb ?nb)))
			;;; if the content is not a number (i.e. there is no entry for the cell)
			;;; then assert the possible candidates for the cell
			(if (not (member$ ?nb ?*numbers*)) then
				(bind ?blk (block ?row ?col))
				(bind ?sq (square ?row ?col))
				;;; for every number nbx,
				(foreach ?nbx ?*numbers*
                    (bind ?labx (nrc-to-label ?nbx ?row ?col))
					;;; check if its candidature for this cell is not obviously forbidden by the other entries of the grid
					(bind ?nbx-allowed TRUE)
                    (foreach ?rowy ?*rows*
                        (foreach ?coly ?*columns*
							(bind ?iy (cell-index ?rowy ?coly))
							(bind ?nby (nth$ ?iy $?list))
                            ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
                            (if (eq ?*grid-size* 16) then (bind ?nby (transform-hexa-to-nb ?nby)))
                            (if (eq ?*grid-size* 25) then (bind ?nby (transform-25letters-to-nb ?nby)))
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
                            (assert (candidate (context 0) (status cand) (label ?xxx) (number ?nbx) (row ?row) (column ?col) (block (block ?row ?col)) (square (square ?row ?col))))
							(bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                            (if (or ?*print-all-details* ?*print-init-details*) then
								(printout t "Asserting candidate " ?nbx " for " (row-name ?row)(column-name ?col) crlf)
							)
					)
				)
			)
		)
	)
	; (if ?*print-initial-state* then (printout t " " ?*nb-candidates* " candidates" crlf))
)




(deffunction init-sudoku-list ($?list)
	(if ?*print-actions* then (printout t $?list crlf))
    (reset) (reset)
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
	;;; This function could be simplified (and initialization time shortened)
	;;; by combining the following two calls into a single function,
	;;; but, for easier navigation in the facts base, I prefer asserting all the c-values first and then all the candidates.
	;;; Assert the values and the associated c-values for cells with given entries
	(init-values-from-list $?list)
	;;; Initialize candidates for cells with no entry
	(init-candidates-from-list $?list)
    (assert (context (name 0)))
    (assert (grid 0))
)



(deffunction solve-sudoku-list ($?list)
	(if ?*print-actions* then (print-banner))
	(bind ?time0 (time))
	;;; puzzle entries are taken into account here
    (init-sudoku-list $?list)
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


;;; for backwards compatibility with previous releases:

(deffunction init-grid-from-list ($?list)
    (init-sudoku-list $?list)
)

(deffunction solve-grid-as-list ($?list)
    (solve-sudoku-list ?list)
)

(deffunction solve-sudoku-as-list ($?list)
    (solve-sudoku-list ?list)
)

(deffunction solve-grid-from-list ($?list)
    (solve-sudoku-list ?list)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Basic functions for initialising and solving a puzzle
;;; given as a list of candidates (Sukaku in list form)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; A pseudo-Susoku puzzle, also called Sukaku, can also be given by a list of candidates
;;; and solved using function solve-Sukaku-as-list, as in this example:
; (solve-sukaku-as-list
;       1 9 6    2    4   7     3    5   8
;       8 2 7    3    5   1     4    6   9
;       3 4 5    68   9   68    27   27  1
;       7 8 24   1    6   49    29   3   5
;       5 6 1    89   2   3     89   4   7
;       9 3 24   578  78  458   1    28  6
;       6 7 89   589  3   2     58  1   4
;       4 5 3    6789 1   689   678 789 2
;       2 1 89   4    78  56    56   789 3
; )
 

(deffunction init-sukaku-list ($?list)
    (reset) (reset)
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    ;;; Initialize values and candidates for all the cells
    (bind ?*nb-csp-variables-solved* 0)
    (bind ?*nb-candidates* 0)
    ;;; For every cell,
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?blk (block ?row ?col))
            (bind ?sq (square ?row ?col))
            (bind ?i (cell-index ?row ?col))
            ;;; read the content of the cell from the entries and turn it into a string:
            (bind ?cand-str (implode$ (create$ (nth$ ?i $?list))))
            ;;; transform this string into a list of candidates:
            (bind ?cand-list (create$))
            (loop-for-count (?j 1 (str-length ?cand-str))
                (bind ?nb (explode$ (sub-string ?j ?j ?cand-str)))
                ;;; add these two lines for 16x16 or 25x25 puzzles given in hexadecimal notation
                (if (eq ?*grid-size* 16) then (bind ?nb (transform-hexa-to-nb ?nb)))
                (if (eq ?*grid-size* 25) then (bind ?nb (transform-25letters-to-nb ?nb)))
                ;(if (not (numberp ?nb)) then (printout t "Error in data for cell " ?row " " ?col crlf) (halt))
                ;;; add this candiadte to the list of candidates for this cell
                (bind ?cand-list (create$ ?cand-list ?nb))
            )
            ;;; use this list for asserting c-values and candidates
            (if (eq (length$ ?cand-list) 1)
                then ; there is a single candidate for this cell; assert it as a c-value
                    (bind ?nb (nth$ 1 ?cand-list))
                    (bind ?xxx (nrc-to-label ?nb ?row ?col))
                    (assert (candidate
                                (context 0) (status c-value)
                                (label ?xxx) (number ?nb) (row ?row) (column ?col) (block ?blk) (square ?sq)
                    ))
                    (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
                    (if (or ?*print-all-details* ?*print-init-details*) then
                        (printout t "Asserting entry: " (row-name ?row)(column-name ?col) ?*equal-sign* ?nb crlf)
                    )
                    else ; assert each element as a candidate for this cell
                    (foreach ?nb ?cand-list
                        (bind ?xxx (nrc-to-label ?nb ?row ?col))
                        (assert (candidate
                                    (context 0) (status cand)
                                    (label ?xxx) (number ?nb) (row ?row) (column ?col) (block ?blk) (square ?sq)
                        ))
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

;;; redefine the generic function "init-resolution-state" as:
(deffunction init-resolution-state ($?RS)
    (init-sukaku-list ?RS)
)


 
 
(deffunction solve-sukaku-list ($?list)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; fixed facts and structures common to all the instances
    ;;; and puzzle entries are taken into account here
    (init-sukaku-list $?list)
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


;;; for better compatibility with the Basic User Manual
(deffunction solve-Sukaku-as-list ($?list)
    (solve-sukaku-list ?list)
)
(deffunction solve-sukaku-as-list ($?list)
    (solve-sukaku-list ?list)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 4) SYNTACTIC SUGAR FOR SUDOKU AND SUKAKU GRIDS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; it would be nice to be able to solve a puzzle directly from a formatted grid
;;; as they appear in the Sudoku forums and in other Sudoku solvers, as follows:

;;; +-------+-------+-------+
;;; | . . 1 | 2 . . | . . 3 |
;;; | . . . | . . 4 | 2 . . |
;;; | 5 . . | . . . | . 6 . |
;;; +-------+-------+-------+
;;; | 7 . . | 6 . . | . 1 . |
;;; | . . . | . 3 . | . . . |
;;; | . 8 . | . . 9 | . . 4 |
;;; +-------+-------+-------+
;;; | . 3 . | . . . | . . 6 |
;;; | . . 7 | 1 . . | . 2 . |
;;; | 4 . . | . . 7 | 5 . . |
;;; +-------+-------+-------+

;;; but it cannot work because | is not a symbol
;;;
;;; However, something similar can be done by using slightly different symbols.
;;; The following function allows to solve Sudoku puzzles given in grid from, such as:
;;;
;;; (solve-sudoku-grid
;;;    +-------+-------+-------+
;;;    : . . . : . . 9 : . . . :
;;;    : . . 8 : 7 . . : . . 6 :
;;;    : . 1 9 : . 4 . : . 2 . :
;;;    +-------+-------+-------+
;;;    : . 2 . : . 1 . : . 4 . :
;;;    : . . 3 : 6 . . : . . 8 :
;;;    : . . . : . . . : 2 . . :
;;;    +-------+-------+-------+
;;;    : . . . : . . 7 : . . . :
;;;    : . . 6 : 8 . . : . . 7 :
;;;    : . 4 . : . . . : . 1 . :
;;;    +-------+-------+-------+
;;; )
;;;
;;; or:
;;;
;;; (solve-sudoku-grid
;;;    +-------+-------+-------+
;;;    ! . . . ! . . 9 ! . . . !
;;;    ! . . 8 ! 7 . . ! . . 6 !
;;;    ! . 1 9 ! . 4 . ! . 2 . !
;;;    +-------+-------+-------+
;;;    ! . 2 . ! . 1 . ! . 4 . !
;;;    ! . . 3 ! 6 . . ! . . 8 !
;;;    ! . . . ! . . . ! 2 . . !
;;;    +-------+-------+-------+
;;;    ! . . . ! . . 7 ! . . . !
;;;    ! . . 6 ! 8 . . ! . . 7 !
;;;    ! . 4 . ! . . . ! . 1 . !
;;;    +-------+-------+-------+
;;; )
;;;
;;; The + signs can also be * signs and both signs can be mixes withput restriction


(deffunction cosmetic-sign-in-grid (?x)
    (bind ?cosmetic FALSE)
    (bind ?str (implode$ (create$ ?x)))
    (bind ?len (str-length ?str))
    (bind ?i 1)
    (while (<= ?i ?len)
        (if (member$ (sub-string ?i ?i ?str) ?*cosmetic-signs-in-grid*) then (bind ?cosmetic TRUE))
        (bind ?i (+ ?i 1))
    )
    ?cosmetic
)


(deffunction clean-grid-list ($?data)
    (bind ?real-data (create$))
    (foreach ?x $?data
        (if (not (cosmetic-sign-in-grid ?x)) then (bind ?real-data (create$ ?real-data ?x)))
    )
    ?real-data
)


(deffunction init-sudoku-grid ($?sudoku-grid)
    (init-sudoku-list (clean-grid-list $?sudoku-grid))
)

(deffunction solve-sudoku-grid ($?sudoku-grid)
    (solve-sudoku-list (clean-grid-list $?sudoku-grid))
)



;;;
;;; Similarly, the following function allows to solve Sukaku puzzles given in grid from, such as:
;;;
;;; (solve-sukaku-grid
;;;    *------------------------------------*
;;;    : 1 9 6  : 2    4   7   : 3    5   8 :
;;;    : 8 2 7  : 3    5   1   : 4    6   9 :
;;;    : 3 4 5  : 68   9   68  : 27   27  1 :
;;;    :--------+--------------+------------:
;;;    : 7 8 24 : 1    6   49  : 29   3   5 :
;;;    : 5 6 1  : 89   2   3   : 89   4   7 :
;;;    : 9 3 24 : 578  78  458 : 1    28  6 :
;;;    :--------+--------------+------------:
;;;    : 6 7 89 : 589  3   2   : 58   1   4 :
;;;    : 4 5 3  : 6789 1   689 : 678  789 2 :
;;;    : 2 1 89 : 4    78  56  : 56   789 3 :
;;;    *------------------------------------*
;;; )
;;;
;;; or:
;;;
;;; (solve-sukaku-grid
;;;    *------------------------------------*
;;;    ! 1 9 6  ! 2    4   7   ! 3    5   8 !
;;;    ! 8 2 7  ! 3    5   1   ! 4    6   9 !
;;;    ! 3 4 5  ! 68   9   68  ! 27   27  1 !
;;;    !--------+--------------+------------!
;;;    ! 7 8 24 ! 1    6   49  ! 29   3   5 !
;;;    ! 5 6 1  ! 89   2   3   ! 89   4   7 !
;;;    ! 9 3 24 ! 578  78  458 ! 1    28  6 !
;;;    !--------+--------------+------------!
;;;    ! 6 7 89 ! 589  3   2   ! 58   1   4 !
;;;    ! 4 5 3  ! 6789 1   689 ! 678  789 2 !
;;;    ! 2 1 89 ! 4    78  56  ! 56   789 3 !
;;;    *------------------------------------*
;;; )
;;;
;;; As for Sudoku grids, the + and * signs can be mixed without restriction


(deffunction init-sukaku-grid ($?sukaku-grid)
    (init-sukaku-list (clean-grid-list $?sukaku-grid))
)

(deffunction solve-sukaku-grid ($?sukaku-grid)
    (solve-sukaku-list (clean-grid-list $?sukaku-grid))
)
