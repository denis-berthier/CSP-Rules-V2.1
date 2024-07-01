
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                             GENERAL / DATA FILTERS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;              January 2006 - June 2024              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract puzzles that have a certain value for a variable X
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Extract puzzles that have a value for a variable X equal to a given value
;;; Full lines of the input file are copied

(deffunction extract-puzzles-with-X-value (?puzzles-file-in ?X-values-file ?file-len ?X-value ?puzzles-file-out)
    ;;; extract puzzles that have the fixed value ?X-value in ?X-values-file
    ;;; record them in ?puzzles-file-out
    (close)
    (bind ?puzzles-out-list (create$))
    (bind ?puzzle-value 0)
    (bind ?puzzle "")
    (open ?puzzles-file-in "puzzles-file-in" "r")
    (open ?X-values-file "values-file" "r")
    (open ?puzzles-file-out "puzzles-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        (printout t "#" ?i crlf)
        (bind ?puzzle-value (read "values-file"))
        (readline "values-file")
        (bind ?puzzle (readline "puzzles-file-in"))
        (if (eq ?puzzle-value ?X-value) then
            (bind ?puzzles-out-list (create$ ?puzzles-out-list ?i))
            (printout "puzzles-file-out" ?puzzle "  #" ?i crlf)
        )
    )
    (close "puzzles-file-out")
    (close "values-file")
    (close "puzzles-file-in")
    ?puzzles-out-list
)


;;; Extract puzzles that have a value for a variable X equal to or above a given value
;;; Full lines of the input file are copied

(deffunction extract-puzzles-with-X-value-greater (?puzzles-file-in ?X-values-file ?file-len ?X-value ?puzzles-file-out)
    ;;; extract puzzles that have a value >= fixed value ?X-value in ?X-values-file
    ;;; record them in ?puzzles-file-out
    (close)
    (bind ?puzzles-out-list (create$))
    (bind ?puzzle-value 0)
    (bind ?puzzle "")
    (open ?puzzles-file-in "puzzles-file-in" "r")
    (open ?X-values-file "values-file" "r")
    (open ?puzzles-file-out "puzzles-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        (printout t "#" ?i crlf)
        (bind ?puzzle-value (read "values-file"))
        (readline "values-file")
        (bind ?puzzle (readline "puzzles-file-in"))
        (if (>= ?puzzle-value ?X-value) then
            (bind ?puzzles-out-list (create$ ?puzzles-out-list ?i))
            (printout "puzzles-file-out" ?puzzle "  #" ?i crlf)
        )
    )
    (close "puzzles-file-out")
    (close "values-file")
    (close "puzzles-file-in")
    ?puzzles-out-list
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract data that have a certain value for a variable X.
;;; Full lines of the input data file are copied.
;;; Almost same functions  as for puzzles, but:
;;; - name adapted to a broader use and only data recorded (no list with their places in file)
;;; - only first element of line is copied
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction extract-data-with-X-value (?data-file-in ?X-values-file ?file-len ?X-value ?data-file-out)
    (close)
    (bind ?data-out-list (create$))
    (bind ?datum-value 0)
    (bind ?datum "")
    (open ?data-file-in "data-file-in" "r")
    (open ?X-values-file "X-values-file" "r")
    (open ?data-file-out "data-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        (printout t "#" ?i crlf)
        (bind ?X-file-value (read "X-values-file"))
        (printout t ?X-file-value crlf)
        (bind ?datum (read "data-file-in"))
        (readline "data-file-in")
        (if (eq ?X-file-value ?X-value) then
            (bind ?data-out-list (create$ ?data-out-list ?i))
            (printout "data-file-out" ?datum crlf)
        )
    )
    (close "data-file-out")
    (close "X-values-file")
    (close "data-file-in")
    ?data-out-list
)

(deffunction extract-data-with-X-value-greater (?data-file-in ?X-values-file ?file-len ?X-value ?data-file-out)
    ;;; extract data that have a value >= fixed value ?X-value in ?X-values-file
    ;;; record them in ?data-file-out
    (close)
    (bind ?datum-value 0)
    (bind ?datum "")
    (open ?data-file-in "data-file-in" "r")
    (open ?X-values-file "X-values-file" "r")
    (open ?data-file-out "data-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        (printout t "#" ?i crlf)
        (bind ?X-file-value (read "X-values-file"))
        (readline "X-values-file")
        (bind ?datum (read "data-file-in"))
        (readline "data-file-in")
        (if (>= ?X-file-value ?X-value) then
            (printout "data-file-out" ?datum crlf)
        )
    )
    (close "data-file-out")
    (close "X-values-file")
    (close "data-file-in")
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract members of a list for which a certain value for a variable X is fixed.
;;; The values are given in the X-file; its nth line is for the nth place in the list.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction extract-members-with-X-value (?list ?X-values-file ?file-len ?X-value)
    (close)
    (bind ?filtered-list (create$))
    (bind ?X-values-file-value 0)
    (open ?X-values-file "X-values-file" "r")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        (bind ?X-values-file-value (string-to-field (readline "X-values-file")))
        ;(readline "X-values-file")
        (printout t "#" ?i " " ?X-values-file-value crlf)
        (if (and (eq ?X-values-file-value ?X-value) (member$ ?i ?list)) then
            (bind ?filtered-list (create$ ?filtered-list ?i))
        )
    )
    (close "X-values-file")
    ?filtered-list
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract lines from a file, whose places are in a list
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction extract-lines-in-list (?file-in ?file-len ?list ?file-out)
    (close)
    (open ?file-in "file-in" "r")
    (open ?file-out "file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ;(printout t "#" ?i crlf)
        (bind ?file-in-data (readline "file-in"))
        (if (member$ ?i ?list) then (printout "file-out" ?file-in-data crlf))
    )
    (close "file-out")
    (close "file-in")
)

(deffunction extract-puzzles-in-list (?file-in ?file-len ?list ?file-out)
    (close)
    (open ?file-in "file-in" "r")
    (open ?file-out "file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ;(printout t "#" ?i crlf)
        (bind ?file-in-data (readline "file-in"))
        (if (member$ ?i ?list) then (printout "file-out" (sub-string 1 81 ?file-in-data) crlf))
    )
    (close "file-out")
    (close "file-in")
)

(deffunction extract-data-in-list (?file-in ?file-len ?list ?file-out)
    (close)
    (open ?file-in "file-in" "r")
    (open ?file-out "file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ;(printout t "#" ?i crlf)
        (bind ?file-in-data (read "file-in"))
        (readline "file-in")
        (if (member$ ?i ?list) then (printout "file-out" ?file-in-data crlf))
    )
    (close "file-out")
    (close "file-in")
)


