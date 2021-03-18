
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT CONTRADICTION AND HALT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; eliminate the generic rule

(defrule no-solution-at-all =>)


;;; Fully super-symmetric detection of a contradiction in the initial context

(defrule no-solution-at-all-rc
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
	(context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is an rc-cell with no c-value and no candidate in context 0
	(row ?row)
    (column ?col)
	(not (candidate (context 0) (row ?row) (column ?col)))
=>
    (if ?*print-actions* then
        (printout t crlf "GRID " ?g " HAS NO SOLUTION : NO CANDIDATE FOR RC-CELL " (row-name ?row) (column-name ?col) crlf)
        (printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    )
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
)


(defrule no-solution-at-all-rn
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
    (context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is an rn-cell with no c-value and no candidate in context 0
	(number ?nb)
    (row ?row)
	(not (candidate (context 0) (number ?nb) (row ?row)))
=>
    (if ?*print-actions* then
        (printout t crlf "GRID " ?g " HAS NO SOLUTION : NO CANDIDATE FOR RN-CELL " (row-name ?row) (number-name ?nb) crlf)
        (printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    )
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
)

(defrule no-solution-at-all-cn
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
    (context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is a cn-cell with no c-value and no candidate in context 0
	(number ?nb)
    (column ?col)
	(not (candidate (context 0) (number ?nb) (column ?col)))
=>
    (if ?*print-actions* then
        (printout t crlf "GRID " ?g " HAS NO SOLUTION : NO CANDIDATE FOR FOR CN-CELL " (column-name ?col) (number-name ?nb) crlf)
        (printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    )
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
)

(defrule no-solution-at-all-bn
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
    (context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is a bn-cell with no c-value and no candidate in context 0
	(number ?nb)
    (block ?blk)
	(not (candidate (context 0) (number ?nb) (block ?blk)))
=>
    (if ?*print-actions* then
        (printout t crlf "GRID " ?g " HAS NO SOLUTION : NO CANDIDATE FOR FOR BN-CELL " (block-name ?blk) (number-name ?nb) crlf)
        (printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    )
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
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
    (if (> ?*segment-size* 5) then
        (printout t "print-current-resolution-state works only for grid size ≤ 25" crlf)
        (return FALSE)
    )
    (bind ?current-rs (create$))
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?rc-content "")
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
                    (bind ?nb2 ?nb)
                    ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
                    (if (eq ?*grid-size* 16) then (bind ?nb2 (transform-nb-to-hexa ?nb)))
                    (if (eq ?*grid-size* 25) then (bind ?nb2 (transform-nb-to-25letters ?nb)))
                   (bind ?rc-content (sym-cat ?rc-content ?nb2))
                )
                (if (= ?nb ?*grid-size*) then (bind ?current-rs (create$ ?current-rs ?rc-content)))
            )
        )
    )
    ?current-rs
)


(deffunction print-current-resolution-state-in-context (?cont)
    (if (> ?*segment-size* 5) then
        (printout t "print-current-resolution-state works only for grid size ≤ 25" crlf)
        (return FALSE)
    )
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
                    ;;; add this line for 16x16 puzzles given in hexadecimal notation
                    (if (eq ?*grid-size* 16) then (bind ?nb2 (transform-nb-to-hexa ?nb)))
                    ;;; add this line for 25x25 puzzles given in alphabetical notation
                    (if (eq ?*grid-size* 25) then (bind ?nb2 (transform-nb-to-25letters ?nb)))
                    (printout t ?nb2)
                )
                (if (= ?nb ?*grid-size*) then (print-n-spaces ?spaces))
            )
            (if (= ?col ?*grid-size*) then (printout t crlf))
        )
    )
    (printout t crlf)
)


(deffunction print-current-resolution-state ()
    (print-current-resolution-state-in-context 0)
)


