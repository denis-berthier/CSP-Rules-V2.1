
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              SOLVE
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
;;; Functions for initialising grid structure
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-variables-scopes ()
	;;; this function creates facts depending only on grid structure and not on the actual presence of candidates
	;;; create facts for numbers, rows and columns
	(foreach ?nb ?*numbers* (assert (number ?nb)))
	(foreach ?row ?*rows* (assert (row ?row)))
	(foreach ?col ?*columns* (assert (column ?col)))
)


(deffunction init-correspondences ()
	;;; create facts for correspondences between labels, numbers, rows and columns.
	;;; the existence of a correspondence (a label) doesn't imply the existence of the candidate
	(foreach ?nb ?*numbers*
        (foreach ?row ?*rows*
            (foreach ?col ?*columns*
				(bind ?lab (nrc-to-label ?nb ?row ?col))
				(assert (correspondence ?lab ?nb ?row ?col))
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
)


(deffunction init-is-csp-variable-for-label ()
    (foreach ?nb ?*numbers*
        (foreach ?row ?*rows*
            (foreach ?col ?*columns*
                (bind ?lab (nrc-to-label ?nb ?row ?col))
                
                (bind ?csp (row-column-to-rc-variable ?row ?col))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))

                (bind ?csp (row-number-to-rn-variable ?row ?nb))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab) ))

                (bind ?csp (column-number-to-cn-variable ?col ?nb))
                (assert (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))
            )
        )
    )
)


	
;;; the existence of physical links (rc-, rn- or cn- links) doesn't suppose that the candidates are still present
(deffunction init-physical-links ()	
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (foreach ?a1 ?*numbers*
				(bind ?a2 (+ ?a1 1)) ; number2
				(while (<= ?a2 ?*grid-size*)
					(bind ?lab1 (nrc-to-label ?a1 ?row ?col))
					(bind ?lab2 (nrc-to-label ?a2 ?row ?col))
                    (add-label-link ?lab1 ?lab2)
					(bind ?a2 (+ ?a2 1))
				)
			)
		)
	)

    (foreach ?row ?*rows*
        (foreach ?nb ?*numbers*
            (foreach ?a1 ?*columns*
				(bind ?a2 (+ ?a1 1)) ; column2
				(while (<= ?a2 ?*grid-size*)
					(bind ?lab1 (nrc-to-label ?nb ?row ?a1))
					(bind ?lab2 (nrc-to-label ?nb ?row ?a2))
                    (add-label-link ?lab1 ?lab2)
					(bind ?a2 (+ ?a2 1))
				)
			)
		)
	)

    (foreach ?col ?*columns*
        (foreach ?nb ?*numbers*
            (foreach ?a1 ?*rows*
				(bind ?a2 (+ ?a1 1)) ; row2
				(while (<= ?a2 ?*grid-size*)
					(bind ?lab1 (nrc-to-label ?nb ?a1 ?col))
					(bind ?lab2 (nrc-to-label ?nb ?a2 ?col))
                    (add-label-link ?lab1 ?lab2)
					(bind ?a2 (+ ?a2 1))
				)
			)
		)
	)
)


(deffunction init-general-application-structures ()
    (init-variables-scopes)
;    (init-correspondences)
	(init-csp-variables)
    (init-is-csp-variable-for-label)
    (init-physical-links)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for initializing horizontal and vertical inequality constraints
;;; (creates associated label-links)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction create-inequality-links-in-a-row (?row ?col1 ?col2)
    (bind ?nb1 2)
    (while (<= ?nb1 ?*grid-size*)
        (bind ?lab1 (nrc-to-label ?nb1 ?row ?col1))
        (bind ?nb2 1)
        (while (< ?nb2 ?nb1)
            (bind ?lab2 (nrc-to-label ?nb2 ?row ?col2))
            (add-labels-ineq-link ?lab1 ?lab2)
            (bind ?nb2 (+ ?nb2 1))
        )
        (bind ?nb1 (+ ?nb1 1))
    )
)


