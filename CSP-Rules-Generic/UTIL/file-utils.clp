
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                               UTIL / FILE-UTIL
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;            January 2006 - September 2024           ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; General utility functions for files of integers or reals (min and max values)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction max-value-in-file (?X-file ?file-length)
    ;;; each line is supposed to be an integer or a real (no check is made)
    (open ?X-file "X-file" "r")
    (bind ?i 1)
    (bind ?max -1000000)
    (while (<= ?i ?file-length)
        (bind ?xline (readline "X-file"))
        (bind ?xi (eval ?xline))
        (bind ?max (max ?max ?xi))
        (bind ?i (+ ?i 1))
    )
    (printout t "max = " ?max crlf)
    (close "X-file")
)


(deffunction min-value-in-file (?X-file ?file-length)
    ;;; each line is supposed to be an integer or a real (no check is made)
    (open ?X-file "X-file" "r")
    (bind ?i 1)
    (bind ?min 1000000)
    (while (<= ?i ?file-length)
        (bind ?xline (readline "X-file"))
        (bind ?xi (eval ?xline))
        (bind ?min (min ?min ?xi))
        (bind ?i (+ ?i 1))
    )
    (printout t "min = " ?min crlf)
    (close "X-file")
)


;;; Same functions with file length computed automatically
;;; As file-symbols are global, an akward name  must be used
;;; in order to make this function usable within other file functions

(deffunction file-length (?file)
    ;;; each line is supposed to be an integer or a real (no check is made)
    (open ?file "file-dxvffghvjkvds" "r")
    (bind ?i 0)
    (while TRUE
        (bind ?line (readline "file-dxvffghvjkvds"))
        (bind ?li ?line)
        (if (eq ?li EOF) then (return ?i))
        (bind ?i (+ ?i 1))
    )
    (close "file-dxvffghvjkvds")
)


(deffunction file-max-value (?X-file)
    ;;; each line is supposed to be an integer or a real (no check is made)
    (open ?X-file "X-file" "r")
    (bind ?i 1)
    (bind ?max -1000000)
    (while TRUE
        (bind ?xline (readline "X-file"))
        (bind ?xi (eval ?xline))
        (if (eq ?xi EOF) then (printout t "max = " ?max crlf) (close "X-file") (return ?max))
        (bind ?max (max ?max ?xi))
        (bind ?i (+ ?i 1))
    )
    (close "X-file")
    ?max
)


