
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                               STATS / PUZZLE FILTERS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;            January 2006 - December 2023            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; Extract puzzles that have a certain value

(deffunction extract-puzzles-with-value (?puzzles-file-in ?values-file ?file-len ?value ?puzzles-file-out)
    (bind ?puzzles-out-list (create$))
    (bind ?puzzle-value 0)
    (bind ?puzzle "")
    (open ?puzzles-file-in "puzzles-file-in" "r")
    (open ?values-file "values-file" "r")
    (open ?puzzles-file-out "puzzles-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        (bind ?puzzle-value (read "values-file"))
        (readline "values-file")
        (bind ?puzzle (readline "puzzles-file-in"))
        (if (eq ?puzzle-value ?value) then
            (bind ?puzzles-out-list (create$ ?puzzles-out-list ?i))
            (printout "puzzles-file-out" ?puzzle "  #" ?i crlf)
        )
    )
    (close "puzzles-file-out")
    (close "values-file")
    (close "puzzles-file-in")
    ?puzzles-out-list
)


;;; Extract puzzles that have a value equal to or above a given value

(deffunction extract-puzzles-with-value-greater (?puzzles-file-in ?values-file ?file-len ?value ?puzzles-file-out)
    (bind ?puzzles-out-list (create$))
    (bind ?puzzle-value 0)
    (bind ?puzzle "")
    (open ?puzzles-file-in "puzzles-file-in" "r")
    (open ?values-file "values-file" "r")
    (open ?puzzles-file-out "puzzles-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        (bind ?puzzle-value (read "values-file"))
        (readline "values-file")
        (bind ?puzzle (readline "puzzles-file-in"))
        (if (>= ?puzzle-value ?value) then
            (bind ?puzzles-out-list (create$ ?puzzles-out-list ?i))
            (printout "puzzles-file-out" ?puzzle "  #" ?i crlf)
        )
    )
    (close "puzzles-file-out")
    (close "values-file")
    (close "puzzles-file-in")
    ?puzzles-out-list
)
