
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                                   BACKGROUND
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;           January 2006 - December 2021             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; This file contains general definitions and facts independent of any particular instance.



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; NUMBERS, ROWS, COLUMNS, BLOCKS, SQUARES AND THEIR NAMES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Sudoku is generally formulated in terms of numbers in cells, but one could use any symbols.
;;; It would suffice to use global variable ?*numeral-names*
;;; to set up the correspondence between outer symbols and their internal representation by numbers.
;;; We discard  this obvious matter.

;;; Internally, all the objects of any type are represented by integers (except links and glinks, for integer overflow reasons)

;;; number-names are used for displaying values of cells in natural rc-space
;;; numeral-names are used for number coordinates in rn- and cn-spaces


(defglobal
	?*potential-numbers* = 
		(create$ 
			1 2 3 4 5 6 7 8 9 10 
			11 12 13 14 15 16 17 18 19 20 
			21 22 23 24 25 26 27 28 29 30
			31 32 33 34 35 36 37 38 39 40
			41 42 43 44 45 46 47 48 49 50
			51 52 53 54 55 56 57 58 59 60
			61 62 63 64 65 66 67 68 69 70
			71 72 73 74 75 76 77 78 79 80
			81
		)
)

(defglobal
	?*potential-numerals* = ?*potential-numbers*
	?*potential-rows* = ?*potential-numbers*
	?*potential-columns* = ?*potential-numbers*
	?*potential-blocks* = ?*potential-numbers*
	?*potential-squares* = ?*potential-numbers*
)