(deffunction create-inequality-links-in-a-column (?col ?row1 ?row2)
    (bind ?nb1 2)
    (while (<= ?nb1 ?*grid-size*)
        (bind ?lab1 (nrc-to-label ?nb1 ?row1 ?col))
        (bind ?nb2 1)
        (while (< ?nb2 ?nb1)
            (bind ?lab2 (nrc-to-label ?nb2 ?row2 ?col))
            (add-labels-ineq-link ?lab1 ?lab2)
            (bind ?nb2 (+ ?nb2 1))
        )
        (bind ?nb1 (+ ?nb1 1))
    )
)


(deffunction init-horizontal-ineq-constraints (?horiz)
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (if (< ?col ?*grid-size*) then
                (bind ?i (+ (* (- ?row 1) (- ?*grid-size* 1)) ?col))
                ;;; read the content of the inter-cell from the entries
                (bind ?sign (nth$ 1 (explode$ (sub-string ?i ?i ?horiz))))
                (if (eq ?sign <) then
                    (assert (less-than (rc-to-cell ?row ?col) (rc-to-cell ?row (+ ?col 1)) row))
                    (create-inequality-links-in-a-row ?row ?col (+ ?col 1))
                )
                (if (eq ?sign >) then
                    (assert (less-than (rc-to-cell ?row (+ ?col 1)) (rc-to-cell ?row ?col) row))
                    (create-inequality-links-in-a-row ?row (+ ?col 1) ?col)
                )
            )
		)
	)
)


(deffunction init-vertical-ineq-constraints (?verti)
    (foreach ?col ?*columns*
        (foreach ?row ?*rows*
            (if (< ?row ?*grid-size*) then
                (bind ?i (+ (* (- ?col 1) (- ?*grid-size* 1)) ?row))
                ;;; read the content of the inter-cell from the entries
                (bind ?sign (nth$ 1 (explode$ (sub-string ?i ?i ?verti))))
                (if (eq ?sign <) then
                    (assert (less-than (rc-to-cell ?row ?col) (rc-to-cell (+ ?row 1) ?col) col))
                    (create-inequality-links-in-a-column ?col ?row (+ ?row 1))
                )
                (if (eq ?sign >) then
                    (assert (less-than (rc-to-cell (+ ?row 1) ?col) (rc-to-cell ?row ?col) col))
                    (create-inequality-links-in-a-column ?col (+ ?row 1) ?row)
                )
            )
		)
	)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for initializing and solving puzzles defined by a string
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-values-from-string (?givens)
	;;; Assert the values and the associated c-values for cells with given entries.
	(bind ?*nb-csp-variables-solved* 0)
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
			(bind ?i (cell-index ?row ?col))
			;;; read the content of the cell from the entries
			(bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?givens)))) ;;; supposes there is only one symbol per entry
            ;;; add this line for puzzles given in hexadecimal notation
			(if (> ?*grid-size* 9) then (bind ?nb (transform-letter-to-nb ?nb)))
			;;; if the content is a Number from ?*numbers* (i.e. there is an entry for the cell)
			;;; then assert (the value and) the corresponding c-value
			(if (member$ ?nb ?*numbers*) then
				(bind ?lab (nrc-to-label ?nb ?row ?col))
				(assert (candidate (context 0) (status c-value) (label ?lab) (number ?nb) (row ?row) (column ?col)))
				(bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
				(if ?*print-init-details* then
					(printout t "Asserting entry: " (row-name ?row) (column-name ?col) " = " ?nb crlf)
				)
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
			(bind ?i (cell-index ?row ?col))
			;;; read the content of the cell from the entries
			(bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?givens)))) ;;; supposes there is only one symbol per entry
            ;;; add this line for puzzles given in hexadecimal notation
			(if (> ?*grid-size* 9) then (bind ?nb (transform-letter-to-nb ?nb)))
			;;; if the content is not a number (i.e. there is no entry for the cell)
			;;; then assert the possible candidates for the cell
			(if (not (member$ ?nb ?*numbers*)) then
				;;; for every number nbx,
				(bind ?ix 1)
				(while (<= ?ix ?*grid-size*)
					(bind ?nbx (nth$ ?ix ?*numbers*)) 
					;;; check if its candidature for this cell is not obviously
					;;; forbidden by the other entries of the grid
					(bind ?nbx-allowed TRUE)
					(bind ?rowy 1)
					(while (<= ?rowy ?*grid-size*)
						(bind ?coly 1)
						(while (<= ?coly ?*grid-size*)
							(bind ?iy (cell-index ?rowy ?coly))
							(bind ?nby (nth$ 1 (explode$ (sub-string ?iy ?iy ?givens)))) ;;; supposes there is only one symbol per entry
                            ;;; add this line for puzzles given in hexadecimal notation
                            (if (> ?*grid-size* 9) then (bind ?nby (transform-letter-to-nb ?nby)))
							(if (and (member$ ?nby ?*numbers*) (eq ?nby ?nbx)) then
								(if (rc-linked ?rowy ?coly ?row ?col) then (bind ?nbx-allowed FALSE))
							)
						(bind ?coly (+ ?coly 1))
						)
					(bind ?rowy (+ ?rowy 1))
					)
					;;; if it is not forbidden, then assert its candidature
					(if ?nbx-allowed
						then 
							(bind ?lab (nrc-to-label ?nbx ?row ?col))
							(assert (candidate (context 0) (status cand) (label ?lab) (number ?nbx) (row ?row) (column ?col)))
							(bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                            (if ?*print-init-details* then
								(printout t "Asserting candidate " ?nbx " for " (row-name ?row) (column-name ?col) crlf)
							)
					)
				(bind ?ix (+ ?ix 1))
				)
			)
		)
	)
	(if ?*print-initial-state* then (printout t ", " ?*nb-candidates* " candidates"  crlf))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for solving a puzzle given by strings
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-grid-from-strings (?k ?digits ?horiz ?verti)
	(if ?*print-actions* then (printout t ?digits crlf ?horiz crlf ?verti crlf))
	;;; This function could be simplified (and initialization time shortened)
	;;; by combining the following two calls into a single function,
	;;; but, for easier navigation in the facts base, I prefer asserting all the c-values first and then all the candidates.

    ;;; initialize the physical inequality constraints
    (init-horizontal-ineq-constraints ?horiz)
    (init-vertical-ineq-constraints ?verti)
    
	;;; assert the values and the associated c-values for cells with given entries
	(init-values-from-string ?digits)
	;;; initialize  candidates for cells with no entry
	(init-candidates-from-string ?digits)
)