(deffunction print-current-resolution-state-in-context-rn-view (?cont)
    (if (> ?*segment-size* 5) then
        (printout t "print-current-resolution-state works only for grid size ≤ 25" crlf)
        (return FALSE)
    )
    (printout t
        "rn-view:" crlf
        "Physical rows are rows, physical columns are digits. Data are columns." crlf
    )
    (foreach ?row ?*rows*
        (printout t "   ")
        (foreach ?nb ?*numbers*
            (bind ?nb-cands 0)
            (bind ?spaces (+ ?*grid-size* 1))
            (foreach ?col ?*columns*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    (bind ?col2 ?col)
                    (bind ?nb-cands (+ ?nb-cands 1))
                    (bind ?spaces (- ?spaces 1))
                    ;;; add this line for 16x16 puzzles given in hexadecimal notation
                    (if (eq ?*grid-size* 16) then (bind ?col2 (transform-nb-to-hexa ?col)))
                    ;;; add this line for 25x25 puzzles given in alphabetical notation
                    (if (eq ?*grid-size* 25) then (bind ?col2 (transform-nb-to-25letters ?col)))
                    (printout t ?col2)
                )
                (if (and (= ?*grid-size* 9) (= ?col ?*grid-size*)) then (print-n-spaces ?spaces))
            )
            (if (= ?nb ?*grid-size*) then (printout t crlf))
        )
    )
    (printout t crlf)
)


(deffunction print-current-resolution-state-rn-view ()
    (print-current-resolution-state-in-context-rn-view 0)
)


(deffunction print-current-resolution-state-in-context-cn-view (?cont)
    (if (> ?*segment-size* 5) then
        (printout t "print-current-resolution-state works only for grid size ≤ 25" crlf)
        (return FALSE)
    )
    (printout t
        "cn-view:" crlf
        "Physical rows are columns, physical columns are digits. Data are rows." crlf
    )
    (foreach ?col ?*columns*
        (printout t "   ")
        (foreach ?nb ?*numbers*
            (bind ?nb-cands 0)
            (bind ?spaces (+ ?*grid-size* 1))
            (foreach ?row ?*rows*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    (bind ?row2 ?row)
                    (bind ?nb-cands (+ ?nb-cands 1))
                    (bind ?spaces (- ?spaces 1))
                    ;;; add this line for 16x16 puzzles given in hexadecimal notation
                    (if (eq ?*grid-size* 16) then (bind ?row2 (transform-nb-to-hexa ?row)))
                    ;;; add this line for 25x25 puzzles given in alphabetical notation
                    (if (eq ?*grid-size* 25) then (bind ?row2 (transform-nb-to-25letters ?row)))
                    (printout t ?row2)
                )
                (if (and (= ?*grid-size* 9) (= ?row ?*grid-size*)) then (print-n-spaces ?spaces))
            )
            (if (= ?nb ?*grid-size*) then (printout t crlf))
        )
    )
    (printout t crlf)
)


(deffunction print-current-resolution-state-cn-view ()
    (print-current-resolution-state-in-context-cn-view 0)
)


(deffunction print-current-resolution-state-in-context-bn-view (?cont)
    (if (> ?*segment-size* 5) then
        (printout t "print-current-resolution-state works only for grid size ≤ 25" crlf)
        (return FALSE)
    )
    (printout t
        "bn-view:" crlf
        "Physical rows are blocks, physical columns are digits. Data are positions in a block." crlf
    )
    (foreach ?bl ?*blocks*
        (printout t "   ")
        (foreach ?nb ?*numbers*
            (bind ?nb-cands 0)
            (bind ?spaces (+ ?*grid-size* 1))
            (foreach ?sq ?*squares*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:block ?bl) (= ?cand:square ?sq) (= ?cand:number ?nb))
                    (bind ?sq2 ?sq)
                    (bind ?nb-cands (+ ?nb-cands 1))
                    (bind ?spaces (- ?spaces 1))
                    ;;; add this line for 16x16 puzzles given in hexadecimal notation
                    (if (eq ?*grid-size* 16) then (bind ?sq2 (transform-nb-to-hexa ?sq)))
                    ;;; add this line for 25x25 puzzles given in alphabetical notation
                    (if (eq ?*grid-size* 25) then (bind ?sq2 (transform-nb-to-25letters ?sq)))
                    (printout t ?sq2)
                )
                (if (and (= ?*grid-size* 9) (= ?sq ?*grid-size*)) then (print-n-spaces ?spaces))
            )
            (if (= ?nb ?*grid-size*) then (printout t crlf))
        )
    )
    (printout t crlf)
)