(defglobal
	?*numbers* = (subseq$ ?*potential-numbers* 1 ?*grid-size*)
	?*numerals* = (subseq$ ?*potential-numerals* 1 ?*grid-size*)
	?*rows* = (subseq$ ?*potential-rows* 1 ?*grid-size*)
	?*columns* = (subseq$ ?*potential-columns* 1 ?*grid-size*)
	?*blocks* = (subseq$ ?*potential-blocks* 1 ?*grid-size*)
	?*squares* = (subseq$ ?*potential-squares* 1 ?*grid-size*)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ROWS, COLUMNS, BLOCKS, SQUARES, CELLS - CHANGE OF COORDINATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Coordinates
;;; (row, col) and (block, square) define two different coordinate systems for cells on the grid.
;;; Two cells defined in (row, col) coordinates are the same iff :

(deffunction same-cell (?row1 ?col1 ?row2 ?col2)
	(and (eq ?row1 ?row2) (eq ?col1 ?col2)))
	
(deffunction not-same-cell (?row1 ?col1 ?row2 ?col2)
	(or (neq ?row1 ?row2) (neq ?col1 ?col2))
)


;;; change of coordinates
;;; given a row and a column, the corresponding block and square can be computed by :

(deffunction block (?row ?col)
	(+ 1
	   (* ?*segment-size* (div (- ?row 1) ?*segment-size*))
	   (div (- ?col 1) ?*segment-size*)
	)
)


(deffunction square (?row ?col)
	(+ 1  
	   (* ?*segment-size* (mod (- ?row 1) ?*segment-size*))
	   (mod (+ ?col (- ?*segment-size* 1)) ?*segment-size*))
)

;;; conversely, given a block and a square in it, the corresponding row and column
;;; can be computed by :

(deffunction row (?bl ?sq)
	(+	1
		(* ?*segment-size* (div (- ?bl 1) ?*segment-size*))
		(div (- ?sq 1) ?*segment-size*)
	)
)


(deffunction column (?bl ?sq)
	(+ 1
	   (* ?*segment-size* (mod (- ?bl 1) ?*segment-size*))
	   (mod (- ?sq 1) ?*segment-size*)
	)
)

;;; notice that the function F : (row, column) -> (block, square) is involutive
;;; i.e. it is its own inverse :  F.F = I

;;; to test these functions :
(deffunction test-row-col-bl-sq ()
	(bind ?row 1)
	(while (<= ?row ?*grid-size*)
		(bind ?col 1)
		(while (<= ?col ?*grid-size*)
			(printout t ?row " " ?col " = " 
				(row (block ?row ?col) (square ?row ?col))
                " "
				(column (block ?row ?col) (square ?row ?col))
				crlf)
			(bind ?col (+ ?col 1))
		)	
		(bind ?row (+ ?row 1))
	)
)




;;; a cell can also be given a global index, ranging from 1 to 81:

(deffunction cell-index (?row ?col)
	(+ (* ?*grid-size* (- ?row 1)) ?col)
)

;;; from the cell-index, row, column, block and square coordinates are obtained by:

(deffunction row-from-cell-index (?ind)
	(+	1
		(div (- ?ind 1) ?*grid-size*)
	)
)

(deffunction column-from-cell-index (?ind)
	(+ 1
	   (mod (- ?ind 1) ?*grid-size*)
	)
)

(deffunction block-from-cell-index (?ind)
	(block (row-from-cell-index ?ind) (column-from-cell-index ?ind))
)

(deffunction square-from-cell-index (?ind)
	(square (row-from-cell-index ?ind) (column-from-cell-index ?ind))
)


;;; to test these functions
(deffunction test-cell-index ()
	(bind ?row 1)
	(while (<= ?row ?*grid-size*)
		(bind ?col 1)
		(while (<= ?col ?*grid-size*)
			(printout t  ?row " " ?col " = " 
				(row-from-cell-index (cell-index ?row ?col))
                " "
				(column-from-cell-index (cell-index ?row ?col))
				crlf
			)
			(bind ?col (+ ?col 1))
		)	
		(bind ?row (+ ?row 1))
	)
)


;;; the candidate index is used in conjunction with lists of candidates
;;; a cell is different from any cell in a list of cells defined by their cell-index if:

(deffunction not-same-cell-as-any-of (?row ?col $?list)
	(not (member$ (cell-index ?row ?col) $?list))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction row-column-to-rc-variable (?row ?col)
    (+ (* ?*internal-factor-2* 1) (* ?*internal-factor* ?row) ?col)
)

(deffunction row-number-to-rn-variable (?row ?nb)
    (+ (* ?*internal-factor-2* 2) (* ?*internal-factor* ?row) ?nb)
)

(deffunction column-number-to-cn-variable (?col ?nb)
    (+ (* ?*internal-factor-2* 3) (* ?*internal-factor* ?col) ?nb)
)

(deffunction block-number-to-bn-variable (?blk ?nb)
    (+ (* ?*internal-factor-2* 4) (* ?*internal-factor* ?blk) ?nb)
)


(deffunction csp-var-type (?csp-var)
    (bind ?type (div ?csp-var ?*internal-factor-2*))
    (if (eq ?type 1) then (return rc))
    (if (eq ?type 2) then (return rn))
    (if (eq ?type 3) then (return cn))
    (if (eq ?type 4) then (return bn))
)


(deffunction rc-cell-of-rc-variable (?csp) (mod ?csp ?*internal-factor-2*))
(deffunction row-of-rc-variable (?csp) (div (mod ?csp ?*internal-factor-2*) ?*internal-factor-1*))
(deffunction column-of-rc-variable (?csp) (mod ?csp ?*internal-factor-1*))

(deffunction rn-cell-of-rn-variable (?csp) (mod ?csp ?*internal-factor-2*))
(deffunction row-of-rn-variable (?csp) (div (mod ?csp ?*internal-factor-2*) ?*internal-factor-1*))
(deffunction number-of-rn-variable (?csp) (mod ?csp ?*internal-factor-1*))

(deffunction cn-cell-of-cn-variable (?csp) (mod ?csp ?*internal-factor-2*))
(deffunction column-of-cn-variable (?csp) (div (mod ?csp ?*internal-factor-2*) ?*internal-factor-1*))
(deffunction number-of-cn-variable (?csp) (mod ?csp ?*internal-factor-1*))

(deffunction bn-cell-of-bn-variable (?csp) (mod ?csp ?*internal-factor-2*))
(deffunction block-of-bn-variable (?csp) (div (mod ?csp ?*internal-factor-2*) ?*internal-factor-1*))
(deffunction number-of-bn-variable (?csp) (mod ?csp ?*internal-factor-1*))


    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; LABELS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; notice that, thanks to the redefinition of the internal-factors when g-labels are used,
;;; the following functions work also for g-labels (i.e. if ?r or ?c are segments)


(deffunction rc-to-cell (?r ?c)
    (+ (* ?*internal-factor-1* ?r) ?c)
)

(deffunction nrc-to-label (?n ?r ?c)
    (+ (* ?*internal-factor-2* ?n) (* ?*internal-factor-1* ?r) ?c)
)

(deffunction label-number (?label)
    (bind ?label (mod ?label ?*internal-factor-3*)) ;;; to take care of the g-label cases
    (div ?label ?*internal-factor-2*)
)

(deffunction label-cell (?label)
    (mod ?label ?*internal-factor-2*)
)

(deffunction label-row (?label)
    (div (mod ?label ?*internal-factor-2*) ?*internal-factor-1*)
)

(deffunction label-column (?label)
    (mod ?label ?*internal-factor-1*)
)

(deffunction cell-row (?cell)
    (div ?cell ?*internal-factor-1*)
)

(deffunction cell-column (?cell)
    (mod ?cell ?*internal-factor-1*)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONVERSION FUNCTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Added March 2021:
;;; Convert the printed representation of a candidate or a list of candidates
;;; (i.e. nirjck, where n, r and c are fixed symbols and i, j, k are the corresponding components)
;;; to an internal label compatible with the current set of rules.

(deffunction nirjck-to-nrc-triplet (?str)
    (bind ?len (str-length ?str))
    (bind ?list (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?x (sub-string ?i ?i ?str))
        (if (and (neq ?x "n") (neq ?x "r") (neq ?x "c")) then
            (bind ?list (create$ ?list (string-to-field ?x)))
        )
        (bind ?i (+ ?i 1))
    )
    ?list
)


(deffunction nirjck-to-label (?str)
    (bind ?list (nirjck-to-nrc-triplet ?str))
    (nrc-to-label (nth$ 1 ?list) (nth$ 2 ?list) (nth$ 3 ?list))
)


(deffunction list-of-nirjck-to-list-of-labels ($?list)
    ;(funcall nirjck-to-label ?list); doesn't work
    (bind ?len (length$ ?list))
    (bind ?res (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?x (nth$ ?i ?list))
        (bind ?res (create$ ?res (nirjck-to-label ?x)))
        (bind ?i (+ ?i 1))
    )
    ?res
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; LINKS BETWEEN LABELS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction nrc-linked (?nb1 ?row1 ?col1 ?bl1 ?nb2 ?row2 ?col2 ?bl2)
	(if (neq ?nb1 ?nb2)
		then (and (eq ?row1 ?row2) (eq ?col1 ?col2)) ; same rc-cell
		else (or (and (eq ?row1 ?row2) (neq ?col1 ?col2)) ; same row but not same rc-cell
				 (and (eq ?col1 ?col2) (neq ?row1 ?row2)) ; same column but not same rc-cell
				 (and (eq ?bl1 ?bl2) (or (neq ?row1 ?row2) (neq ?col1 ?col2))) ; same block, but not same rc-cell
			 )
	)
)


(deffunction rc-linked (?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
	(and (eq ?row1 ?row2) (eq ?col1 ?col2) (neq ?nb1 ?nb2))
)

(deffunction rn-linked (?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
	(and (eq ?row1 ?row2) (eq ?nb1 ?nb2) (neq ?col1 ?col2))
)

(deffunction cn-linked (?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
	(and (eq ?col1 ?col2) (eq ?nb1 ?nb2) (neq ?row1 ?row2))
)

(deffunction bn-linked (?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
    (bind ?blk1 (block ?row1 ?col1))
    (bind ?blk2 (block ?row2 ?col2))
	(and (eq ?blk1 ?blk2) (eq ?nb1 ?nb2) (not (and (eq ?row1 ?row2) (eq ?col1 ?col2))))
)


(deffunction labels-linked-by (?lab1 ?lab2 ?csp)
    ;;; the first condition is intended to discard the case when glabels are passed to this function
    (if (or (>= ?lab1 ?*internal-factor-3*) (>= ?lab2 ?*internal-factor-3*)) then (return FALSE))
    (bind ?nb1 (label-number ?lab1))
    (bind ?cell1 (label-cell ?lab1))
    (bind ?row1 (cell-row ?cell1))
    (bind ?col1 (cell-column ?cell1))

    (bind ?nb2 (label-number ?lab2))
    (bind ?cell2 (label-cell ?lab2))
    (bind ?row2 (cell-row ?cell2))
    (bind ?col2 (cell-column ?cell2))
    
    (bind ?lk (csp-var-type ?csp))

    (if (eq ?lk rc) then (return (rc-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)))
    (if (eq ?lk rn) then (return (rn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)))
    (if (eq ?lk cn) then (return (cn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)))
    (if (eq ?lk bn) then (return (bn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)))
    (return FALSE)
)


(deffunction labels-linked (?lab1 ?lab2)
    (bind ?nb1 (label-number ?lab1))
    (bind ?cell1 (label-cell ?lab1))
    (bind ?row1 (cell-row ?cell1))
    (bind ?col1 (cell-column ?cell1))

    (bind ?nb2 (label-number ?lab2))
    (bind ?cell2 (label-cell ?lab2))
    (bind ?row2 (cell-row ?cell2))
    (bind ?col2 (cell-column ?cell2))

    (or
        (rc-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
        (rn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
        (cn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
        (bn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
    )
)


(deffunction labels-linked-or (?lab $?labs)
    (bind ?nb1 (label-number ?lab))
    (bind ?cell1 (label-cell ?lab))
    (bind ?row1 (cell-row ?cell1))
    (bind ?col1 (cell-column ?cell1))

    (foreach ?lab2 $?labs
        (bind ?nb2 (label-number ?lab2))
        (bind ?cell2 (label-cell ?lab2))
        (bind ?row2 (cell-row ?cell2))
        (bind ?col2 (cell-column ?cell2))
        (if 
            (or
                (rc-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
                (rn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
                (cn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
                (bn-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2)
            )
            then (return TRUE)
        )
	)
	(return FALSE)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; FUNCTIONS "LINKED" AND "LINKED-OR"
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Instead of using the generic version of functions "linked" and "linked-or" (based on global variable ?*links*)
;;; we redefine them respectively as "labels-linked" and "labels-linked-or"
;;; (using the generic version would be slower)

(deffunction linked (?lab1 ?lab2) (labels-linked ?lab1 ?lab2))

(deffunction linked-or (?lab $?labs) (labels-linked-or ?lab $?labs))

;;; for using the generic version, the above redefinitions must be deleted and
;;; (if (eq ?cont 0) then (bind ?*links-count* (+ ?*links-count* 1)))
;;; must be replaced by
;;; (if (eq ?cont 0) then (add-link ?cand1 ?cand2))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; INTERSECTIONS BETWEEN ROWS AND BLOCKS AND BETWEEN COLUMNS AND BLOCKS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Works only for 9x9 grids
;;; used only for JExocets

(deffunction row-intersects (?row ?bl)
	(if (or (and (member$ ?row (subseq$ ?*rows* 1 3))
				 (member$ ?bl (subseq$ ?*blocks* 1 3)))
			(and (member$ ?row (subseq$ ?*rows* 4 6))
				 (member$ ?bl (subseq$ ?*blocks* 4 6)))
			(and (member$ ?row (subseq$ ?*rows* 7 9))
				 (member$ ?bl (subseq$ ?*blocks* 7 9))))
		then TRUE else FALSE)
)


(deffunction column-intersects (?col ?bl)
	(if (or (and (member$ ?col (subseq$ ?*columns* 1 3))
				 (or (member$ ?bl (subseq$ ?*blocks* 1 1))
					 (member$ ?bl (subseq$ ?*blocks* 4 4))
					 (member$ ?bl (subseq$ ?*blocks* 7 7))))
			(and (member$ ?col (subseq$ ?*columns* 4 6))
				 (or (member$ ?bl (subseq$ ?*blocks* 2 2))
					 (member$ ?bl (subseq$ ?*blocks* 5 5))
					 (member$ ?bl (subseq$ ?*blocks* 8 8))))
			(and (member$ ?col (subseq$ ?*columns* 7 9))
				 (or (member$ ?bl (subseq$ ?*blocks* 3 3))
					 (member$ ?bl (subseq$ ?*blocks* 6 6))
					 (member$ ?bl (subseq$ ?*blocks* 9 9)))))
		then TRUE else FALSE)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; UTILITIES FOR LARGE PUZZLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; utility for transforming 16x16, 25x25 and 36x36 puzzles given in hexadecimal form into ones given in number form:
;;; in the latter case, number 0 is used as the representation for 36

(deffunction transform-hexa-to-nb (?nb)
	(if (or (eq ?nb A) (eq ?nb a)) then (bind ?nb 10))
	(if (or (eq ?nb B) (eq ?nb b)) then (bind ?nb 11))
	(if (or (eq ?nb C) (eq ?nb c)) then (bind ?nb 12))
	(if (or (eq ?nb D) (eq ?nb d)) then (bind ?nb 13))
	(if (or (eq ?nb E) (eq ?nb e)) then (bind ?nb 14))
	(if (or (eq ?nb F) (eq ?nb f)) then (bind ?nb 15))
	(if (or (eq ?nb G) (eq ?nb g)) then (bind ?nb 16))
	?nb
)

(deffunction transform-25letters-to-nb (?nb)
	(if (or (eq ?nb A) (eq ?nb a)) then (bind ?nb 10))
	(if (or (eq ?nb B) (eq ?nb b)) then (bind ?nb 11))
	(if (or (eq ?nb C) (eq ?nb c)) then (bind ?nb 12))
	(if (or (eq ?nb D) (eq ?nb d)) then (bind ?nb 13))
	(if (or (eq ?nb E) (eq ?nb e)) then (bind ?nb 14))
	(if (or (eq ?nb F) (eq ?nb f)) then (bind ?nb 15))
	(if (or (eq ?nb G) (eq ?nb g)) then (bind ?nb 16))
	(if (or (eq ?nb H) (eq ?nb h)) then (bind ?nb 17))
	(if (or (eq ?nb I) (eq ?nb i)) then (bind ?nb 18))
	(if (or (eq ?nb J) (eq ?nb j)) then (bind ?nb 19))
	(if (or (eq ?nb K) (eq ?nb k)) then (bind ?nb 20))
	(if (or (eq ?nb L) (eq ?nb l)) then (bind ?nb 21))
	(if (or (eq ?nb M) (eq ?nb m)) then (bind ?nb 22))
	(if (or (eq ?nb N) (eq ?nb n)) then (bind ?nb 23))
	(if (or (eq ?nb O) (eq ?nb o)) then (bind ?nb 24))
	(if (or (eq ?nb P) (eq ?nb p)) then (bind ?nb 25))
	?nb
)


(deffunction transform-36letters-to-nb (?nb)
    (if (or (eq ?nb A) (eq ?nb a)) then (bind ?nb 10))
    (if (or (eq ?nb B) (eq ?nb b)) then (bind ?nb 11))
    (if (or (eq ?nb C) (eq ?nb c)) then (bind ?nb 12))
    (if (or (eq ?nb D) (eq ?nb d)) then (bind ?nb 13))
    (if (or (eq ?nb E) (eq ?nb e)) then (bind ?nb 14))
    (if (or (eq ?nb F) (eq ?nb f)) then (bind ?nb 15))
    (if (or (eq ?nb G) (eq ?nb g)) then (bind ?nb 16))
    (if (or (eq ?nb H) (eq ?nb h)) then (bind ?nb 17))
    (if (or (eq ?nb I) (eq ?nb i)) then (bind ?nb 18))
    (if (or (eq ?nb J) (eq ?nb j)) then (bind ?nb 19))
    (if (or (eq ?nb K) (eq ?nb k)) then (bind ?nb 20))
    (if (or (eq ?nb L) (eq ?nb l)) then (bind ?nb 21))
    (if (or (eq ?nb M) (eq ?nb m)) then (bind ?nb 22))
    (if (or (eq ?nb N) (eq ?nb n)) then (bind ?nb 23))
    (if (or (eq ?nb O) (eq ?nb o)) then (bind ?nb 24))
    (if (or (eq ?nb P) (eq ?nb p)) then (bind ?nb 25))
    (if (or (eq ?nb Q) (eq ?nb q)) then (bind ?nb 26))
    (if (or (eq ?nb R) (eq ?nb r)) then (bind ?nb 27))
    (if (or (eq ?nb S) (eq ?nb s)) then (bind ?nb 28))
    (if (or (eq ?nb T) (eq ?nb t)) then (bind ?nb 29))
    (if (or (eq ?nb U) (eq ?nb u)) then (bind ?nb 30))
    (if (or (eq ?nb V) (eq ?nb v)) then (bind ?nb 31))
    (if (or (eq ?nb W) (eq ?nb w)) then (bind ?nb 32))
    (if (or (eq ?nb X) (eq ?nb x)) then (bind ?nb 33))
    (if (or (eq ?nb Y) (eq ?nb y)) then (bind ?nb 34))
    (if (or (eq ?nb Z) (eq ?nb z)) then (bind ?nb 35))
    (if (or (eq ?nb 0) (eq ?nb 0)) then (bind ?nb 36))
    ?nb
)


;;; reverse transformations

(deffunction transform-nb-to-hexa (?nb)
    (if (eq ?nb 10) then (bind ?nb A))
    (if (eq ?nb 11) then (bind ?nb B))
    (if (eq ?nb 12) then (bind ?nb C))
    (if (eq ?nb 13) then (bind ?nb D))
    (if (eq ?nb 14) then (bind ?nb E))
    (if (eq ?nb 15) then (bind ?nb F))
    (if (eq ?nb 16) then (bind ?nb G))
    ?nb
)

(deffunction transform-nb-to-25letters (?nb)
    (if (eq ?nb 10) then (bind ?nb A))
    (if (eq ?nb 11) then (bind ?nb B))
    (if (eq ?nb 12) then (bind ?nb C))
    (if (eq ?nb 13) then (bind ?nb D))
    (if (eq ?nb 14) then (bind ?nb E))
    (if (eq ?nb 15) then (bind ?nb F))
    (if (eq ?nb 16) then (bind ?nb G))
    (if (eq ?nb 17) then (bind ?nb H))
    (if (eq ?nb 18) then (bind ?nb I))
    (if (eq ?nb 19) then (bind ?nb J))
    (if (eq ?nb 20) then (bind ?nb K))
    (if (eq ?nb 21) then (bind ?nb L))
    (if (eq ?nb 22) then (bind ?nb M))
    (if (eq ?nb 23) then (bind ?nb N))
    (if (eq ?nb 24) then (bind ?nb O))
    (if (eq ?nb 25) then (bind ?nb P))
    ?nb
)


(deffunction transform-nb-to-36letters (?nb)
    (if (eq ?nb 10) then (bind ?nb A))
    (if (eq ?nb 11) then (bind ?nb B))
    (if (eq ?nb 12) then (bind ?nb C))
    (if (eq ?nb 13) then (bind ?nb D))
    (if (eq ?nb 14) then (bind ?nb E))
    (if (eq ?nb 15) then (bind ?nb F))
    (if (eq ?nb 16) then (bind ?nb G))
    (if (eq ?nb 17) then (bind ?nb H))
    (if (eq ?nb 18) then (bind ?nb I))
    (if (eq ?nb 19) then (bind ?nb J))
    (if (eq ?nb 20) then (bind ?nb K))
    (if (eq ?nb 21) then (bind ?nb L))
    (if (eq ?nb 22) then (bind ?nb M))
    (if (eq ?nb 23) then (bind ?nb N))
    (if (eq ?nb 24) then (bind ?nb O))
    (if (eq ?nb 25) then (bind ?nb P))
    (if (eq ?nb 26) then (bind ?nb Q))
    (if (eq ?nb 27) then (bind ?nb R))
    (if (eq ?nb 28) then (bind ?nb S))
    (if (eq ?nb 29) then (bind ?nb T))
    (if (eq ?nb 30) then (bind ?nb U))
    (if (eq ?nb 31) then (bind ?nb V))
    (if (eq ?nb 32) then (bind ?nb W))
    (if (eq ?nb 33) then (bind ?nb X))
    (if (eq ?nb 34) then (bind ?nb Y))
    (if (eq ?nb 35) then (bind ?nb Z))
    (if (eq ?nb 36) then (bind ?nb 0))
    ?nb
)


(deffunction test-input-conversions()
    (loop-for-count (?i 1 36)
        (bind ?j (transform-36letters-to-nb (transform-nb-to-36letters ?i)))
        (if (neq ?i ?j) then (printout t "Error: " ?i " => " ?j crlf))
    )
    TRUE
)
        

