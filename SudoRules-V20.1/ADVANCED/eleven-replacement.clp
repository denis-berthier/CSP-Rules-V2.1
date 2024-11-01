
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              ELEVEN'S REPLACEMENT TECHNIQUE
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







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Utility functions for 3 digits in 3 cells
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction replace-3-digits-in-cell (?nb1 ?nb2 ?nb3 ?cell-data)
    ;;; turn the content of the cell into a string:
    (bind ?cand-str (implode$ (create$ ?cell-data)))
    (bind ?digits-already-in-list FALSE)
    (bind ?new-cell-data (sym-cat ""))
    (loop-for-count (?i 1 (str-length ?cand-str))
        ;;; deal with the ith element of the cell data
        (bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?cand-str))))
        ;(printout t "dealing with " ?nb " current cell data = " ?new-cell-data crlf)
        (if (and (neq ?nb ?nb1) (neq ?nb ?nb2) (neq ?nb ?nb3))
            then (bind ?new-cell-data (sym-cat ?new-cell-data ?nb))
            else (if (not ?digits-already-in-list) then
                    (bind ?new-cell-data (sym-cat ?new-cell-data ?nb1 ?nb2 ?nb3))
                    (bind ?digits-already-in-list TRUE)
                )
        )
        ;(printout t ?new-cell-data crlf)
    )
    ?new-cell-data
)


(deffunction replace-3-digits-in-sukaku-list (?nb1 ?nb2 ?nb3 $?sukaku-list)
    (bind ?new-sukaku-list (create$))
    (loop-for-count (?i 1 81)
        (bind ?new-sukaku-list
            (create$ ?new-sukaku-list (replace-3-digits-in-cell ?nb1 ?nb2 ?nb3 (nth$ ?i $?sukaku-list)))
        )
    )
    ?new-sukaku-list
)


(deffunction replace-3-digits-in-sukaku-grid (?nb1 ?nb2 ?nb3 $?sukaku-grid)
    (pretty-print-sukaku-list
        (replace-3-digits-in-sukaku-list ?nb1 ?nb2 ?nb3 (clean-grid-list $?sukaku-grid))
    )
)


(deffunction fix-3-digits-in-3-rc-cells-of-sukaku-list (?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 $?sukaku-list)
    ;;; the 3 cells are supposed to be given by their (r, c) coordinates
    (bind ?cell1 (cell-index ?row1 ?col1))
    (bind ?cell2 (cell-index ?row2 ?col2))
    (bind ?cell3 (cell-index ?row3 ?col3))
    (replace$ (replace$ (replace$ ?sukaku-list ?cell1 ?cell1 ?nb1) ?cell2 ?cell2 ?nb2) ?cell3 ?cell3 ?nb3)
)


(deffunction fix-3-digits-in-3-rc-cells-of-sukaku-grid (?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 $?sukaku-grid)
    ;;; the 3 cells are supposed to be given by their (r, c) coordinates
    (pretty-print-sukaku-list
        (fix-3-digits-in-3-rc-cells-of-sukaku-list ?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 (clean-grid-list ?sukaku-grid))
    )
)


(deffunction solve-sukaku-list-by-eleven-replacement3 (?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 $?sukaku-list)
    (bind ?new-grid
        (fix-3-digits-in-3-rc-cells-of-sukaku-list
            ?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3
            (replace-3-digits-in-sukaku-list ?nb1 ?nb2 ?nb3 ?sukaku-list)
        )
    )
    (printout t crlf "AFTER APPLYING ELEVEN''S REPLACEMENT METHOD to 3 digits " ?nb1 ", " ?nb2 " and " ?nb3
        " in 3 cells " (row-name ?row1) (column-name ?col1)  ", " (row-name ?row2) (column-name ?col2) " and " (row-name ?row3) (column-name ?col3)  "," crlf
       "the resolution state is:" crlf)
    (pretty-print-sukaku-list ?new-grid)
    (printout t "THIS IS THE PUZZLE THAT WILL NOW BE SOLVED." crlf)
    (printout t "RELEVANT DIGIT REPLACEMENTS WILL BE NECESSARY AT THE END, based on the original givens." crlf crlf)
    (solve-sukaku-list ?new-grid)
)

(deffunction solve-sukaku-list-by-eleven-replacement (?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 $?sukaku-list)
    (solve-sukaku-list-by-eleven-replacement3 ?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 $?sukaku-list)
)