(deffunction file-min-value (?X-file)
    ;;; each line is supposed to be an integer or a real (no check is made)
    (open ?X-file "X-file" "r")
    (bind ?i 1)
    (bind ?min 1000000)
    (while TRUE
        (bind ?xline (readline "X-file"))
        (bind ?xi (eval ?xline))
        (if (eq ?xi EOF) then (printout t "min = " ?min crlf) (close "X-file") (return ?min))
        (bind ?min (min ?min ?xi))
        (bind ?i (+ ?i 1))
    )
    (close "X-file")
    ?min
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract nth datum from each line
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction extract-nth-data-from-each-line (?input-file ?output-file ?file-len ?nth)
    (bind ?skip (- ?nth 1))
    (bind ?data "")
    (open ?input-file "input-file" "r")
    (open ?output-file "output-file" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (loop-for-count ?skip (read "input-file"))
        (bind ?data (read "input-file"))
        (readline "input-file")
        (printout "file-out" ?data crlf)
    )
    (close "file-out")
    (close "file-in")
    TRUE
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract lines in a file that have a certain value for a variable X in another file
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Extract lines in a file whose value for a variable X in another file is equal to a given value
;;; Full lines of the input file are copied.

(deffunction extract-lines-with-X-value (?file-in ?X-values-file ?file-len ?X-value ?file-out)
    ;;; extract lines that have the fixed value ?X-value in ?X-values-file
    ;;; record them in ?file-out
    (bind ?lines-out-list (create$))
    (bind ?line-value 0)
    (bind ?line "")
    (open ?file-in "file-in" "r")
    (open ?X-values-file "values-file" "r")
    (open ?file-out "file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (bind ?line-value (read "values-file"))
        (readline "values-file")
        (bind ?line (readline "file-in"))
        (if (eq ?line-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "file-out" ?line "  #" ?i crlf)
        )
    )
    (close "file-out")
    (close "values-file")
    (close "file-in")
    ?lines-out-list
)


;;; Extract lines in a file whose value for a variable X in another file
;;; is equal to or above a given value.
;;; Full lines of the input file are copied.

(deffunction extract-lines-with-X-value-greater (?file-in ?X-values-file ?file-len ?X-value ?file-out)
    ;;; extract puzzles that have a value >= fixed value ?X-value in ?X-values-file
    ;;; record them in ?file-out
    (bind ?lines-out-list (create$))
    (bind ?line-value 0)
    (bind ?line "")
    (open ?file-in "file-in" "r")
    (open ?X-values-file "values-file" "r")
    (open ?file-out "file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (bind ?line-value (read "values-file"))
        (readline "values-file")
        (bind ?line (readline "file-in"))
        (if (>= ?line-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "file-out" ?line "  #" ?i crlf)
        )
    )
    (close "file-out")
    (close "values-file")
    (close "file-in")
    ?lines-out-list
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract data from a file depending on the value for a variable X in another file
;;; Almost same functions  as for puzzles, but:
;;; - name adapted to a broader use and only data recorded (no list with their places in file);
;;; - only first element of line is considered as "data" and copied.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction extract-data-from-lines-with-X-value (?data-file-in ?X-values-file ?file-len ?X-value ?data-file-out)
    (bind ?lines-out-list (create$))
    (bind ?datum-value 0)
    (bind ?datum "")
    (open ?data-file-in "data-file-in" "r")
    (open ?X-values-file "X-values-file" "r")
    (open ?data-file-out "data-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (bind ?X-file-value (read "X-values-file"))
        ; (printout t ?X-file-value crlf)
        (bind ?datum (read "data-file-in"))
        (readline "data-file-in")
        (if (eq ?X-file-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "data-file-out" ?datum crlf)
        )
    )
    (close "data-file-out")
    (close "X-values-file")
    (close "data-file-in")
    ?lines-out-list
)

(deffunction extract-data-from-lines-with-X-value-greater (?data-file-in ?X-values-file ?file-len ?X-value ?data-file-out)
    ;;; extract data that have a value >= fixed value ?X-value in ?X-values-file
    ;;; record them in ?data-file-out
    (bind ?lines-out-list (create$))
    (bind ?datum-value 0)
    (bind ?datum "")
    (open ?data-file-in "data-file-in" "r")
    (open ?X-values-file "X-values-file" "r")
    (open ?data-file-out "data-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (bind ?X-file-value (read "X-values-file"))
        (readline "X-values-file")
        (bind ?datum (read "data-file-in"))
        (readline "data-file-in")
        (if (>= ?X-file-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "data-file-out" ?datum crlf)
        )
    )
    (close "data-file-out")
    (close "X-values-file")
    (close "data-file-in")
    ?lines-out-list
)


;;; The data one wants to extract may sometimes occupy another place in the original file than the first:

(deffunction extract-nth-data-from-lines-with-X-value (?data-file-in ?X-values-file ?file-len ?nth ?X-value ?data-file-out)
    (bind ?skip (- ?nth 1))
    (bind ?lines-out-list (create$))
    (bind ?datum-value 0)
    (bind ?datum "")
    (open ?data-file-in "data-file-in" "r")
    (open ?X-values-file "X-values-file" "r")
    (open ?data-file-out "data-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (loop-for-count ?skip (read "X-values-file"))
        (bind ?X-file-value (read "X-values-file"))
        (printout t ?X-file-value crlf)
        (bind ?datum (read "data-file-in"))
        (readline "data-file-in")
        (if (eq ?X-file-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "data-file-out" ?datum crlf)
        )
    )
    (close "data-file-out")
    (close "X-values-file")
    (close "data-file-in")
    ?lines-out-list
)

(deffunction extract-nth-data-from-lines-with-X-value-greater (?data-file-in ?X-values-file ?file-len ?nth ?X-value ?data-file-out)
    ;;; extract data that have a value >= fixed value ?X-value in ?X-values-file
    ;;; record them in ?data-file-out
    (bind ?skip (- ?nth 1))
    (bind ?lines-out-list (create$))
    (bind ?datum-value 0)
    (bind ?datum "")
    (open ?data-file-in "data-file-in" "r")
    (open ?X-values-file "X-values-file" "r")
    (open ?data-file-out "data-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        (printout t "#" ?i crlf)
        (loop-for-count ?skip (read "X-values-file"))
        (bind ?X-file-value (read "X-values-file"))
        (readline "X-values-file")
        (bind ?datum (read "data-file-in"))
        (readline "data-file-in")
        (if (>= ?X-file-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "data-file-out" ?datum crlf)
        )
    )
    (close "data-file-out")
    (close "X-values-file")
    (close "data-file-in")
    ?lines-out-list
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract lines from a file, whose places are in a list
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction extract-lines-in-list (?file-in ?file-len ?list ?file-out)
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
    TRUE
)


(deffunction extract-data-from-lines-in-list (?file-in ?file-len ?list ?file-out)
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
    TRUE
)


(deffunction extract-nth-data-from-lines-in-list (?file-in ?file-len ?nth ?list ?file-out)
    (open ?file-in "file-in" "r")
    (open ?file-out "file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ;(printout t "#" ?i crlf)
        (loop-for-count (?i (- ?nth 1)) (read "file-in"))
        (bind ?file-in-data (read "file-in"))
        (readline "file-in")
        (if (member$ ?i ?list) then (printout "file-out" ?file-in-data crlf))
    )
    (close "file-out")
    (close "file-in")
    TRUE
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract members of a list whose value for a variable X in a file is given.
;;; The values are given in the X-file; its nth line is for the nth place in the list.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction extract-members-from-list-with-X-value (?list ?X-values-file ?file-len ?X-value)
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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Compare files with integer or real contents
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Notice that "while" is used everywhere instead of more advanced control structures.
;;; This is not very elegant.
;;; But "while" is the only iterative control structure common to CLIPS and JESS.

;;; The contents of the compared files must be integers (or reals in compare-diff-ratings-in-files)


(deffunction compare-files (?file1 ?file2 ?file-length)
	(bind ?plus 0)
	(bind ?minus 0)
    (bind ?diff 0)
	(open ?file1 "file1" "r")
	(open ?file2 "file2" "r")
	(bind ?i 0)
	(while (< ?i ?file-length)
		(bind ?i (+ ?i 1))
		(bind ?x1 (string-to-field (readline "file1")))
		(bind ?x2 (string-to-field (readline "file2")))
		(if (> ?x1 ?x2) then (bind ?plus (+ ?plus 1)) (printout t ?x1 "  " ?x2 "   #" ?i  "   +" (- ?x1 ?x2) crlf))
		(if (< ?x1 ?x2) then (bind ?minus (+ ?minus 1)) (printout t ?x1 "  " ?x2 "   #" ?i  "   " (- ?x1 ?x2) crlf))
        (if (<> ?x1 ?x2) then (bind ?diff (+ ?diff 1)))
	)
    (close "file2")
	(close "file1")
    (printout t ?diff " different values." crlf)
	(printout t "file1 greater " ?plus " times." crlf)
	(printout t "file1 smaller " ?minus " times." crlf)
)



(deffunction compare-ratings-in-files (?r1 ?r2 ?file1 ?file2 ?file-length)
    ;;; ?r1 and ?r2 are the names of the ratings, e.g. W and B
    ;;; ?file1 and ?file2 are the full paths to the files of the two ratings
    ;;; ?file-length is the common length of the files of the two ratings
    (open ?file1 "file1" "r")
    (open ?file2 "file2" "r")
    (bind ?nb-diff 0)
    (bind ?nb-pos-diff 0)
    (bind ?nb-neg-diff 0)
    (bind ?i 1)
    (while (<= ?i ?file-length)
        (bind ?rating1 (read-number "file1"))
        (bind ?rating2 (read-number "file2") )
        (if (neq ?rating1 ?rating2) then
            (bind ?nb-diff (+ ?nb-diff 1))
            (printout t "#" ?i ": " ?r1 " = " ?rating1 "; " ?r2 " = " ?rating2 "; diff = " (- ?rating1 ?rating2) crlf)
            (if (> ?rating1 ?rating2)
                then (bind ?nb-pos-diff (+ ?nb-pos-diff 1))
                else (bind ?nb-neg-diff (+ ?nb-neg-diff 1))
            )
        )
        (bind ?i (+ ?i 1))
    )
    (printout t ?nb-diff " differences" crlf)
    (printout t ?nb-pos-diff " positive differences" crlf)
    (printout t ?nb-neg-diff " negative differences" crlf)
    (close "file2")
    (close "file1")
)



(deffunction compare-diff-ratings-in-files (?r1 ?r2 ?toler ?file1 ?file2 ?file-length)
    ;;; This is intended for non-intger ratings.
    ;;; ?r1 and ?r2 are the names of the ratings, e.g. W and B
    ;;; ?toler is the tolerance between the ratings for being considered as equivalent (e.g. 0.1 in SER)
    ;;; ?file1 and ?file2 are the full paths to the files of the two ratings
    ;;; ?file-length is the common length of the files of the two ratings
    (open ?file1 "file1" "r")
    (open ?file2 "file2" "r")
    (bind ?nb-diff 0)
    (bind ?nb-pos-diff 0)
    (bind ?nb-neg-diff 0)
    (bind ?i 1)
    (while (<= ?i ?file-length)
        (bind ?rating1 (read-number "file1"))
        (bind ?rating2 (read-number "file2"))
        (if (> (abs (- ?rating1 ?rating2)) ?toler) then
            (bind ?nb-diff (+ ?nb-diff 1))
            (printout t "#" ?i ": " ?r1 " = " ?rating1 "; " ?r2 " = " ?rating2 "; diff = " (- ?rating1 ?rating2) crlf)
            (if (> ?rating1 ?rating2)
                then (bind ?nb-pos-diff (+ ?nb-pos-diff 1))
                else (bind ?nb-neg-diff (+ ?nb-neg-diff 1))
            )
        )
        (bind ?i (+ ?i 1))
    )
    (printout t ?nb-diff " meaningful (i.e. > " ?toler ") differences" crlf)
    (printout t ?nb-pos-diff " meaningful (i.e. > " ?toler ") positive differences" crlf)
    (printout t ?nb-neg-diff " meaningful (i.e. > " ?toler ") negative differences" crlf)
    (close "file2")
    (close "file1")
)



;;; Again with a different style of output
(deffunction compare-levels-in-2-files (?file1 ?file2 ?file-length)
    ;;; each line of the two files must be a real number
    (bind ?different-lines (create$))
    (open ?file1 "file1" "r")
    (open ?file2 "file2" "r")
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?L1 (string-to-field (readline "file1")))
        (bind ?L2 (string-to-field (readline "file2")))
        
        (if (not (eq ?L1 ?L2)) then
            (printout t ?i "   " ?L1)
            
            (if (> ?L1 ?L2) then (printout t " > " ?L2))
            (if (= ?L1 ?L2) then (printout t " = " ?L2))
            (if (< ?L1 ?L2) then (printout t " < " ?L2))
                        
            (printout t crlf)
            (bind ?different-lines (create$ ?different-lines ?i))
        )
    )
    (close "file2")
    (close "file1")
    (printout t "Different lines: " ?different-lines crlf)
    (length$ ?different-lines)
)