(deffunction init-instance (?k ?digits ?horiz ?verti)
    (init-universal-globals)
    (bind ?*labels-ineq-links* (create$))
    (bind ?*labels-ineq-links-count* 0)
    ;;; the next two global variables are necessary for initialising g-labels and g-links
    (bind ?*horiz* ?horiz)
    (bind ?*verti* ?verti)

    (redefine-instance-globals ?k)
    (init-general-application-structures)
    (init-grid-from-strings ?k ?digits ?horiz ?verti)
    (assert (context (name 0)))
	(assert (grid 0))
)



(deffunction solve (?k ?digits ?horiz ?verti)
	(reset) (reset)  
	(if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; puzzle entries (digits and inequalities) are taken into account here
    (init-instance ?k ?digits ?horiz ?verti)
	(bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))

    ;;; the grid is solved here
	(bind ?nb-rules (run)) ;;; the puzzle is solved here
	(bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
	(bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
	(bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
	(if ?*print-time* then
		(printout t "Puzzle :" crlf)
        (printout t
            "computer = " ?*Computer-description* crlf
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts=" ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (print-banner)
		(printout t crlf)
	)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for displaying a puzzle from a text file
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction display-grid-from-text (?file-symb)
	(bind ?givens (readline ?file-symb))
	(printout t crlf)
	(bind ?ir 1)
	(while (< ?ir  (+ ?*grid-size* 1))
		(bind ?row (nth$ ?ir ?*rows*))
		(bind ?jc 1)
		(while (< ?jc  (+ ?*grid-size* 1))
			(bind ?col (nth$ ?jc ?*columns*)) 
			(bind ?i (cell-index ?row ?col))
			(bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?givens))))
			(if (member$ ?nb ?*numbers*) then (printout t ?nb) else (printout t "."))
			(bind ?jc (+ ?jc 1))
		)
		(printout t crlf)
	(bind ?ir (+ ?ir 1))
	)
)


(deffunction display-nth-grid-from-text-file (?file-name ?nb)
	(open ?file-name "file-symb" "r")
	(bind ?i 1)
	(while (< ?i ?nb) (readline "file-symb") (bind ?i (+ ?i 1)))
	(display-grid-from-text "file-symb")
	(close "file-symb")
)


(deffunction display-nth-line-from-text-file (?file-name ?nb)
	(open ?file-name "file-symb" "r")
	(bind ?i 1)
	(while (< ?i ?nb) (readline "file-symb") (bind ?i (+ ?i 1)))
	(bind ?line (readline "file-symb"))
	(printout t ?line crlf)
	(close "file-symb")
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Special functions for solving a puzzle in tatham's format
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; BEWARE : THIS IS HIGHLY NON-OPTIMISED

(deffunction tatham-to-digit-ineq-strings (?k ?str)
    (bind ?len (str-length ?str))
    (bind ?digits "")
    (bind ?tatham-horiz "")
    (bind ?tatham-verti "")
    (loop-for-count (?i 1 ?len)
        (bind ?x (nth$ 1 (explode$ (sub-string ?i ?i ?str))))
        (if (numberp ?x)
            then
                (if (eq ?x 0) then (bind ?digits (str-cat ?digits ".")))
                (if (and (<= 1 ?x) (<= ?x ?k)) then (bind ?digits (str-cat ?digits ?x)))
            else
                (if (or (eq ?x L) (eq ?x R)) then (bind ?tatham-horiz (str-cat ?tatham-horiz ?x)))
                (if (or (eq ?x U) (eq ?x D)) then (bind ?tatham-verti (str-cat ?tatham-verti ?x)))
                (if (eq ?x ,) then (bind ?tatham-horiz (str-cat ?tatham-horiz ,)) (bind ?tatham-verti (str-cat ?tatham-verti ,)))
        )
    )
    (create$ ?digits ?tatham-horiz ?tatham-verti)
)



(deffunction split-tatham-horiz (?k ?tatham-horiz)
    (bind ?len (str-length ?tatham-horiz))
    (bind ?list (create$))
    (bind ?current-row "")
    (bind ?kth-comma 0)
    (loop-for-count (?i 1 ?len)
        (bind ?ith (nth$ 1 (explode$ (sub-string ?i ?i ?tatham-horiz))))
        (bind ?current-row (str-cat ?current-row ?ith))
        (if (eq ?ith ,) then (bind ?kth-comma (+ ?kth-comma 1)))
        (if (eq ?kth-comma ?k) then (bind ?list (create$ ?list ?current-row)) (bind ?current-row "") (bind ?kth-comma 0))
    )
    ?list
)



(deffunction split-tatham-verti (?k ?tatham-verti)
    (bind ?len (str-length ?tatham-verti))
    (bind ?list (create$))
    (loop-for-count (?i 1 ?k) (bind ?list (create$ ?list "")))
    (bind ?kth-comma 0)
    (bind ?col 1)
    (loop-for-count (?i 1 ?len)
        (bind ?ith (nth$ 1 (explode$ (sub-string ?i ?i ?tatham-verti))))
        (bind ?repl (str-cat (nth$ ?col ?list) ?ith))
        (bind ?list (replace$ ?list ?col ?col ?repl))
        (if (eq ?ith ,) then (bind ?col (+ ?col 1)) (if (eq ?col (+ ?k 1)) then (bind ?col 1)))
    )
    ?list
)



(deffunction permute-symbols-in-string (?s1 ?s2 ?str)
    (bind ?len (str-length ?str))
    (bind ?index TRUE)
    (bind ?s1s2 (str-cat ?s1 ?s2))
    (bind ?s2s1 (str-cat ?s2 ?s1))
    (while ?index
        (bind ?index (str-index ?s1s2 ?str))
        (if ?index then (bind ?str (str-cat (sub-string 1 (- ?index 1) ?str) ?s2s1 (sub-string (+ ?index 2) ?len ?str))))
    )
    ?str
)



(deffunction translate-tatham-row (?k ?str)
    ;;; all RL sequences must have been replaced by LR in Tatham's data
    (bind ?len (str-length ?str))
    (bind ?str (permute-symbols-in-string R L ?str))
    (bind ?new-str "")
    (bind ?step 0)
    (bind ?i 1)
    (while (< ?i ?len)
        (bind ?j (+ ?i 1))
        (bind  ?symbol (nth$ 1 (explode$ (sub-string ?i ?i ?str))))
        (bind ?next-symbol (nth$ 1 (explode$ (sub-string ?j ?j ?str))))
        (if (and (eq ?symbol ,) (or (eq ?next-symbol ,) (eq ?next-symbol R))) then (bind ?new-str (str-cat ?new-str -)) (bind ?step 1))
        (if (and (eq ?symbol ,) (eq ?next-symbol L)) then (bind ?new-str (str-cat ?new-str <)) (bind ?step 2))
        (if (and (eq ?symbol R) (eq ?next-symbol ,)) then (bind ?new-str (str-cat ?new-str >)) (bind ?step 2))
        (bind ?i (+ ?i ?step))
    )
    ?new-str
)


(deffunction translate-tatham-col (?k ?str)
    ;; all DU sequences must have been replaced by UD in Tatham's data; but it's not enough to do it in the initial data
    (bind ?len (str-length ?str))
    (bind ?str (permute-symbols-in-string D U ?str))
    (bind ?new-str "")
    (bind ?step 0)
    (bind ?i 1)
    (while (< ?i ?len)
        (bind ?j (+ ?i 1))
        (bind  ?symbol (nth$ 1 (explode$ (sub-string ?i ?i ?str))))
        (bind ?next-symbol (nth$ 1 (explode$ (sub-string ?j ?j ?str))))
        (if (and (eq ?symbol ,) (or (eq ?next-symbol ,) (eq ?next-symbol D))) then (bind ?new-str (str-cat ?new-str -)) (bind ?step 1))
        (if (and (eq ?symbol ,) (eq ?next-symbol U)) then (bind ?new-str (str-cat ?new-str <)) (bind ?step 2))
        (if (and (eq ?symbol D) (eq ?next-symbol ,)) then (bind ?new-str (str-cat ?new-str >)) (bind ?step 2))
        (bind ?i (+ ?i ?step))
    )
    ?new-str
)



(deffunction translate-tatham-horiz (?k ?tatham-horiz)
    (bind ?list (split-tatham-horiz ?k ?tatham-horiz))
    (bind ?new-str "")
    (loop-for-count (?i 1 ?k)
        (bind  ?new-str (str-cat ?new-str (translate-tatham-row ?k (nth$ ?i ?list))))
    )
    ?new-str
)



(deffunction translate-tatham-verti (?k ?tatham-verti)
    (bind ?list (split-tatham-verti ?k ?tatham-verti))
    (bind ?new-str "")
    (loop-for-count (?i 1 ?k)
        (bind  ?new-str (str-cat ?new-str (translate-tatham-col ?k (nth$ ?i ?list))))
    )
    ?new-str
)


(deffunction tatham-to-FutoRules-strings (?k ?str)
    (bind ?list (tatham-to-digit-ineq-strings ?k ?str))
    (bind ?digits (nth$ 1 ?list))
    (bind ?horiz (translate-tatham-horiz ?k (nth$ 2 ?list)))
    (bind ?verti (translate-tatham-verti ?k (nth$ 3 ?list)))
    (create$ ?digits ?horiz ?verti)
)



(deffunction solve-tatham (?k ?str)
    (bind ?list (tatham-to-FutoRules-strings ?k ?str))
    (bind ?digits (nth$ 1 ?list))
    (bind ?horiz (nth$ 2 ?list))
    (bind ?verti (nth$ 3 ?list))
    (if (neq (str-length ?digits) (* ?k ?k)) then (printout t "Error in digits length " ?digits crlf) (return))
    (if (neq (str-length ?horiz) (* ?k (- ?k 1))) then (printout t "Error in horiz length " ?horiz crlf) (return))
    (if (neq (str-length ?verti) (* ?k (- ?k 1))) then (printout t "Error in verti length " ?verti crlf) (return))

    (solve ?k ?digits ?horiz ?verti)
)