(deffunction solve-sukaku-grid-by-eleven-replacement3 (?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 $?sukaku-grid)
    (solve-sukaku-list-by-eleven-replacement3
        ?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3
        (clean-grid-list $?sukaku-grid)
    )
)
(deffunction solve-sukaku-grid-by-eleven-replacement (?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 $?sukaku-grid)
    (solve-sukaku-grid-by-eleven-replacement3 ?nb1 ?nb2 ?nb3 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 $?sukaku-grid)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Utility functions for 4 digits in 4 cells
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction replace-4-digits-in-cell (?nb1 ?nb2 ?nb3 ?nb4 ?cell-data)
    ;;; turn the content of the cell into a string:
    (bind ?cand-str (implode$ (create$ ?cell-data)))
    (bind ?digits-already-in-list FALSE)
    (bind ?new-cell-data (sym-cat ""))
    (loop-for-count (?i 1 (str-length ?cand-str))
        ;;; deal with the ith element of the cell data
        (bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?cand-str))))
        ;(printout t "dealing with " ?nb " current cell data = " ?new-cell-data crlf)
        (if (and (neq ?nb ?nb1) (neq ?nb ?nb2) (neq ?nb ?nb3) (neq ?nb ?nb4))
            then (bind ?new-cell-data (sym-cat ?new-cell-data ?nb))
            else (if (not ?digits-already-in-list) then
                    (bind ?new-cell-data (sym-cat ?new-cell-data ?nb1 ?nb2 ?nb3 ?nb4))
                    (bind ?digits-already-in-list TRUE)
                )
        )
        ;(printout t ?new-cell-data crlf)
    )
    ?new-cell-data
)


(deffunction replace-4-digits-in-sukaku-list (?nb1 ?nb2 ?nb3 ?nb4 $?sukaku-list)
    (bind ?new-sukaku-list (create$))
    (loop-for-count (?i 1 81)
        (bind ?new-sukaku-list
            (create$ ?new-sukaku-list (replace-4-digits-in-cell ?nb1 ?nb2 ?nb3 ?nb4 (nth$ ?i $?sukaku-list)))
        )
    )
    ?new-sukaku-list
)


(deffunction replace-4-digits-in-sukaku-grid (?nb1 ?nb2 ?nb3 ?nb4 $?sukaku-grid)
    (pretty-print-sukaku-list
        (replace-4-digits-in-sukaku-list ?nb1 ?nb2 ?nb3 ?nb4 (clean-grid-list $?sukaku-grid))
    )
)


(deffunction fix-4-digits-in-4-rc-cells-of-sukaku-list (?nb1 ?nb2 ?nb3 ?nb4 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?row4 ?col4 $?sukaku-list)
    ;;; the 4 cells are supposed to be given by their (r, c) coordinates
    (bind ?cell1 (cell-index ?row1 ?col1))
    (bind ?cell2 (cell-index ?row2 ?col2))
    (bind ?cell3 (cell-index ?row3 ?col3))
    (bind ?cell4 (cell-index ?row4 ?col4))
    (replace$ (replace$ (replace$ (replace$ ?sukaku-list ?cell1 ?cell1 ?nb1) ?cell2 ?cell2 ?nb2) ?cell3 ?cell3 ?nb3) ?cell4 ?cell4 ?nb4)
)


(deffunction fix-4-digits-in-4-rc-cells-of-sukaku-grid (?nb1 ?nb2 ?nb3 ?nb4 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?row4 ?col4 $?sukaku-grid)
    ;;; the 4 cells are supposed to be given by their (r, c) coordinates
    (pretty-print-sukaku-list
        (fix-4-digits-in-4-rc-cells-of-sukaku-list ?nb1 ?nb2 ?nb3 ?nb4 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?row4 ?col4 (clean-grid-list ?sukaku-grid))
    )
)


(deffunction solve-sukaku-list-by-eleven-replacement4 (?nb1 ?nb2 ?nb3 ?nb4 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?row4 ?col4 $?sukaku-list)
    (bind ?new-grid
        (fix-4-digits-in-4-rc-cells-of-sukaku-list
            ?nb1 ?nb2 ?nb3 ?nb4 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?row4 ?col4
            (replace-4-digits-in-sukaku-list ?nb1 ?nb2 ?nb3 ?nb4 ?sukaku-list)
        )
    )
    (printout t crlf "AFTER APPLYING ELEVEN''S REPLACEMENT METHOD to 4 digits " ?nb1 ", " ?nb2 ", " ?nb3 " and " ?nb4
        " in 4 cells " (row-name ?row1) (column-name ?col1)  ", " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) " and " (row-name ?row4) (column-name ?col4)  "," crlf
       "the resolution state is:" crlf)
    (pretty-print-sukaku-list ?new-grid)
    (printout t "THIS IS THE PUZZLE THAT WILL NOW BE SOLVED." crlf)
    (printout t "RELEVANT DIGIT REPLACEMENTS WILL BE NECESSARY AT THE END, based on the original givens." crlf crlf)
    (solve-sukaku-list ?new-grid)
)


