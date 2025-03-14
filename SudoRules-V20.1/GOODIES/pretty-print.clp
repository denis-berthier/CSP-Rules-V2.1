
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                                 PRETTY-PRINT
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for printing a Sudoku or Sukaku in grid form
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction pretty-print-sudoku-string (?sudoku-string)
    ;;; this functon supposes there is only one symbol per entry
    (if (> ?*segment-size* 5) then (printout t ?sudoku-string crlf) (return))
    (bind ?left-space "     ")
    (bind ?tower-separator "! ")
    (bind ?floor-separator
        (switch ?*segment-size*
            (case 3 then "+-------+-------+-------+")
            (case 4 then "+---------+---------+---------+---------+")
            (case 5 then "+-----------+-----------+-----------+-----------+-----------+")
        )
    )
    ;;; For every cell
    (foreach ?row  ?*rows*
        (if (eq (mod ?row ?*segment-size*) 1) then (printout t ?left-space ?floor-separator crlf))
        (printout t ?left-space)
        (foreach ?col ?*columns*
            (if (eq (mod ?col ?*segment-size*) 1) then (printout t ?tower-separator))
            (bind ?i (cell-index ?row ?col))
            ;;; read the content of the cell from the entries
            (bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?sudoku-string))))
            (if (eq ?nb 0) then (bind ?nb .))
            (printout t ?nb " ")
        )
        (printout t ?tower-separator crlf)
    )
    (printout t ?left-space ?floor-separator crlf crlf)
)

;;; abbreviation:
(deffunction pretty-print (?sudoku-string)
    (pretty-print-sudoku-string ?sudoku-string)
)



(deffunction pretty-print-tatham-string (?tatham-string)
    (pretty-print-sudoku-string (tatham-to-sudoku-string ?tatham-string))
)



(deffunction pretty-print-sukaku-list ($?sukaku-list)
    ;;; this functon supposes there is only one symbol per entry
    ;(if (> ?*segment-size* 5) then (printout t ?sukaku-list crlf) (return))
    (bind ?left-space "   ")
    (bind ?tower-separator "! ")
    ;;; find the largest element in the list
    (bind ?max-size 0)
    (foreach ?datum ?sukaku-list
        (bind ?max-size (max ?max-size (str-length (implode$ (create$ ?datum)))))
    )
    ; (printout t "max-data-length = " ?max-size crlf)
    ;;; one column (1 + ?max-size)
    (bind ?one-column "-")
    (loop-for-count ?max-size do (bind ?one-column (str-cat ?one-column "-")))
    ;;; ?*segment-size* columns
    (bind ?one-segment "")
    (loop-for-count ?*segment-size* do (bind ?one-segment (str-cat ?one-segment ?one-column)))
    (bind ?one-segment (str-cat "+-" ?one-segment))
    ?one-segment
    ;;; full grid
    (bind ?one-line "")
    (loop-for-count ?*segment-size* do (bind ?one-line (str-cat ?one-line ?one-segment)))
    (bind ?floor-separator (str-cat ?one-line "+ "))

    ;;; now print the data
    (foreach ?row ?*rows*
        (if (eq (mod ?row ?*segment-size*) 1) then (printout t ?left-space ?floor-separator crlf))
        (printout t ?left-space)
        (foreach ?col ?*columns*
            (if (eq (mod ?col ?*segment-size*) 1) then (printout t ?tower-separator))
            (bind ?i (cell-index ?row ?col))
            ;;; read the content of the cell from the entries and turn it into a string:
            (bind ?cand-string (implode$ (create$ (nth$ ?i ?sukaku-list))))
            (bind ?missing-spaces (- ?max-size (str-length ?cand-string)))
            ;;; print the content of this cell + one space
            (printout t ?cand-string)
            (loop-for-count (+ ?missing-spaces 1) do (printout t " "))
        )
        (printout t ?tower-separator crlf)
    )
    (printout t ?left-space ?floor-separator crlf crlf)
)


(deffunction pretty-print-sukaku-grid ($?sukaku-list)
    (pretty-print-sukaku-list (clean-grid-list $?sukaku-list))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for printing the solution
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction pretty-print-solution-in-context (?cont)
    ;;; a unique solution is supposed to have been found in context ?cont
    (if (> ?*segment-size* 5) then
        (printout t "print-solution works only for grid size ≤ 25" crlf)
        (return FALSE)
    )
    (bind ?str "")
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (eq ?cand:status c-value) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    (bind ?nb2 ?nb)
                    ;;; add this line for 16x16 puzzles given in hexadecimal notation
                    (if (eq ?*grid-size* 16) then (bind ?nb2 (transform-nb-to-hexa ?nb)))
                    ;;; add this line for 25x25 puzzles given in alphabetical notation
                    (if (eq ?*grid-size* 25) then (bind ?nb2 (transform-nb-to-25letters ?nb)))
                    (bind ?str (str-cat ?str ?nb2))
                )
            )
        )
    )
    (pretty-print-sudoku-string ?str)
)

(deffunction pretty-print-solution ()
    (pretty-print-solution-in-context 0)
)


