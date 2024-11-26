
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                               STATS / COMPARISONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;            January 2006 - September 2021           ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Compare files with puzzles in string form
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction puzzle-string-in-puzzle-file (?puzzle-string ?file ?file-length)
    (bind ?str-size (* ?*grid-size* ?*grid-size*))
    (bind ?puzzle-string (sub-string 1 ?str-size ?puzzle-string))
    (open ?file "file" "r")
    (bind ?res FALSE)
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?str (readline "file"))
        (if (eq 0 (str-compare ?puzzle-string (sub-string 1 ?str-size ?str))) then (close "file") (bind ?res TRUE) (return ?res))
    )
    (close "file")
    ?res
)


(deffunction puzzles-in-file1-not-in-file2 (?puzzle-file1 ?file-length1 ?puzzle-file2 ?file-length2)
    (bind ?res (create$))
    (open ?puzzle-file1 "puzzle-file1" "r")
    (bind ?i 0)
    (while (< ?i ?file-length1)
        (bind ?i (+ ?i 1))
        (bind ?str1 (readline "puzzle-file1"))
        (if (not (puzzle-string-in-puzzle-file ?str1 ?puzzle-file2 ?file-length2))
            then (bind ?res (create$ ?res ?i))
        )
    )
    (close "puzzle-file1")
    ?res
)