(deffunction compare-levels-in-3-files (?file1 ?file2 ?file3 ?file-length)
    ;;; each line of the two files must be a real number
    (bind ?different-lines (create$))
    (open ?file1 "file1" "r")
    (open ?file2 "file2" "r")
    (open ?file3 "file3" "r")
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?L1 (string-to-field (readline "file1")))
        (bind ?L2 (string-to-field (readline "file2")))
        (bind ?L3 (string-to-field (readline "file3")))
        
        (if (not (eq ?L1 ?L2 ?L3)) then
            (printout t ?i "   " ?L1)
            
            (if (> ?L1 ?L2) then (printout t " > " ?L2))
            (if (= ?L1 ?L2) then (printout t " = " ?L2))
            (if (< ?L1 ?L2) then (printout t " < " ?L2))
            
            (if (> ?L2 ?L3) then (printout t " > " ?L3))
            (if (= ?L2 ?L3) then (printout t " = " ?L3))
            (if (< ?L2 ?L3) then (printout t " < " ?L3))
            
            (printout t crlf)
            (bind ?different-lines (create$ ?different-lines ?i))
        )
    )
    (close "file3")
    (close "file2")
    (close "file1")
    (printout t "Different lines: " ?different-lines crlf)
    (length$ ?different-lines)
)