(deffunction solve-sukaku-grid-by-eleven-replacement4 (?nb1 ?nb2 ?nb3 ?nb4 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?row4 ?col4 $?sukaku-grid)
    (solve-sukaku-list-by-eleven-replacement4
        ?nb1 ?nb2 ?nb3 ?nb4 ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?row4 ?col4
        (clean-grid-list $?sukaku-grid)
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Utility functions for 2 digits in 2 cells
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction replace-2-digits-in-cell (?nb1 ?nb2 ?cell-data)
    ;;; turn the content of the cell into a string:
    (bind ?cand-str (implode$ (create$ ?cell-data)))
    (bind ?digits-already-in-list FALSE)
    (bind ?new-cell-data (sym-cat ""))
    (loop-for-count (?i 1 (str-length ?cand-str))
        ;;; deal with the ith element of the cell data
        (bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?cand-str))))
        ;(printout t "dealing with " ?nb " current cell data = " ?new-cell-data crlf)
        (if (and (neq ?nb ?nb1) (neq ?nb ?nb2))
            then (bind ?new-cell-data (sym-cat ?new-cell-data ?nb))
            else (if (not ?digits-already-in-list) then
                    (bind ?new-cell-data (sym-cat ?new-cell-data ?nb1 ?nb2))
                    (bind ?digits-already-in-list TRUE)
                )
        )
        ;(printout t ?new-cell-data crlf)
    )
    ?new-cell-data
)


(deffunction replace-2-digits-in-sukaku-list (?nb1 ?nb2 $?sukaku-list)
    (bind ?new-sukaku-list (create$))
    (loop-for-count (?i 1 81)
        (bind ?new-sukaku-list
            (create$ ?new-sukaku-list (replace-2-digits-in-cell ?nb1 ?nb2 (nth$ ?i $?sukaku-list)))
        )
    )
    ?new-sukaku-list
)


(deffunction replace-2-digits-in-sukaku-grid (?nb1 ?nb2 $?sukaku-grid)
    (pretty-print-sukaku-list
        (replace-2-digits-in-sukaku-list ?nb1 ?nb2 (clean-grid-list $?sukaku-grid))
    )
)


(deffunction fix-2-digits-in-2-rc-cells-of-sukaku-list (?nb1 ?nb2 ?row1 ?col1 ?row2 ?col2 $?sukaku-list)
    ;;; the 3 cells are supposed to be given by their (r, c) coordinates
    (bind ?cell1 (cell-index ?row1 ?col1))
    (bind ?cell2 (cell-index ?row2 ?col2))
    (replace$ (replace$ ?sukaku-list ?cell1 ?cell1 ?nb1) ?cell2 ?cell2 ?nb2)
)


(deffunction fix-2-digits-in-2-rc-cells-of-sukaku-grid (?nb1 ?nb2 ?row1 ?col1 ?row2 ?col2 $?sukaku-grid)
    ;;; the 2 cells are supposed to be given by their (r, c) coordinates
    (pretty-print-sukaku-list
        (fix-2-digits-in-2-rc-cells-of-sukaku-list ?nb1 ?nb2 ?row1 ?col1 ?row2 ?col2 (clean-grid-list ?sukaku-grid))
    )
)


(deffunction solve-sukaku-list-by-eleven-replacement2 (?nb1 ?nb2 ?row1 ?col1 ?row2 ?col2 $?sukaku-list)
    (bind ?new-grid
        (fix-2-digits-in-2-rc-cells-of-sukaku-list
            ?nb1 ?nb2 ?row1 ?col1 ?row2 ?col2
            (replace-2-digits-in-sukaku-list ?nb1 ?nb2 ?sukaku-list)
        )
    )
    (printout t crlf "AFTER APPLYING ELEVEN''S REPLACEMENT METHOD to 2 digits " ?nb1 " and " ?nb2
        " in 2 cells " (row-name ?row1) (column-name ?col1)  " and " (row-name ?row2) (column-name ?col2)  "," crlf
       "the resolution state is:" crlf)
    (pretty-print-sukaku-list ?new-grid)
    (printout t "THIS IS THE PUZZLE THAT WILL NOW BE SOLVED." crlf)
    (printout t "RELEVANT DIGIT REPLACEMENTS WILL BE NECESSARY AT THE END, based on the original givens." crlf crlf)
    (solve-sukaku-list ?new-grid)
)


(deffunction solve-sukaku-grid-by-eleven-replacement2 (?nb1 ?nb2 ?row1 ?col1 ?row2 ?col2 $?sukaku-grid)
    (solve-sukaku-list-by-eleven-replacement2
        ?nb1 ?nb2 ?row1 ?col1 ?row2 ?col2
        (clean-grid-list $?sukaku-grid)
    )
)





