
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                                 PRETTY-PRINT
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for printing a partly solved Latin Square in grid form
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction pretty-print-LS-string (?LS-string)
    ;;; this functon supposes there is only one symbol per entry
    (if (> ?*grid-size* 25) then (printout t ?LS-string crlf) (return))
    (bind ?left-space "")
    ;;; For every cell
    (foreach ?row  ?*rows*
        (printout t ?left-space)
        (foreach ?col ?*columns*
            (bind ?i (cell-index ?row ?col))
            ;;; read the content of the cell from the entries
            (bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?LS-string))))
            (if (eq ?nb 0) then (bind ?nb .))
            (printout t ?nb " ")
        )
        (printout t crlf)
    )
    (printout t crlf)
)


(deffunction pretty-print-partly-solved-LS-list ($?LS-list)
    ;;; this functon supposes there is only one symbol per entry
    (if (> ?*grid-size* 25) then (printout t ?LS-list crlf) (return))
    (bind ?left-space "")
    ;;; find the largest element in the list
    (bind ?max-size 0)
    (foreach ?datum ?LS-list
        (bind ?max-size (max ?max-size (str-length (implode$ (create$ ?datum)))))
    )
    ; (printout t "max-data-length = " ?max-size crlf)

    ;;; now print the data
    (foreach ?row ?*rows*
        (printout t ?left-space)
        (foreach ?col ?*columns*
            (bind ?i (cell-index ?row ?col))
            ;;; read the content of the cell from the entries and turn it into a string:
            (bind ?cand-string (implode$ (create$ (nth$ ?i ?LS-list))))
            (bind ?missing-spaces (- ?max-size (str-length ?cand-string)))
            ;;; print the content of this cell + one space
            (printout t ?cand-string)
            (loop-for-count (+ ?missing-spaces 1) do (printout t " "))
        )
        (printout t crlf)
    )
    (printout t ?left-space crlf)
)


(deffunction pretty-print-current-resolution-state ()
    (pretty-print-partly-solved-LS-list (compute-current-resolution-state))
)