(deffunction compare-levels-in-4-files (?file1 ?file2 ?file3 ?file4 ?file-length)
    ;;; each line of the two files must be a real number
    (bind ?different-lines (create$))
    (open ?file1 "file1" "r")
    (open ?file2 "file2" "r")
    (open ?file3 "file3" "r")
    (open ?file4 "file4" "r")
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?L1 (string-to-field (readline "file1")))
        (bind ?L2 (string-to-field (readline "file2")))
        (bind ?L3 (string-to-field (readline "file3")))
        (bind ?L4 (string-to-field (readline "file4")))
        
        (if (not (eq ?L1 ?L2 ?L3 ?L4)) then
            (printout t ?i "   " ?L1)
            
            (if (> ?L1 ?L2) then (printout t " > " ?L2))
            (if (= ?L1 ?L2) then (printout t " = " ?L2))
            (if (< ?L1 ?L2) then (printout t " < " ?L2))
            
            (if (> ?L2 ?L3) then (printout t " > " ?L3))
            (if (= ?L2 ?L3) then (printout t " = " ?L3))
            (if (< ?L2 ?L3) then (printout t " < " ?L3))

            (if (> ?L3 ?L4) then (printout t " > " ?L4))
            (if (= ?L3 ?L4) then (printout t " = " ?L4))
            (if (< ?L3 ?L4) then (printout t " < " ?L4))
            
            (printout t crlf)
            (bind ?different-lines (create$ ?different-lines ?i))
        )
    )
    (close "file4")
    (close "file3")
    (close "file2")
    (close "file1")
    (printout t "Different lines: " ?different-lines crlf)
    (length$ ?different-lines)
)