(deffunction print-current-resolution-state-bn-view ()
    (print-current-resolution-state-in-context-bn-view 0)
)


(deffunction print-current-resolution-state-all-views ()
    (printout t
        "standard rc-view:" crlf
        "Physical rows are rows, physical columns are columns. Data are digits." crlf
    )
    (print-current-resolution-state)
    (printout t "The following representations may be used e.g. to more easily spot" crlf
        "rn-, cn- or bn- bivalue pairs (also named bilocal pairs), mono-typed-chains," crlf
        "hidden subsets and fishes (which will appear as naked subsets in the proper space)." crlf crlf)
    (print-current-resolution-state-rn-view)
    (print-current-resolution-state-cn-view)
    (print-current-resolution-state-bn-view)
)


;;; abbreviations:
(deffunction print-RS () (print-current-resolution-state))
(deffunction print-RS-rc () (print-current-resolution-state))
(deffunction print-RS-rn () (print-current-resolution-state-rn-view))
(deffunction print-RS-cn () (print-current-resolution-state-cn-view))
(deffunction print-RS-bn () (print-current-resolution-state-bn-view))
(deffunction print-RS-all () (print-current-resolution-state-all-views))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; PRINT FINAL STATE IF NO SOLUTION FOUND
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule print-unsolved-final-state
	(declare (salience ?*print-final-state-salience*))
	(grid ?g)
	(context (name 0))
	(not (solution-found 0))
=>
    (if ?*add-instance-to-solved-list* then
        (bind ?*not-solved-list* (union$ ?*not-solved-list* (create$ ?g)))
    )
    (if ?*print-actions* then
        (printout t "PUZZLE " ?g " IS NOT SOLVED. " (- ?*nb-of-cells*  ?*nb-csp-variables-solved*) " VALUES MISSING." crlf)
    )
    (if (and ?*print-actions* (<= ?*segment-size* 5)) then
        (printout t "CURRENT RESOLUTION STATE:" crlf)
        (print-current-resolution-state)
    )
    (halt)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT AND PRINT SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-solution-in-initial-context
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
    (context (name ?cont&0))
	?brt <- (technique ?cont BRT)
	;;; the presence of a c-value for every rc-cell in context 0 means that a solution has been found
	(forall (row ?row)
        (forall (column ?col)
            (exists (number ?nb)
                (candidate (context ?cont) (status c-value) (row ?row) (column ?col) (number ?nb))
            )
		)
	)
=>
	(retract ?brt)
    (if ?*print-actions* then
        (printout t "PUZZLE " ?g " IS SOLVED.")
        (printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* crlf)
        (if ?*DFS* then (printout t " MAX-DEPTH = " ?*DFS-max-depth* crlf))
    )
	(if ?*add-instance-to-solved-list* then
		(bind ?*solved-list* (create$ ?*solved-list* ?g))
	)
	(assert (solution-found ?cont))
    (bind ?*solution-found* TRUE)
)


;;; Printing of the solution is managed by the generic rules,
;;; using the application-specific printing function:

(deffunction print-solution-in-context (?cont)
    ;;; a unique solution is supposed to have been found in context ?cont
    (if (> ?*segment-size* 5) then
        (printout t "print-solution works only for grid size ≤ 25" crlf)
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
                    (if (eq ?*grid-size* 16) then (bind ?nb2 (transform-nb-to-hexa ?nb)))
                    ;;; add this line for 25x25 puzzles given in alphabetical notation
                    (if (eq ?*grid-size* 25) then (bind ?nb2 (transform-nb-to-25letters ?nb)))
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


