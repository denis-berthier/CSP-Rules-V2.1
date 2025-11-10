
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / COMPARE PUZZLES AND THEIR LISTS OR FILES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;         https://github.com/denis-berthier          ;;;
               ;;;            January 2006 - September 2025           ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;; EVERYWHERE IN THE EXPANSION KIT:
;;;  - NO-CLUE CELLS ARE REPRESENTED BY "."
;;;  - PUZZLES MUST HAVE EXACTLY 81 CHARACTERS

;;; Any puzzle will be an expansion of the empty puzzle

(defglobal ?*empty-puzzle* =
    "................................................................................."
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; A. BASIC PUZZLE COMPARISON FUNCTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; same-puzzle-entries, same-puzzles, puzzle-in-puzzle, puzzle-strictly-in-puzzle
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; more general but less efficient:
(deffunction same-puzzle-entries (?s1 ?s2)
    (or
        (eq ?s1 ?s2)
        (and (or (eq ?s1 ".") (eq ?s2 "0")) (or (eq ?s2 ".") (eq ?s2 "0")))
    )
)

(deffunction same-puzzles (?puz1 ?puz2)
    (bind ?res TRUE)
    (bind ?s1 ".")
    (bind ?s2 ".")
    (loop-for-count (?i 1 81)
        (bind ?s1 (sub-string ?i ?i ?puz1))
        (bind ?s2 (sub-string ?i ?i ?puz2))
        (if (not (same-puzzle-entries ?s1 ?s2))
            then (bind ?res FALSE) (return ?res)
        )
    )
    ?res
)

;;; Can be redefined as follows for faster computations,
;;; if the string representation is fixed to "." and length to 81

(deffunction same-puzzle-entries (?s1 ?s2)
    (eq ?s1 ?s2)
)
(deffunction same-puzzles (?puz1 ?puz2)
    (string= ?puz1 ?puz2)
)


(deffunction puzzle-entry-in-puzzle-entry (?s1 ?s2)
    (or (eq ?s1 ".") (eq ?s1 ?s2))
)

(deffunction puzzle-in-puzzle (?puz1 ?puz2)
    ;;; this is a purely lexical comparison, implying no notion of validity of the puzzles
    ;;; ?puz1 and ?puz2 must be exactly 81-character long
    (bind ?res TRUE)
    (bind ?s1 ".")
    (loop-for-count (?i 1 81)
        (bind ?s1 (sub-string ?i ?i ?puz1))
        (if (and (neq ?s1 ".") (neq ?s1 (sub-string ?i ?i ?puz2))) then (bind ?res FALSE) (return ?res))
    )
    ?res
)

(deffunction puzzle-strictly-in-puzzle (?puz1 ?puz2)
    ;;; this is a purely lexical comparison, implying no notion of validity of the puzzles
    ;;; ?puz1 and ?puz2 must be exactly 81-character long
    (bind ?res TRUE)
    (bind ?equal TRUE)
    (bind ?s1 ".")
    (bind ?s2 ".")
    (loop-for-count (?i 1 81)
        (bind ?s1 (sub-string ?i ?i ?puz1))
        (bind ?s2 (sub-string ?i ?i ?puz2))
        (if (neq ?s1 ?s2) then
            (if (neq ?s1 ".")
                then (bind ?res FALSE) (return ?res) ; not puzzle-in-puzzle
                else (if (neq ?s2 ".") then (bind ?equal FALSE)) ; not equal puzzles
            )
        )
    )
    (and ?res (not ?equal))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; puzzle-solution-number
;;; These functions are not used anywhere else in the package
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; For a puzzle, find its solution number in a file of solution grids
;;; (which will generally be the whole collection)
;;; not used

(deffunction puzzle-solution-number (?puz ?sols-file ?sols-length)
    (bind ?nb 0)
    (bind ?sol "")
    (open ?sols-file "puzzle-solution-nb-sols-file" "r")
    (loop-for-count (?i 1 ?sols-length)
        (bind ?sol (readline "puzzle-solution-nb-sols-file"))
        (if (puzzle-in-puzzle ?puz ?sol)
            then (bind ?nb ?i) (close "puzzle-solution-nb-sols-file") (return ?nb)
        )
    )
    (close "puzzle-solution-nb-sols-file")
    (if (eq ?nb 0) then (printout t "ERROR : puzzle has no solution in file" crlf))
    ?nb
)


;;; For a file of puzzles, record their solution numbers
(deffunction record-puzzles-file-solution-numbers (?puzzles-file ?sols-file ?numbers-file)
    (if (file-exists-and-nonempty ?puzzles-file) then
        (bind ?puzzles-len (length$ ?puzzles-file))
        (if (file-exists ?sols-file) then
            (bind ?sols-len (length$ ?sols-file))
            (open ?numbers-file "record-puzzles-file-solution-numbers-numbers-file" "w")
            (open ?puzzles-file "record-puzzles-file-solution-numbers-puzzles-file" "r")
            (loop-for-count (?i 1 ?puzzles-len)
                (bind ?puz (readline "record-puzzles-file-solution-numbers-puzzles-file"))
                (printout "record-puzzles-file-solution-numbers-numbers-file"
                    (puzzle-solution-number ?puz ?sols-file ?sols-len) crlf
                )
            )
            (close "record-puzzles-file-solution-numbers-puzzles-file")
            (close "record-puzzles-file-solution-numbers-numbers-file")
        )
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. COMPARE PUZZLES IN LISTS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; puzzle-in-list, puzzle-not-in-list,
;;; puzzle-in-some-puzzle-of-list, puzzle-not-in-any-puzzle-of-list
;;; puzzles-of-list1-in-list2, puzzles-of-list1-not-in-list2
;;; some-puzzle-of-list1-in-list2, some-puzzle-of-list1-not-in-list2
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction puzzle-in-list (?puzzle ?list)
    (bind ?ans FALSE)
    (foreach ?puz2 ?list
        (if (same-puzzles ?puzzle ?puz2) then (bind ?ans TRUE) (return ?ans))
    )
    ?ans
)

(deffunction puzzle-not-in-list (?puzzle ?list)
    (bind ?ans TRUE)
    (foreach ?puz2 ?list
        (if (same-puzzles ?puzzle ?puz2) then (bind ?ans FALSE) (return ?ans))
    )
    ?ans
)


(deffunction puzzle-in-some-puzzle-of-list (?puzzle ?list)
    (bind ?ans FALSE)
    (foreach ?puz2 ?list
        (if (puzzle-in-puzzle ?puzzle ?puz2) then (bind ?ans TRUE) (return ?ans))
    )
    ?ans
)

(deffunction puzzle-not-in-any-puzzle-of-list (?puzzle ?list)
    (bind ?ans TRUE)
    (foreach ?puz2 ?list
        (if (puzzle-in-puzzle ?puzzle ?puz2) then (bind ?ans FALSE) (return ?ans))
    )
    ?ans
)



(deffunction puzzles-of-list1-in-list2 (?list1 ?list2)
    ;;; preserves the order of puzzles in list1
    (bind ?res (create$))
    (foreach ?puz1 ?list1
        (if (puzzle-in-list ?puz1 ?list2) then (bind ?res (create$ ?res ?puz1)))
    )
    ?res
)

(deffunction puzzles-of-list1-not-in-list2 (?list1 ?list2)
    ;;; preserves the order of puzzles in list1
    (bind ?res (create$))
    (foreach ?puz1 ?list1
        (if (puzzle-not-in-list ?puz1 ?list2) then (bind ?res (create$ ?res ?puz1)))
    )
    ?res
)


(deffunction some-puzzle-of-list1-in-list2 (?list1 ?list2)
    (bind ?ans FALSE)
    (foreach ?puz1 ?list1
        (if (puzzle-in-list ?puz1 ?list2) then (bind ?ans TRUE) (return ?ans))
    )
    ?ans
)

(deffunction some-puzzle-of-list1-not-in-list2 (?list1 ?list2)
    (bind ?ans FALSE)
    (foreach ?puz ?list1
        (if (puzzle-not-in-list ?puz ?list2) then (bind ?ans TRUE) (return ?ans)))
    )
    ?ans
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; puzzle-strictly-in-some-puzzle-of-list, puzzle-not-strictly-in-any-puzzle-of-list
;;; puzzle-strict-expand-of-some-puzzle-in-list, puzzle-strict-expand-of-no-puzzle-in-list
;;; puzzles-of-list-with-expansion-in-puzzle, puzzles-of-list-with-strict-expansion-in-puzzle
;;; puzzles-of-list1-with-some-expansion-in-list2, puzzles-of-list1-with-no-expansion-in-list2
;;; puzzles-of-list1-with-some-strict-expansion-in-list2, puzzles-of-list1-with-no-strict-expansion-in-list2
;;; strict-expands-in-list1-of-some-puzzle-in-list2, puzzles-of-list1-that-are-not-strict-expands-of-any-puzzle-in-list2
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction puzzle-strictly-in-some-puzzle-of-list (?puzzle ?list)
    (bind ?ans FALSE)
    (foreach ?puz2 ?list
        (if (puzzle-strictly-in-puzzle ?puzzle ?puz2) then (bind ?ans TRUE) (return ?ans))
    )
    ?ans
)

(deffunction puzzle-not-strictly-in-any-puzzle-of-list (?puzzle ?list)
    (bind ?ans TRUE)
    (foreach ?puz2 ?list
        (if (puzzle-strictly-in-puzzle ?puzzle ?puz2) then (bind ?ans FALSE) (return ?ans))
    )
    ?ans
)

(deffunction puzzle-strict-expand-of-some-puzzle-in-list (?puzzle ?list)
    (bind ?ans FALSE)
    (foreach ?puz ?list
        (if (puzzle-strictly-in-puzzle ?puz ?puzzle) then (bind ?ans TRUE) (return ?ans))
    )
    ?ans
)

(deffunction puzzle-strict-expand-of-no-puzzle-in-list (?puzzle ?list)
    (bind ?ans TRUE)
    (foreach ?puz ?list
        (if (puzzle-strictly-in-puzzle ?puz ?puzzle) then (bind ?ans FALSE) (return ?ans))
    )
    ?ans
)



(deffunction puzzles-of-list-with-expansion-in-puzzle (?list ?puzzle)
    ;;; preserves the order of puzzles in list
    (bind ?res (create$))
    (foreach ?puz1 ?list
        (if (puzzle-in-puzzle ?puz1 ?puzzle) then (bind ?res (create$ ?res ?puz1)))
    )
    ?res
)

(deffunction puzzles-of-list-with-strict-expansion-in-puzzle (?list ?puzzle)
    ;;; preserves the order of puzzles in list
    (bind ?res (create$))
    (foreach ?puz ?list
        (if (puzzle-strictly-in-puzzle ?puz ?puzzle) then (bind ?res (create$ ?res ?puz)))
    )
    ?res
)



(deffunction puzzles-of-list1-with-some-expansion-in-list2 (?list1 ?list2)
    ;;; preserves the order of puzzles in list1
    (bind ?res (create$))
    (foreach ?puz1 ?list1
        (if (puzzle-in-some-puzzle-of-list ?puz1 ?list2) then (bind ?res (create$ ?res ?puz1)))
    )
    ?res
)

(deffunction puzzles-of-list1-with-no-expansion-in-list2 (?list1 ?list2)
    ;;; preserves the order of puzzles in list1
    (bind ?res (create$))
    (foreach ?puz1 ?list1
        (if (puzzle-not-in-any-puzzle-of-list ?puz1 ?list2)  then (bind ?res (create$ ?res ?puz1)))
    )
    ?res
)


(deffunction puzzles-of-list1-with-some-strict-expansion-in-list2 (?list1 ?list2)
    ;;; preserves the order of puzzles in list1
    (bind ?res (create$))
    (foreach ?puz1 ?list1
        (if (puzzle-strictly-in-some-puzzle-of-list ?puz1 ?list2) then (bind ?res (create$ ?res ?puz1)))
    )
    ?res
)

(deffunction puzzles-of-list1-with-no-strict-expansion-in-list2 (?list1 ?list2)
    ;;; preserves the order of puzzles in list1
    (bind ?res (create$))
    (foreach ?puz1 ?list1
        (if (puzzle-not-strictly-in-any-puzzle-of-list ?puz1 ?list2)  then (bind ?res (create$ ?res ?puz1)))
    )
    ?res
)



(deffunction strict-expands-in-list1-of-some-puzzle-in-list2 (?list1 ?list2)
    ;;; preserves the order of puzzles in list1
    (bind ?res (create$))
    (foreach ?puz1 ?list1
        (if (puzzle-strict-expand-of-some-puzzle-in-list ?puz1 ?list2)  then (bind ?res (create$ ?res ?puz1)))
    )
    ?res
)

(deffunction puzzles-of-list1-that-are-not-strict-expands-of-any-puzzle-in-list2 (?list1 ?list2)
    ;;; preserves the order of puzzles in list1
    (bind ?res (create$))
    (foreach ?puz1 ?list1
        (if (puzzle-strict-expand-of-no-puzzle-in-list ?puz1 ?list2)  then (bind ?res (create$ ?res ?puz1)))
    )
    ?res
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; C. COMPARE PUZZLES IN FILES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; puzzle-in-file, puzzle-not-in-file,
;;; puzzle-in-some-puzzle-in-file, puzzle-not-in-any-puzzle-in-file
;;; puzzles-of-file1-in-file2, puzzles-of-file1-not-in-file2
;;; some-puzzle-of-list-in-file, some-puzzle-of-list-not-in-file
;;; puzzles-of-list-in-file, puzzles-of-list-not-in-file
;;; puzzles-of-list-with-expansion-in-file, puzzles-of-list-with-no-expansion-in-file
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction puzzle-in-file (?puz ?file)
    (bind ?ans FALSE)
    (if (file-exists-and-nonempty ?file) then
        (open ?file "puzzle-in-file-file" "r")
        (bind ?puz2 (readline "puzzle-in-file-file"))
        (while (neq ?puz2 EOF)
            (if (same-puzzles ?puz ?puz2) then
                (bind ?ans TRUE) (close "puzzle-in-file-file") (return ?ans)
            )
            (bind ?puz2 (readline "puzzle-in-file-file"))
       )
        (close "puzzle-in-file-file")
    )
    ?ans
)

(deffunction puzzle-not-in-file (?puz ?file)
    (bind ?ans TRUE)
    (if (file-exists-and-nonempty ?file) then
        (open ?file "puzzle-not-in-file-file" "r")
        (bind ?puz2 (readline "puzzle-not-in-file-file"))
        (while (neq ?puz2 EOF)
            (if (same-puzzles ?puz ?puz2) then
                (bind ?ans FALSE) (close "puzzle-not-in-file-file") (return ?ans)
            )
            (bind ?puz2 (readline "puzzle-not-in-file-file"))
       )
        (close "puzzle-not-in-file-file")
    )
    ?ans
)


(deffunction puzzle-in-some-puzzle-in-file (?puz ?file)
    (bind ?ans FALSE)
    (if (file-exists-and-nonempty ?file) then
        (open ?file "puzzle-in-some-puzzle-in-file-file" "r")
        (bind ?puz2 (readline "puzzle-in-some-puzzle-in-file-file"))
        (while (neq ?puz2 EOF)
            (if (puzzle-in-puzzle ?puz ?puz2) then
                (bind ?ans TRUE) (close "puzzle-in-some-puzzle-in-file-file") (return ?ans)
            )
            (bind ?puz2 (readline "puzzle-in-some-puzzle-in-file-file"))
       )
        (close "puzzle-in-some-puzzle-in-file-file")
    )
    ?ans
)

(deffunction puzzle-not-in-any-puzzle-in-file (?puz ?file)
    (bind ?ans TRUE)
    (if (file-exists-and-nonempty ?file) then
        (open ?file "puzzle-not-in-any-puzzle-in-file-file" "r")
        (bind ?puz2 (readline "puzzle-not-in-any-puzzle-in-file-file"))
        (while (neq ?puz2 EOF)
            (if (puzzle-in-puzzle ?puz ?puz2) then
                (bind ?ans FALSE) (close "puzzle-not-in-any-puzzle-in-file-file") (return ?ans)
            )
            (bind ?puz2 (readline "puzzle-not-in-any-puzzle-in-file-file"))
        )
        (close "puzzle-not-in-any-puzzle-in-file-file")
    )
    ?ans
)



(deffunction puzzles-of-file1-in-file2 (?file1 ?file2)
    (bind ?res (create$))
    (if (file-exists-and-nonempty ?file2) then
        (if (file-exists-and-nonempty ?file1)  then
            (bind ?len1 (file-length ?file1))
            (bind ?puz1 "")
            (open ?file1 "puzzles-of-file1-in-file2-file1" "r")
            (loop-for-count ?len1
                (bind ?puz1 (readline "puzzles-of-file1-in-file2-file1"))
                (if (puzzle-in-file ?puz1 ?file2) then (bind ?res (create$ ?res ?puz1)))
            )
            (close "puzzles-of-file1-in-file2-file1")
        )
    )
    ?res
)


(deffunction puzzles-of-file1-not-in-file2 (?file1 ?file2)
    (bind ?res (create$))
    (if (file-exists-and-nonempty ?file1) then
        (bind ?len1 (file-length ?file1))
        (bind ?puz1 "")
        (open ?file1 "puzzles-of-file1-not-in-file2-file1" "r")
        (if (nonexistent-or-empty-file ?file2)
            then
            (loop-for-count (?i 1 ?len1)
                (bind ?puz1 (readline "puzzles-of-file1-not-in-file2-file1"))
                (bind ?res (create$ ?res ?puz1))
            )

            else
            (loop-for-count (?i 1 ?len1)
                (bind ?puz1 (readline "puzzles-of-file1-not-in-file2-file1"))
                (if (puzzle-not-in-file ?puz1 ?file2) then (bind ?res (create$ ?res ?puz1)))
            )
        )
        (close "puzzles-of-file1-not-in-file2-file1")
    )
    ?res
)


(deffunction some-puzzle-of-list-in-file (?list ?file)
    (bind ?res FALSE)
    (if (file-exists-and-nonempty ?file) then
        (foreach ?puz ?list
            (if (puzzle-in-file ?puz ?file) then (bind ?res TRUE) (return ?res))
        )
    )
    ?res
)

(deffunction some-puzzle-of-list-not-in-file (?list ?file)
    (bind ?res FALSE)
    (if (> (length$ ?list) 0) then
        (if (file-exists-and-nonempty ?file) then
            (foreach ?puz ?list
                (if (puzzle-not-in-file ?puz ?file) then (bind ?res TRUE) (return ?res))
            )
        )
    )
    ?res
)


(deffunction puzzles-of-list-in-file (?list ?file)
    (bind ?res (create$))
    (if (file-exists-and-nonempty ?file) then
        (foreach ?puz ?list
            (if (puzzle-in-file ?puz ?file) then (bind ?res (create$ ?res ?puz)))
        )
    )
    ?res
)

(deffunction puzzles-of-list-not-in-file (?list ?file)
    (bind ?res (create$))
    (if (nonexistent-or-empty-file ?file)
        then (bind ?res ?list)
        else
        (foreach ?puz ?list
            (if (puzzle-not-in-file ?puz ?file) then (bind ?res (create$ ?res ?puz)))
        )
    )
    ?res
)



(deffunction puzzles-of-list-with-expansion-in-file (?list ?file)
    (bind ?res (create$))
    (if (file-exists-and-nonempty ?file) then
        (foreach ?puz ?list
            (if (puzzle-in-some-puzzle-in-file ?puz ?file)  then
                (bind ?res (create$ ?res ?puz))
            )
        )
    )
    ?res
)


(deffunction puzzles-of-list-with-no-expansion-in-file (?list ?file)
    (bind ?res (create$))
    (if (nonexistent-or-empty-file ?file)
        then (bind ?res ?list)
        else
        (foreach ?puz ?list
            (if (puzzle-not-in-any-puzzle-in-file ?puz ?file)  then
                (bind ?res (create$ ?res ?puz))
            )
        )
    )
    ?res
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; puzzle-strictly-in-some-puzzle-in-file
;;; puzzles-of-list-with-strict-expansion-in-file, puzzles-of-list-with-no-strict-expansion-in-file
;;; puzzles-of-file-with-expansion-in-puzzle, puzzles-of-file-with-strict-expansion-in-puzzle
;;; puzzles-of-file1-with-some-expansion-in-file2, puzzles-of-file1-with-no-expansion-in-file2
;;; puzzles-of-file1-with-some-strict-expansion-in-file2, puzzles-of-file1-with-no-strict-expansion-in-file2
;;; strict-expands-in-file1-of-some-puzzle-in-file2, puzzles-of-file1-that-are-not-strict-expands-of-any-puzzle-in-file2
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction puzzle-strictly-in-some-puzzle-in-file (?puz ?file)
    (bind ?ans FALSE)
    (if (file-exists-and-nonempty ?file) then
        (open ?file "puzzle-strictly-in-some-puzzle-in-file-file" "r")
        (bind ?puz2 (readline "puzzle-strictly-in-some-puzzle-in-file-file"))
        (while (neq ?puz2 EOF)
            (if (puzzle-strictly-in-puzzle ?puz ?puz2) then
                (bind ?ans TRUE)
                (close "puzzle-strictly-in-some-puzzle-in-file-file")
                (return ?ans)
            )
            (bind ?puz2 (readline "puzzle-strictly-in-some-puzzle-in-file-file"))
       )
        (close "puzzle-strictly-in-some-puzzle-in-file-file")
    )
    ?ans
)


(deffunction puzzles-of-list-with-strict-expansion-in-file (?list ?file)
    (bind ?res (create$))
    (if (file-exists-and-nonempty ?file) then
        (foreach ?puz ?list
            (if (puzzle-strictly-in-some-puzzle-in-file ?puz ?file)  then
                (bind ?res (create$ ?res ?puz))
            )
        )
    )
    ?res
)


(deffunction puzzles-of-list-with-no-strict-expansion-in-file (?list ?file)
    (bind ?res (create$))
    (if (nonexistent-or-empty-file ?file)
        then (bind ?res ?list)
        else
        (foreach ?puz ?list
            (if (not (puzzle-strictly-in-some-puzzle-in-file ?puz ?file))  then
                (bind ?res (create$ ?res ?puz))
            )
        )
    )
    ?res
)


(deffunction puzzles-of-file-with-expansion-in-puzzle (?file ?puzzle)
    (bind ?res (create$))
    (if (file-exists-and-nonempty ?file) then
        (bind ?len (file-length ?file))
        (open ?file "puzzles-of-file-with-expansion-in-puzzle-file" "r")
        (loop-for-count (?i 1 ?len)
            (bind ?puz (readline "puzzles-of-file-with-expansion-in-puzzle-file"))
            (if (puzzle-in-puzzle ?puz ?puzzle) then (bind ?res (create$ ?res ?puz)))
        )
        (close "puzzles-of-file-with-expansion-in-puzzle-file")
    )
    ?res
)

(deffunction puzzles-of-file-with-strict-expansion-in-puzzle (?file ?puzzle)
    (bind ?res (create$))
    (if (file-exists-and-nonempty ?file) then
        (bind ?len (file-length ?file))
        (open ?file "puzzles-of-file-with-strict-expansion-in-puzzle-file" "r")
        (loop-for-count (?i 1 ?len)
            (bind ?puz (readline "puzzles-of-file-with-strict-expansion-in-puzzle-file"))
            (if (puzzle-strictly-in-puzzle ?puz ?puzzle) then (bind ?res (create$ ?res ?puz)))
        )
        (close "puzzles-of-file-with-strict-expansion-in-puzzle-file")
    )
    ?res
)



(deffunction puzzles-of-file1-with-some-expansion-in-file2 (?file1 ?file2 ?file-out)
    (if (file-exists-and-nonempty ?file1) then
        (bind ?len1 (file-length ?file1))
        (open ?file-out "puzzles-of-file1-with-some-expansion-in-file2-file-out" "w")
        (open ?file1 "puzzles-of-file1-with-some-expansion-in-file2-file1" "r")
        (loop-for-count (?i 1 ?len1)
            (bind ?puz1 (readline "puzzles-of-file1-with-some-expansion-in-file2-file1"))
            (if (puzzle-in-some-puzzle-in-file ?puz1 ?file2) then
                (printout "puzzles-of-file1-with-some-expansion-in-file2-file-out" ?puz1 crlf)
            )
        )
        (close "puzzles-of-file1-with-some-expansion-in-file2-file1")
        (close "puzzles-of-file1-with-some-expansion-in-file2-file-out")
    )
)

(deffunction puzzles-of-file1-with-no-expansion-in-file2 (?file1 ?file2 ?file-out)
    (if (file-exists-and-nonempty ?file1) then
        (bind ?len1 (file-length ?file1))
        (bind ?puz1 "")
        (open ?file1 "puzzles-of-file1-with-no-expansion-in-file2-file1" "r")
        (if (nonexistent-or-empty-file ?file2)
            then (OS-copy-file ?file1 ?file-out)
            else
            (open ?file-out "puzzles-of-file1-with-no-expansion-in-file2-file-out" "w")
            (loop-for-count (?i 1 ?len1)
                (bind ?puz1 (readline "puzzles-of-file1-with-no-expansion-in-file2-file1"))
                (if (puzzle-not-in-any-puzzle-in-file ?puz1 ?file2) then
                    (printout "puzzles-of-file1-with-no-expansion-in-file2-file-out" ?puz1 crlf)
                )
            )
            (close "puzzles-of-file1-with-no-expansion-in-file2-file-out")
        )
        (close "puzzles-of-file1-with-no-expansion-in-file2-file1")
    )
)



(deffunction puzzles-of-file1-with-some-strict-expansion-in-file2 (?file1 ?file2 ?file-out)
    (if (file-exists-and-nonempty ?file1) then
        (bind ?len1 (file-length ?file1))
        (open ?file-out "puzzles-of-file1-with-some-strict-expansion-in-file2-file-out" "w")
        (open ?file1 "puzzles-of-file1-with-some-strict-expansion-in-file2-file1" "r")
        (loop-for-count (?i 1 ?len1)
            (bind ?puz1 (readline "puzzles-of-file1-with-some-strict-expansion-in-file2-file1"))
            (if (puzzle-strictly-in-some-puzzle-in-file ?puz1 ?file2) then
                (printout "puzzles-of-file1-with-some-strict-expansion-in-file2-file-out" ?puz1 crlf)
            )
        )
        (close "puzzles-of-file1-with-some-strict-expansion-in-file2-file1")
        (close "puzzles-of-file1-with-some-strict-expansion-in-file2-file-out")
    )
)

(deffunction puzzles-of-file1-with-no-strict-expansion-in-file2 (?file1 ?file2 ?file-out)
    (if (file-exists-and-nonempty ?file1) then
        (bind ?len1 (file-length ?file1))
        (bind ?puz1 "")
        (open ?file1 "puzzles-of-file1-with-no-strict-expansion-in-file2-file1" "r")
        (if (nonexistent-or-empty-file ?file2)
            then (OS-copy-file ?file1 ?file-out)
            else
            (open ?file-out "puzzles-of-file1-with-no-strict-expansion-in-file2-file-out" "r")
            (loop-for-count (?i 1 ?len1)
                (bind ?puz1 (readline "puzzles-of-file1-with-no-strict-expansion-in-file2-file1"))
                (if (not (puzzle-strictly-in-some-puzzle-in-file ?puz1 ?file2)) then
                    (printout "puzzles-of-file1-with-no-strict-expansion-in-file2-file-out" ?puz1 crlf)
                )
            )
            (close "puzzles-of-file1-with-no-strict-expansion-in-file2-file-out")
        )
        (close "puzzles-of-file1-with-no-strict-expansion-in-file2-file1")
    )
)



;;; used for terminal puzzles
(deffunction strict-expands-in-file1-of-some-puzzle-in-file2 (?file1 ?file2 ?file-out)
    (if (file-exists-and-nonempty ?file1) then
        (bind ?len1 (file-length ?file1))
        (open ?file-out "strict-expands-in-file1-of-some-puzzle-in-file2-file-out" "w")
        (open ?file1 "strict-expands-in-file1-of-some-puzzle-in-file2-file1" "r")
        (loop-for-count (?i 1 ?len1)
            (bind ?puz1 (readline "strict-expands-in-file1-of-some-puzzle-in-file2-file1"))
            (if (puzzle-in-some-puzzle-in-file ?puz1 ?file2) then
                (printout "strict-expands-in-file1-of-some-puzzle-in-file2-file-out" ?puz1 crlf)
            )
        )
        (close "strict-expands-in-file1-of-some-puzzle-in-file2-file1")
        (close "strict-expands-in-file1-of-some-puzzle-in-file2-file-out")
    )
)
)

;;; not used; to be re-written with no intermediate lists
(deffunction puzzles-of-file1-that-are-not-strict-expands-of-any-puzzle-in-file2 (?file1 ?file2  ?file-out)
    (element-list-to-element-file
        (puzzles-of-list1-that-are-not-strict-expands-of-any-puzzle-in-list2
            (element-file-to-element-list ?file1)
            (element-file-to-element-list ?file2)
        )
        ?file-out
    )
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; D. BASIC EXPANSION FUNCTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; BRT-expands, 1-expands and (1+BRT)-expands of a puzzle
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction BRT-expand-of-puzzle (?puzzle-string)
    ;;; the only rules supposed to be loaded are those of BRT; this is not pre-checked
    (mute-print-options)
    (solve ?puzzle-string)
    (restore-print-options)
    (compute-partial-solution-string)
)

(deffunction BRT-expands-of-list (?list)
    (bind ?list-BRT (create$))
    (foreach ?puz ?list
        (bind ?list-BRT (create$ ?list-BRT (BRT-expand-of-puzzle ?puz)))
    )
    ?list-BRT
)

(deffunction unique-BRT-expands-of-list (?list)
    (bind ?list-BRT (create$))
    (foreach ?puz ?list
        (bind ?BRT-exp (BRT-expand-of-puzzle ?puz))
        (if (puzzle-not-in-list ?BRT-exp ?list-BRT) then
            (bind ?list-BRT (create$ ?list-BRT ?BRT-exp))
        )
    )
    ?list-BRT
)



(deffunction sudoku-strings-minus (?string2 ?string1)
    ;;; Only for 9x9 puzzles
    ;;; ?string1 and ?string2 are supposed to be sudoku-strings, with ?string2 an expansion of ?string1
    ;;; (For efficiency reasons, this condition is not checked.)
    ;;; They are supposed to have the same "." or "0" for no clue.
    ;;; Typically, ?string2 will be a solution of ?string1
    (bind ?minus "")
    (loop-for-count (?i 1 81)
        (bind ?nth1 (sub-string ?i ?i ?string1))
        (bind ?nth2 (sub-string ?i ?i ?string2))
        (if (eq ?nth1 ?nth2)
            then (bind ?minus (str-cat ?minus "."))
            else (bind ?minus (str-cat ?minus ?nth2))
        )
    )
    ?minus
)


(deffunction sudoku-strings-plus (?string1 ?string2)
    ;;; Only for 9x9 puzzles
    ;;; ?string1 and ?string2 are supposed to be compatible sudoku-strings
    ;;; (For efficiency reasons, this condition is not checked.)
    ;;; All the non-zero elements of ?string2 are added to ?string1
    (bind ?plus "")
    (loop-for-count (?i 1 81)
        (bind ?nth1 (sub-string ?i ?i ?string1))
        (if (neq ?nth1 ".")
            then (bind ?plus (str-cat ?plus ?nth1))
            else (bind ?plus (str-cat ?plus (sub-string ?i ?i ?string2)))
        )
    )
    ?plus
)


(deffunction jth-1-expand-puzzle (?puzzle ?addable-clues ?j)
    ;;; should be called only for values of j for which the addable clue is not "." or "0"
    ;;; this condition is not  checked
    (str-cat
        (sub-string 1 (- ?j 1) ?puzzle)
        (sub-string ?j ?j ?addable-clues)
        (sub-string (+ ?j 1) 81 ?puzzle)
    )
)


(deffunction list-1-expands-of-puzzle-in-puzzle (?puzzle ?super-puzzle)
    ;;; ?puzzle is supposed to be included in ?super-puzzle.
    ;;; ?super-puzzle is supposed to be included in the solution.
    ;;; For efficiency reasons, these conditions are not pre-checked.
    (bind ?list (create$))
    (bind ?addable-clues (sudoku-strings-minus ?super-puzzle ?puzzle))
    (loop-for-count (?j 1 81)
        (bind ?jth-add (sub-string ?j ?j ?addable-clues))
        (if (neq ?jth-add ".") then
            (bind ?list
                (create$
                    ?list
                    (jth-1-expand-puzzle ?puzzle ?addable-clues ?j)
                )
            )
        )
    )
    ?list
)


(deffunction list-1-expands-of-list-of-puzzles-in-puzzle (?list-of-puzzles ?super-puzzle)
    ;;; all the puzzles in ?list-of-puzzles is supposed to be included in ?super-puzzle.
    ;;; ?super-puzzle is supposed to be included in the solution.
    ;;; For efficiency reasons, these conditions are not pre-checked.
    (bind ?list (create$))
    (foreach ?puz ?list-of-puzzles
        (bind ?list (create$ ?list (list-1-expands-of-puzzle-in-puzzle ?puz ?super-puzzle)))
    )
    ?list
)


;;; The addable-clues can also be directly given instead of a super-puzzle
(deffunction list-1-expands-of-puzzle-with-addable-clues (?puzzle ?addable-clues)
    ;;; ?addable-clues are supposed to be included in the solution.
    ;;; (For efficiency reasons, this condition is not checked.)
    ;;; if this is not the case, the result is empty
    (bind ?list (create$))
    (loop-for-count (?j 1 81)
        (bind ?jth-add (sub-string ?j ?j ?addable-clues))
        (if (neq ?jth-add ".") then
            (bind ?list
                (create$
                    ?list
                    (jth-1-expand-puzzle ?puzzle ?addable-clues ?j)
                )
            )
        )
    )
    ?list
)

;;; The addable-clues can also be defined from a list of compatible expansions
(deffunction addable-clues-from-list-of-puzzles (?puzzle $?puzzle-list)
    (bind ?addable-clues ?*empty-puzzle*)
    (foreach ?puz ?puzzle-list
        (bind ?addable-clues (sudoku-strings-plus ?addable-clues (sudoku-strings-minus ?puz ?puzzle)))
    )
    ?addable-clues
)

;;; The addable-clues can also be defined from a file of compatible expansions
(deffunction addable-clues-from-file-of-puzzles (?puzzle ?puzzle-file)
    (bind ?addable-clues ?*empty-puzzle*)
    (if (file-exists-and-nonempty ?puzzle-file) then
        (open ?puzzle-file "addable-clues-from-file-of-puzzles-puzzle-file" "r")
        (bind ?puz (readline "addable-clues-from-file-of-puzzles-puzzle-file"))
        (while (neq ?puz EOF)
            (bind ?addable-clues (sudoku-strings-plus ?addable-clues (sudoku-strings-minus ?puz ?puzzle)))
            (bind ?puz (readline "addable-clues-from-file-of-puzzles-puzzle-file"))
        )
    )
    ?addable-clues
)



;;; one can also require that all the 1-expands of a puzzle or a list of puzzles be in some file
;;; used for computing the number of expansion steps out of T&E(d)

(deffunction list-1-expands-of-puzzle-in-super-puzzle--in-file (?puzzle ?super-puzzle ?file)
    ;;; ?puzzle is supposed to be included in ?super-puzzle.
    ;;; ?super-puzzle is supposed to be included in the solution.
    ;;; For efficiency reasons, these conditions are not pre-checked.
    ;;; If some 1-expand of the puzzle is not in ?file, the result is ()
    (bind ?list (create$))
    (bind ?addable-clues (sudoku-strings-minus ?super-puzzle ?puzzle))
    (bind ?all-1-expands-in-file TRUE)
    (bind ?j 0)
    (while (and (< ?j 81) ?all-1-expands-in-file)
        (bind ?j (+ ?j 1))
        (bind ?jth-add (sub-string ?j ?j ?addable-clues))
        (if (neq ?jth-add ".") then
            (bind ?jth-1-expand (jth-1-expand-puzzle ?puzzle ?addable-clues ?j))
            (if (puzzle-in-file ?jth-1-expand ?file)
                then (bind ?list (create$ ?list ?jth-1-expand))
                else (bind ?all-1-expands-in-file FALSE) (bind ?list (create$))
            )
        )
    )
    ?list
)


(deffunction list-1-expands-of-puzzle-list-in-super-puzzle--in-file (?list-of-puzzles ?super-puzzle ?file)
    ;;; all the puzzles in ?list-of-puzzles are supposed to be included in ?super-puzzle.
    ;;; ?super-puzzle is supposed to be included in the solution.
    ;;; For efficiency reasons, these conditions are not pre-checked.
    ;;; If some 1-expand of some of the puzzles in ?list-of-puzzles is not in ?file, the result is ()
    (bind ?list (create$))
    (bind ?all-1-expands-in-file TRUE)
    (bind ?len (length$ ?list-of-puzzles))
    (bind ?j 0)
    (while (and (< ?j ?len) ?all-1-expands-in-file)
        (bind ?j (+ ?j 1))
        (bind ?puz (nth$ ?j ?list-of-puzzles))
        (bind ?puz-list (list-1-expands-of-puzzle-in-super-puzzle--in-file ?puz ?super-puzzle ?file))
        (if (neq (length$ ?puz-list) 0)
            then (bind ?list (create$ ?list ?puz-list))
            else (bind ?all-1-expands-in-file FALSE) (bind ?list (create$))
        )
    )
    ?list
)





;;; not used:
(deffunction record-1-expand-puzzles-n-grids-after-first-p-from-text-file (?puzzles-file ?solns-file ?p ?n ?expands-file)
    ;;; ?solns-file is supposed to contain the solutions of ?puzzles-file; this is not pre-checked
    (close "puzzles-file-symb")
    (close "solns-file-symb")
    (close "expands-file-symb")
    (open ?puzzles-file "puzzles-file-symb" "r")
    (open ?solns-file "solns-file-symb" "r")
    (open ?expands-file "expands-file-symb" "w")
    (bind ?i 0)
    (while (< ?i ?p) (bind ?i (+ ?i 1)) (readline "puzzles-file-symb") (readline "solns-file-symb"))
    (bind ?i ?p )
    (while (< ?i (+ ?p ?n))
        (bind ?i (+ ?i 1))
        (bind ?puzzle (readline "puzzles-file-symb"))
        (bind ?soln (readline "solns-file-symb"))
        (bind ?addable-clues (sudoku-strings-minus ?soln ?puzzle))
        (loop-for-count (?j 1 81)
            (bind ?exp-puzzle ?puzzle)
            (bind ?jth-add (sub-string ?j ?j ?addable-clues))
            (if (neq ?jth-add ".") then
                (printout "expands-file-symb"
                    (jth-1-expand-puzzle ?puzzle ?addable-clues ?j)
                    crlf
                )
            )
        )
    )
    (close "expands-file-symb")
    (close "solns-file-symb")
    (close "puzzles-file-symb")
)



(deffunction list-1pBRT-expands-of-puzzle-in-puzzle (?puzzle ?super-puzzle)
    ;;; the only rules supposed to be loaded are those of BRT; this is not pre-checked;
    ;;; puzzle is supposed to be included in ?super-puzzle; this is not pre-checked;
    ;;; if this is not the case, the result is empty
    (bind ?list (list-1-expands-of-puzzle-in-puzzle ?puzzle ?super-puzzle))
    (bind ?list2 (create$))
    (foreach ?puz ?list
        (bind ?list2 (create$ ?list2 (BRT-expand-of-puzzle ?puz)))
    )
    ?list2
)


(deffunction list-unique-1pBRT-expands-of-puzzle-in-puzzle (?puzzle ?super-puzzle)
    ;;; the only rules supposed to be loaded are those of BRT; this is not pre-checked;
    ;;; ?puzzle is supposed to be included in ?super-puzzle; this is not pre-checked;
    ;;; if this is not the case, the result is empty
    (bind ?list (list-1-expands-of-puzzle-in-puzzle ?puzzle ?super-puzzle))
    (bind ?list2 (create$))
    (foreach ?puz ?list
        (bind ?BRT-exp (BRT-expand-of-puzzle ?puz))
        (if (puzzle-not-in-list ?BRT-exp ?list2) then
            (bind ?list2 (create$ ?list2 ?BRT-exp))
        )
    )
    ?list2
)



(deffunction first-puzzle-in-list-with-BRT-expand-equal-to-target-puzzle (?list ?target-puzzle)
    ;;; returns the first puzzle in ?list with BRT-expand equal to target
    ;;; ?list is supposed to be a non-empty list of puzzles, all included in ?target-puzzle
    (bind ?res "")
    (bind ?len (length$ ?list))
    (bind ?i 0)
    (while (and (< ?i ?len) (eq (str-length ?res) 0))
        (bind ?i (+ ?i 1))
        ;;; check if the i-th puzzle in ?list works
        (bind ?puz (nth$ ?i ?list))
        (if (string= (BRT-expand-of-puzzle ?puz) ?target-puzzle) then ; a puzzle has been found
            (bind ?res ?puz)
        )
    )
    (if (eq (str-length ?res) 0) then (printout t "NO PUZZLE WITH CORRECT 1+BRT EXPANSION FOUND." crlf))
    ?res
)


(deffunction first-puzzle-in-list-with-1pBRT-expand-equal-to-target-puzzle (?list-BRT ?target-puzzle)
    ;;; returns a list of two puzzles: a puzzle in ?list-BRT and one of its 1-expands with BRT-expand equal to target
    ;;; ?list-BRT is supposed to be a non-empty list of self-expands, all included in ?target-puzzle
    (bind ?res (create$))
    (bind ?len (length$ ?list-BRT))
    (bind ?i 0)
    (while (and (< ?i ?len) (eq (length$ ?res) 0))
        (bind ?i (+ ?i 1))
        ;;; check if the i-th puzzle in ?list-BRT works
        (bind ?puz-BRT (nth$ ?i ?list-BRT))
        (bind ?addable-clues (sudoku-strings-minus ?target-puzzle ?puz-BRT))
        (bind ?j 0)
        (while (and (< ?j 81) (eq (length$ ?res) 0))
            (bind ?j (+ ?j 1))
            (bind ?jth-add (sub-string ?j ?j ?addable-clues))
            (if (neq ?jth-add ".") then
                (bind ?puz1
                    (str-cat
                        (sub-string 1 (- ?j 1) ?puz-BRT)
                        ?jth-add
                        (sub-string (+ ?j 1) 81 ?puz-BRT)
                    )
                )
                (if (string= (BRT-expand-of-puzzle ?puz1) ?target-puzzle) then ; a pair has been found
                    (bind ?res (create$ ?puz-BRT ?puz1))
                )
            )
        )
    )
    (if (eq (length$ ?res) 0) then (printout t "NO PUZZLE WITH CORRECT 1+BRT EXPANSION FOUND." crlf))
    ?res
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; E. PATH FUNCTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; first-length-1-1pBRT-path-to-file-for-BRT-puzzle-in-puzzle
;;; first-length-k-1pBRT-path-to-file-for-BRT-puzzle-in-puzzle
;;; first-length-1-1pBRT-path-to-file-for-BRT-puzzle-with-addable-clues
;;; first-length-k-1pBRT-path-to-file-for-BRT-puzzle-with-addable-clues
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; not used:
(deffunction first-length-1-1pBRT-path-to-file-for-BRT-puzzle-in-puzzle (?puzzle ?super-puzzle ?file)
    ;;; returns a pair (as a list of 2 elements): the correct 1-expand of P and its BRT-expand in ?file
    ;;; the list is empty if there is no such pair
    (bind ?path (create$))
    (bind ?addable-clues (sudoku-strings-minus ?super-puzzle ?puzzle))
    (loop-for-count (?j 1 81)
        (bind ?jth-add (sub-string ?j ?j ?addable-clues))
        (if (neq ?jth-add ".") then
            (bind ?puz-1p (jth-1-expand-puzzle ?puzzle ?addable-clues ?j))
            (bind ?puz-1p-BRT (BRT-expand-of-puzzle ?puz-1p))
            (if (puzzle-in-file ?puz-1p-BRT ?file) then
                (bind ?path (create$ ?puz-1p ?puz-1p-BRT)) (return ?path)
            )
        )
    )
    ?path
)


;;; not used:
(deffunction first-length-k-1pBRT-path-to-file-for-BRT-puzzle-in-puzzle (?k ?current-k ?current-BRT-puzzle ?super-puzzle ?file)
    ;;; ?k ≥ 1 (the ?k = 0  case must be dealt with separately
    ;;; 0 ≤ ?current-k ≤ ?k - 1,
    ;;; This function should only be called with ?current-k = ?k - 1.
    ;;; ?current-BRT-puzzle is supposed to be its own BRT-expand (not checked).
    ;;; The returned path has length 0 if no path of length ?k has been found;
    ;;; otherwise, it has length ?k,
    ;;; it starts with the first correct 1-expand and it ends with the puzzle in ?file.
    (bind ?path (create$))
    (if (eq ?current-k 0)
        then
        (bind ?path (first-length-1-1pBRT-path-to-file-for-BRT-puzzle-in-puzzle ?current-BRT-puzzle ?super-puzzle ?file))
        (return ?path)
        else
        (bind ?addable-clues (sudoku-strings-minus ?super-puzzle ?current-BRT-puzzle))
        (loop-for-count (?j 1 81)
            (bind ?jth-add (sub-string ?j ?j ?addable-clues))
            (if (neq ?jth-add ".") then
                (bind ?puz-1p (jth-1-expand-puzzle ?current-BRT-puzzle ?addable-clues ?j))
                (bind ?puz-1p-BRT (BRT-expand-of-puzzle ?puz-1p))
                (bind ?path2
                    (first-length-k-1pBRT-path-to-file-for-BRT-puzzle-in-puzzle
                        ?k (- ?current-k 1) ?puz-1p-BRT ?super-puzzle ?file
                    )
                )
                (if (neq (length$ ?path2) 0) then
                    (bind ?path (create$ ?puz-1p ?puz-1p-BRT ?path2))
                    (return ?path)
                )
            )
        )
    )
    ?path
)


;;; same functions, but the addable clues are given instead of the super-puzzle

;;; USED:
(deffunction first-length-1-1pBRT-path-to-list-for-BRT-puzzle-with-addable-clues (?puzzle ?addable-clues ?list)
    ;;; returns a pair (as a list of 2 elements): the correct 1-expand of P and its BRT-expand in ?list
    ;;; the list is empty if there is no such pair
    (bind ?path (create$))
    (loop-for-count (?j 1 81)
        (bind ?jth-add (sub-string ?j ?j ?addable-clues))
        (if (neq ?jth-add ".") then
            (bind ?puz-1p (jth-1-expand-puzzle ?puzzle ?addable-clues ?j))
            (bind ?puz-1p-BRT (BRT-expand-of-puzzle ?puz-1p))
            (if (puzzle-in-list ?puz-1p-BRT ?list) then
                (bind ?path (create$ ?puz-1p ?puz-1p-BRT)) (return ?path)
            )
        )
    )
    ?path
)

;;; USED:
(deffunction first-length-1-1pBRT-path-to-file-for-BRT-puzzle-with-addable-clues (?puzzle ?addable-clues ?file)
    (first-length-1-1pBRT-path-to-list-for-BRT-puzzle-with-addable-clues
        ?puzzle
        ?addable-clues
        (element-file-to-element-list ?file)
    )
)


;;; USED:
(deffunction first-length-k-1pBRT-path-to-list-for-BRT-puzzle-with-addable-clues (?k ?current-k ?current-BRT-puzzle ?addable-clues ?list)
    ;;; ?k ≥ 1 (the ?k = 0  case must be dealt with separately
    ;;; 0 ≤ ?current-k ≤ ?k - 1,
    ;;; This function should only be called with ?current-k = ?k - 1.
    ;;; ?current-BRT-puzzle is supposed to be its own BRT-expand (not checked).
    ;;; The returned path has length 0 if no path of length ?k has been found;
    ;;; otherwise, it has length ?k,
    ;;; it starts with the first correct 1-expand and it ends with the puzzle in ?list.
    (bind ?path (create$))
    (if (eq ?current-k 0)
        then
        (bind ?path (first-length-1-1pBRT-path-to-list-for-BRT-puzzle-with-addable-clues ?current-BRT-puzzle ?addable-clues ?list))
        (return ?path)
        else
        (loop-for-count (?j 1 81)
            (bind ?jth-add (sub-string ?j ?j ?addable-clues))
            (if (neq ?jth-add ".") then
                (bind ?puz-1p (jth-1-expand-puzzle ?current-BRT-puzzle ?addable-clues ?j))
                (bind ?puz-1p-BRT (BRT-expand-of-puzzle ?puz-1p))
                (bind ?path2
                    (first-length-k-1pBRT-path-to-list-for-BRT-puzzle-with-addable-clues
                        ?k (- ?current-k 1) ?puz-1p-BRT ?addable-clues ?list
                    )
                )
                (if (neq (length$ ?path2) 0) then
                    (bind ?path (create$ ?puz-1p ?puz-1p-BRT ?path2))
                    (return ?path)
                )
            )
        )
    )
    ?path
)

;;; USED:
(deffunction first-length-k-1pBRT-path-to-file-for-BRT-puzzle-with-addable-clues (?k ?current-k ?current-BRT-puzzle ?addable-clues ?file)
    ;;; ?k ≥ 1 (the ?k = 0  case must be dealt with separately
    ;;; 0 ≤ ?current-k ≤ ?k - 1,
    ;;; This function should only be called with ?current-k = ?k - 1.
    ;;; ?current-BRT-puzzle is supposed to be its own BRT-expand (not checked).
    ;;; The returned path has length 0 if no path of length ?k has been found;
    ;;; otherwise, it has length ?k,
    ;;; it starts with the first correct 1-expand and it ends with the puzzle in ?file.
    (first-length-k-1pBRT-path-to-list-for-BRT-puzzle-with-addable-clues
        ?k
        ?current-k
        ?current-BRT-puzzle
        ?addable-clues
        (element-file-to-element-list ?file)
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; F. LISTS OF PUZZLES SQUEEZED BETWEEN TWO LISTS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction list-of-puzzles-of-file-between-puz1-and-puz2 (?file ?puz1 ?puz2)
    (bind ?res (create$))
    (if (file-exists-and-nonempty ?file)
        then
        (bind ?len (file-length ?file))
        (bind ?puz "")
        (open ?file "list-of-puzzles-of-file-between-puz1-and-puz2-file" "r")
        (loop-for-count (?i 1 ?len)
            (bind ?puz (readline "list-of-puzzles-of-file-between-puz1-and-puz2-file"))
            (if (and (puzzle-in-puzzle ?puz1 ?puz) (puzzle-in-puzzle ?puz ?puz2))
                then (bind ?res (create$ ?res ?puz))
            )
        )
        (close "list-of-puzzles-of-file-between-puz1-and-puz2-file")
    )
    ?res
)


(deffunction list-of-puzzles-of-file-between-strict-puz1-and-puz2 (?file ?puz1 ?puz2)
    (bind ?res (create$))
    (if (file-exists-and-nonempty ?file)
        then
        (bind ?len (file-length ?file))
        (bind ?puz "")
        (open ?file "list-of-puzzles-of-file-between-strict-puz1-and-puz2-file" "r")
        (loop-for-count (?i 1 ?len)
            (bind ?puz (readline "list-of-puzzles-of-file-between-strict-puz1-and-puz2-file"))
            (if (and (puzzle-strictly-in-puzzle ?puz1 ?puz) (puzzle-in-puzzle ?puz ?puz2))
                then (bind ?res (create$ ?res ?puz))
            )
        )
        (close "list-of-puzzles-of-file-between-strict-puz1-and-puz2-file")
    )
    ?res
)



(deffunction list-of-puzzles-with-strict-expansion-in-list--in-file (?list ?file)
    (bind ?res (create$))
    (if (file-exists-and-nonempty ?file) then
        (bind ?len (file-length ?file))
        (open ?file "list-of-puzzles-with-strict-expansion-in-list--in-file-file" "r")
        (loop-for-count (?i 1 ?len)
            (bind ?puz (readline "list-of-puzzles-with-strict-expansion-in-list--in-file-file"))
            (if (puzzle-strictly-in-some-puzzle-of-list ?puz ?list) then (bind ?res (create$ ?res ?puz)))
        )
        (close "list-of-puzzles-with-strict-expansion-in-list--in-file-file")
    )
    ?res
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; G. FILE FUNCTIONS FOR LARGE FILES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; When file2 is too large, it's impossible to use intermediate lists.
;;; We currently need only these two functions (currently identical to the standard case).
;;; not used

(deffunction puzzle-not-in-some-puzzle-in-large-file (?puz ?file)
    (bind ?res TRUE)
    (if (file-exists-and-nonempty ?file) then
        (bind ?len (file-length ?file))
        (open ?file "puzzle-not-in-some-puzzle-in-large-file-file" "r")
        (bind ?i 0)
        (while (< ?i ?len)
            (bind ?i (+ ?i 1))
            (bind ?puz2 (readline "puzzle-not-in-some-puzzle-in-large-file-file"))
            (if (puzzle-in-puzzle ?puz ?puz2) then
                (bind ?res FALSE) (close "puzzle-not-in-some-puzzle-in-large-file-file") (return ?res)
            )
        )
        (close "puzzle-not-in-some-puzzle-in-large-file-file")
    )
    ?res
)


(deffunction puzzles-of-list-with-no-expansion-in-large-file (?list ?file)
    (bind ?res (create$))
    (if (nonexistent-or-empty-file ?file)
        then (bind ?res ?list)
        else
        (foreach ?puz ?list
            (if (puzzle-not-in-some-puzzle-in-large-file ?puz ?file)  then
                (bind ?res (create$ ?res ?puz))
            )
        )
    )
    ?res
)