(deffunction compare-levels-in-5-files (?file1 ?file2 ?file3 ?file4 ?file5 ?file-length)
    ;;; each line of the two files must be a real number
    (bind ?different-lines (create$))
    (open ?file1 "file1" "r")
    (open ?file2 "file2" "r")
    (open ?file3 "file3" "r")
    (open ?file4 "file4" "r")
    (open ?file5 "file5" "r")
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?L1 (string-to-field (readline "file1")))
        (bind ?L2 (string-to-field (readline "file2")))
        (bind ?L3 (string-to-field (readline "file3")))
        (bind ?L4 (string-to-field (readline "file4")))
        (bind ?L5 (string-to-field (readline "file5")))

        (if (not (eq ?L1 ?L2 ?L3 ?L4 ?L5)) then
            (printout t ?i "   " ?L1)
            
            (if (> ?L1 ?L2) then (printout t " > " ?L2))
            (if (= ?L1 ?L2) then (printout t " = " ?L2))
            (if (< ?L1 ?L2) then (printout t " < " ?L2))
            
            (if (> ?L2 ?L3) then (printout t " > " ?L3))
            (if (= ?L2 ?L3) then (printout t " = " ?L3))
            (if (< ?L2 ?L3) then (printout t " < " ?L3))

            (if (> ?L3 ?L4) then (printout t " > " ?L4))
            (if (= ?L3 ?L4) then (printout t " = " ?L4))
            (if (< ?L3 ?L4) then (printout t " < " ?L4))
 
            (if (> ?L4 ?L5) then (printout t " > " ?L5))
            (if (= ?L4 ?L5) then (printout t " = " ?L5))
            (if (< ?L4 ?L5) then (printout t " < " ?L5))

            (printout t crlf)
            (bind ?different-lines (create$ ?different-lines ?i))
        )
    )
    (close "file5")
    (close "file4")
    (close "file3")
    (close "file2")
    (close "file1")
    (printout t "Different lines: " ?different-lines crlf)
    (length$ ?different-lines)
)
