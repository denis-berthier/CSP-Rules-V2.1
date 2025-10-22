
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

(deffunction file-exists (?file)
    (bind ?res (open ?file "file-exists-cxTCEVXDFVkhsgd" "r"))
    (close "file-exists-cxTCEVXDFVkhsgd")
    ?res
)

(deffunction empty-file (?file)
    (open ?file "empty-file-dxvffghvjkvds" "r")
    (bind ?line (readline "empty-file-dxvffghvjkvds"))
    (close "empty-file-dxvffghvjkvds")
    (if (eq ?line EOF) then TRUE else FALSE)
)

(deffunction nonexistent-or-empty-file (?file)
    (or (not (file-exists ?file)) (empty-file ?file))
)

(deffunction file-exists-and-nonempty (?file)
    (and (file-exists ?file) (not (empty-file ?file)))
)

(deffunction create-empty-file (?file)
    ;;; create the file if it doesn't exist, empty it otherwise
    (open ?file "create-empty-file-fwsjcdwswqs" "w")
    (close "create-empty-file-fwsjcdwswqs")
)

(deffunction file-length (?file)
    (open ?file "file-length-dxvffghvjkvds" "r")
    (bind ?i 0)
    (while TRUE
        (bind ?line (readline "file-length-dxvffghvjkvds"))
        (if (eq ?line EOF) then (close "file-length-dxvffghvjkvds") (return ?i))
        (bind ?i (+ ?i 1))
    )
    (close "file-length-dxvffghvjkvds")
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; General utility functions for files of integers or reals (min and max values)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction max-value-in-file (?X-file ?file-length)
    ;;; each line is supposed to be an integer or a real (no check is made)
    (bind ?max -1000000)
    (open ?X-file "max-value-in-file-X-file" "r")
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?xi (eval (readline "max-value-in-file-X-file")))
        (bind ?max (max ?max ?xi))
    )
    (printout t "max = " ?max crlf)
    (close "max-value-in-file-X-file")
)


(deffunction min-value-in-file (?X-file ?file-length)
    ;;; each line is supposed to be an integer or a real (no check is made)
    (bind ?min 1000000)
    (open ?X-file "min-value-in-file-X-file" "r")
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?xi (eval (readline "min-value-in-file-X-file")))
        (bind ?min (min ?min ?xi))
    )
    (printout t "min = " ?min crlf)
    (close "min-value-in-file-X-file")
)


;;; Same functions with file length computed automatically
;;; As file-symbols are global, an akward name  must be used
;;; in order to make this function usable within other file functions

(deffunction file-max-value (?X-file)
    ;;; each line is supposed to be an integer or a real (no check is made)
    (bind ?max -1000000)
    (open ?X-file "file-max-value-X-file" "r")
    (while TRUE
        (bind ?xi (eval (readline "file-max-value-X-file")))
        (if (eq ?xi EOF) then (close "file-max-value-X-file") (return ?max))
        (bind ?max (max ?max ?xi))
    )
    (close "file-max-value-X-file")
    ?max
)


(deffunction file-min-value (?X-file)
    ;;; each line is supposed to be an integer or a real (no check is made)
    (bind ?min 1000000)
    (open ?X-file "file-min-value-X-file" "r")
    (while TRUE
        (bind ?xi (eval (readline "file-min-value-X-file")))
        (if (eq ?xi EOF) then (close "file-min-value-X-file") (return ?min))
        (bind ?min (min ?min ?xi))
    )
    (close "file-min-value-X-file")
    ?min
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; General utility functions for files of elements of any kind
;;; each line is considered as a string
;;; Conversions  between lists and files
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction element-file-to-element-list (?file)
    (bind ?list (create$))
    (if (file-exists-and-nonempty ?file) then
        (open ?file "element-file-to-element-list-file" "r")
        (loop-for-count (?i 1 (file-length ?file))
            (bind ?list (create$ ?list (readline "element-file-to-element-list-file")))
        )
        (close "element-file-to-element-list-file")
    )
    ?list
)


(deffunction element-list-to-element-file (?list ?file)
    (if (> (length$ ?list) 0) then
        (open ?file "element-list-to-element-file-file" "w")
        (foreach ?element ?list
            (printout "element-list-to-element-file-file" ?element crlf)
        )
        (close "element-list-to-element-file-file")
    )
    TRUE
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Elimination of duplicate lines in a file (= lines that are identical as strings)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; only for small input files:
(deffunction eliminate-duplicates-from-small-file (?file-in ?file-out)
    (element-list-to-element-file
        (eliminate-duplicates-from-list (element-file-to-element-list ?file-in))
        ?file-out
    )
)


;;; The rest is for potentially very large files

(deffunction line-string-in-file (?line ?file)
    (bind ?ans FALSE)
    (if (file-exists-and-nonempty ?file) then
        (open ?file "line-string-in-file-file" "r")
        (bind ?file-line (readline "line-string-in-file-file"))
        (while (neq ?file-line EOF)
            (if (string= ?line ?file-line) then
                (bind ?ans TRUE) (close "line-string-in-file-file") (return ?ans)
            )
            (bind ?file-line (readline "line-string-in-file-file"))
        )
        (close "line-string-in-file-file")
    )
    ?ans
)


;;; Eliminate the risk of collision between read and write
;;; but very slow  due to many re-openings of and appending to file-out:
(deffunction eliminate-duplicates-from-large-file (?file-in ?file-out)
    ;;; eliminates duplicate lines (if they are identical as string)
    (if (file-exists-and-nonempty ?file-in) then
        ;;; file-out cannot be empty at the end; create it, in empty state:
        (create-empty-file ?file-out)
        
        (open ?file-in "eliminate-duplicates-from-large-file-file-in" "r")
        (bind ?line (readline "eliminate-duplicates-from-large-file-file-in"))
        (while (neq ?line EOF)
            (if (line-string-in-file ?line ?file-out) then
                (open ?file-out "eliminate-duplicates-from-large-file-file-out" "a")
                (printout "eliminate-duplicates-from-large-file-file-out" ?line crlf)
                ;;; make sure file-out is totally available to the next call to function line-string-in-file:
                (close "eliminate-duplicates-from-large-file-file-out")
            )
            (bind ?line (readline "eliminate-duplicates-from-large-file-file-in"))
        )
        (close "eliminate-duplicates-from-large-file-file-in")
    )
)


;;; Second version, using a full intermediate no-dup list
;;; But it may create a very long list; very inefficient
(deffunction eliminate-duplicates-from-large-file (?file-in ?file-out)
    (bind ?nodup-list (create$))
    (if (file-exists-and-nonempty ?file-in) then
        ;;; file-out will not be empty
        (open ?file-in "eliminate-duplicates-from-large-file-file-in" "r")
        (bind ?line (readline "eliminate-duplicates-from-large-file-file-in"))
        (while (neq ?line EOF)
            (if (not (member$ ?line ?nodup-list)) then
                (bind ?nodup-list (create$ ?nodup-list ?line))
            )
            (bind ?line (readline "eliminate-duplicates-from-large-file-file-in"))
        )
        (close "eliminate-duplicates-from-large-file-file-in")
    )
    (element-list-to-element-file ?nodup-list ?file-out)
)



;;; Intermediate version:
;;; Designed to handle large files
;;; by storing intermediate results in a buffer list: ?new-lines-buffer
;;; But there's no good way to choose the value of ?*list-buffer-size-for-files*
;;; (defined in GENERIC/GENERAL/globals.clp)
;;; See the XTERNS functions for a faster pure C version

(deffunction eliminate-duplicates-from-file (?file-in ?file-out)
    (if (file-exists-and-nonempty ?file-in) then
        ;;; create and/or empty ?file out:
        (create-empty-file ?file-out)
        
        (bind ?new-lines-buffer (create$))
        (bind ?nb-new-lines 0)
        
        (open ?file-in "eliminate-duplicates-from-file-file-in" "r")
        (bind ?line (readline "eliminate-duplicates-from-file-file-in"))
        (while (neq ?line EOF)
           (bind ?line-already-found FALSE)
           ;;; first, check presence in the new lines buffer
           (if (member$ ?line ?new-lines-buffer) then (bind ?line-already-found TRUE))
           ;;; if not in the new lines buffer, check presence in the output file
           (if (not ?line-already-found) then
               (if (line-string-in-file ?line ?file-out) then (bind ?line-already-found TRUE))
           )
           ;;; if line is new, add it to the new lines buffer:
           (if (not ?line-already-found) then
              (bind ?new-lines-buffer (create$ ?new-lines-buffer ?line))
              (bind ?nb-new-lines (+ ?nb-new-lines 1))
           )
           ;;; if list size is reached, flush the new lines buffer to the output file:
           (if (>= ?nb-new-lines ?*list-buffer-size-for-files*) then
               (open ?file-out "eliminate-duplicates-from-file-file-out" "a")
               (foreach ?str ?new-lines-buffer
                   (printout "eliminate-duplicates-from-file-file-out" ?str crlf)
               )
               (close "eliminate-duplicates-from-file-file-out")
               ;;; reset the new lines buffer:
               (bind ?new-lines-buffer (create$))
               (bind ?nb-new-lines 0)
            )
            (bind ?line (readline "eliminate-duplicates-from-file-file-in"))
        )
        (close "eliminate-duplicates-from-file-file-in")
        
        ;;; at the end, flush lines still in buffer list
        (if (> (length$ ?new-lines-buffer) 0) then
            (open ?file-out "eliminate-duplicates-from-file-file-out" "a")
            (foreach ?str ?new-lines-buffer
               (printout "eliminate-duplicates-from-file-file-out" ?str crlf)
            )
            (close "eliminate-duplicates-from-file-file-out")
        )
    )
 )





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract nth datum or truncated data from each line
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction extract-nth-data-from-each-line (?file-in ?file-out ?file-len ?nth-place)
    (bind ?skip (- ?nth-place 1))
    (bind ?data "")
    (open ?file-in "extract-nth-data-from-each-line-file-in" "r")
    (open ?file-out "extract-nth-data-from-each-line-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (loop-for-count ?skip (read "extract-nth-data-from-each-line-file-in"))
        (bind ?data (read "extract-nth-data-from-each-line-file-in"))
        (readline "extract-nth-data-from-each-line-file-in")
        (printout "extract-nth-data-from-each-line-file-out" ?data crlf)
    )
    (close "extract-nth-data-from-each-line-file-out")
    (close "extract-nth-data-from-each-line-file-in")
    TRUE
)


(deffunction extract-truncated-data-for-each-line (?file-in ?file-out ?file-len ?nb-car)
    ;;; extract lines that have a value >= fixed value ?X-value in ?X-values-file
    ;;; keep only the first ?nb-car characters of each line
    ;;; record them in ?file-out
    (bind ?line "")
    (open ?file-in "extract-truncated-data-for-each-line-file-in" "r")
    (open ?file-out "extract-truncated-data-for-each-line-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        (bind ?line (sub-string 1 ?nb-car (readline "extract-truncated-data-for-each-line-file-in")))
        (printout "extract-truncated-data-for-each-line-file-out" ?line crlf)
    )
    (close "extract-truncated-data-for-each-line-file-out")
    (close "extract-truncated-data-for-each-line-file-in")
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract lines in a file that have a certain value for a variable X in another file
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Extract lines in a file whose value for a variable X in another file is equal to a given value
;;; Full lines of the input file are copied.
;;; See the XTERNS functions for a faster pure C version

(deffunction extract-lines-with-X-value (?file-in ?X-values-file ?file-len ?X-value ?file-out)
    ;;; extract lines that have the fixed value ?X-value in ?X-values-file
    ;;; record them in ?file-out
    (bind ?lines-out-list (create$))
    (bind ?line-value 0)
    (bind ?line "")
    (open ?file-in "extract-lines-with-X-value-file-in" "r")
    (open ?X-values-file "extract-lines-with-X-value-values-file" "r")
    (open ?file-out "extract-lines-with-X-value-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (bind ?line-value (read "extract-lines-with-X-value-values-file"))
        (readline "extract-lines-with-X-value-values-file")
        (bind ?line (readline "extract-lines-with-X-value-file-in"))
        (if (eq ?line-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "extract-lines-with-X-value-file-out" ?line crlf)
        )
    )
    (close "extract-lines-with-X-value-file-out")
    (close "extract-lines-with-X-value-values-file")
    (close "extract-lines-with-X-value-file-in")
    ?lines-out-list
)


;;; Extract lines in a file whose value for a variable X in another file
;;; is equal to or above a given value.
;;; Full lines of the input file are copied.
;;; See the XTERNS functions for a faster pure C version

(deffunction extract-lines-with-X-value-greater (?file-in ?X-values-file ?file-len ?X-value ?file-out)
    ;;; extract lines that have a value >= a fixed value ?X-value in ?X-values-file
    ;;; record them in ?file-out
    (bind ?lines-out-list (create$))
    (bind ?line-value 0)
    (bind ?line "")
    (open ?file-in "extract-lines-with-X-value-greater-file-in" "r")
    (open ?X-values-file "extract-lines-with-X-value-greater-values-file" "r")
    (open ?file-out "extract-lines-with-X-value-greater-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (bind ?line-value (read "extract-lines-with-X-value-greater-values-file"))
        (readline "extract-lines-with-X-value-greater-values-file")
        (bind ?line (readline "extract-lines-with-X-value-greater-file-in"))
        (if (>= ?line-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "extract-lines-with-X-value-greater-file-out" ?line crlf)
        )
    )
    (close "extract-lines-with-X-value-greater-file-out")
    (close "extract-lines-with-X-value-greater-values-file")
    (close "extract-lines-with-X-value-greater-file-in")
    ?lines-out-list
)




(deffunction extract-truncated-lines-with-X-value (?nb-car ?file-in ?X-values-file ?file-len ?X-value ?file-out)
    ;;; extract lines that have the fixed value ?X-value in ?X-values-file
    ;;; keep only the first ?nb-car characters of each line
    ;;; record them in ?file-out
    (bind ?lines-out-list (create$))
    (bind ?line-value 0)
    (bind ?line "")
    (open ?file-in "extract-truncated-lines-with-X-value-file-in" "r")
    (open ?X-values-file "extract-truncated-lines-with-X-value-values-file" "r")
    (open ?file-out "extract-truncated-lines-with-X-value-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (bind ?line-value (read "extract-truncated-lines-with-X-value-values-file"))
        (readline "extract-truncated-lines-with-X-value-values-file")
        (bind ?line (sub-string 1 ?nb-car (readline "extract-truncated-lines-with-X-value-file-in")))
        (if (eq ?line-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "extract-truncated-lines-with-X-value-file-out" ?line crlf)
        )
    )
    (close "extract-truncated-lines-with-X-value-file-out")
    (close "extract-truncated-lines-with-X-value-values-file")
    (close "extract-truncated-lines-with-X-value-file-in")
    ?lines-out-list
)

(deffunction extract-truncated-lines-with-X-value-greater (?nb-car ?file-in ?X-values-file ?file-len ?X-value ?file-out)
    ;;; extract lines that have a value >= fixed value ?X-value in ?X-values-file
    ;;; keep only the first ?nb-car characters of each line
    ;;; record them in ?file-out
    (bind ?lines-out-list (create$))
    (bind ?line-value 0)
    (bind ?line "")
    (open ?file-in "extract-truncated-lines-with-X-value-greater-file-in" "r")
    (open ?X-values-file "extract-truncated-lines-with-X-value-greater-values-file" "r")
    (open ?file-out "extract-truncated-lines-with-X-value-greater-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (bind ?line-value (read "extract-truncated-lines-with-X-value-greater-values-file"))
        (readline "extract-truncated-lines-with-X-value-greater-values-file")
        (bind ?line (sub-string 1 ?nb-car (readline "extract-truncated-lines-with-X-value-greater-file-in")))
        (if (>= ?line-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "extract-truncated-lines-with-X-value-greater-file-out" ?line crlf)
        )
    )
    (close "extract-truncated-lines-with-X-value-greater-file-out")
    (close "extract-truncated-lines-with-X-value-greater-values-file")
    (close "extract-truncated-lines-with-X-value-greater-file-in")
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
    (open ?data-file-in "extract-data-from-lines-with-X-value-data-file-in" "r")
    (open ?X-values-file "extract-data-from-lines-with-X-value-X-values-file" "r")
    (open ?data-file-out "extract-data-from-lines-with-X-value-data-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (bind ?X-file-value (read "extract-data-from-lines-with-X-value-X-values-file"))
        ; (printout t ?X-file-value crlf)
        (bind ?datum (read "extract-data-from-lines-with-X-value-data-file-in"))
        (readline "extract-data-from-lines-with-X-value-data-file-in")
        (if (eq ?X-file-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "extract-data-from-lines-with-X-value-data-file-out" ?datum crlf)
        )
    )
    (close "extract-data-from-lines-with-X-value-data-file-out")
    (close "extract-data-from-lines-with-X-value-X-values-file")
    (close "extract-data-from-lines-with-X-value-data-file-in")
    ?lines-out-list
)

(deffunction extract-data-from-lines-with-X-value-greater (?data-file-in ?X-values-file ?file-len ?X-value ?data-file-out)
    ;;; extract data that have a value >= fixed value ?X-value in ?X-values-file
    ;;; record them in ?data-file-out
    (bind ?lines-out-list (create$))
    (bind ?datum-value 0)
    (bind ?datum "")
    (open ?data-file-in "extract-data-from-lines-with-X-value-greater-data-file-in" "r")
    (open ?X-values-file "extract-data-from-lines-with-X-value-greater-X-values-file" "r")
    (open ?data-file-out "extract-data-from-lines-with-X-value-greater-data-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (bind ?X-file-value (read "extract-data-from-lines-with-X-value-greater-X-values-file"))
        (readline "extract-data-from-lines-with-X-value-greater-X-values-file")
        (bind ?datum (read "extract-data-from-lines-with-X-value-greater-data-file-in"))
        (readline "extract-data-from-lines-with-X-value-greater-data-file-in")
        (if (>= ?X-file-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "extract-data-from-lines-with-X-value-greater-data-file-out" ?datum crlf)
        )
    )
    (close "extract-data-from-lines-with-X-value-greater-data-file-out")
    (close "extract-data-from-lines-with-X-value-greater-X-values-file")
    (close "extract-data-from-lines-with-X-value-greater-data-file-in")
    ?lines-out-list
)


;;; The data one wants to extract may sometimes occupy another place in the original file than the first:

(deffunction extract-nth-data-from-lines-with-X-value (?data-file-in ?X-values-file ?file-len ?nth-place ?X-value ?data-file-out)
    (bind ?skip (- ?nth-place 1))
    (bind ?lines-out-list (create$))
    (bind ?datum-value 0)
    (bind ?datum "")
    (open ?data-file-in "extract-nth-data-from-lines-with-X-value-data-file-in" "r")
    (open ?X-values-file "extract-nth-data-from-lines-with-X-value-X-values-file" "r")
    (open ?data-file-out "extract-nth-data-from-lines-with-X-value-data-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ; (printout t "#" ?i crlf)
        (loop-for-count ?skip (read "extract-nth-data-from-lines-with-X-value-X-values-file"))
        (bind ?X-file-value (read "extract-nth-data-from-lines-with-X-value-X-values-file"))
        (printout t ?X-file-value crlf)
        (bind ?datum (read "extract-nth-data-from-lines-with-X-value-data-file-in"))
        (readline "extract-nth-data-from-lines-with-X-value-data-file-in")
        (if (eq ?X-file-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "extract-nth-data-from-lines-with-X-value-data-file-out" ?datum crlf)
        )
    )
    (close "extract-nth-data-from-lines-with-X-value-data-file-out")
    (close "extract-nth-data-from-lines-with-X-value-X-values-file")
    (close "extract-nth-data-from-lines-with-X-value-data-file-in")
    ?lines-out-list
)

(deffunction extract-nth-data-from-lines-with-X-value-greater (?data-file-in ?X-values-file ?file-len ?nth-place ?X-value ?data-file-out)
    ;;; extract data that have a value >= fixed value ?X-value in ?X-values-file
    ;;; record them in ?data-file-out
    (bind ?skip (- ?nth-place 1))
    (bind ?lines-out-list (create$))
    (bind ?datum-value 0)
    (bind ?datum "")
    (open ?data-file-in "extract-nth-data-from-lines-with-X-value-greater-data-file-in" "r")
    (open ?X-values-file "extract-nth-data-from-lines-with-X-value-greater-X-values-file" "r")
    (open ?data-file-out "extract-nth-data-from-lines-with-X-value-greater-data-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        (printout t "#" ?i crlf)
        (loop-for-count ?skip (read "extract-nth-data-from-lines-with-X-value-greater-X-values-file"))
        (bind ?X-file-value (read "extract-nth-data-from-lines-with-X-value-greater-X-values-file"))
        (readline "extract-nth-data-from-lines-with-X-value-greater-X-values-file")
        (bind ?datum (read "extract-nth-data-from-lines-with-X-value-greater-data-file-in"))
        (readline "extract-nth-data-from-lines-with-X-value-greater-data-file-in")
        (if (>= ?X-file-value ?X-value) then
            (bind ?lines-out-list (create$ ?lines-out-list ?i))
            (printout "extract-nth-data-from-lines-with-X-value-greater-data-file-out" ?datum crlf)
        )
    )
    (close "extract-nth-data-from-lines-with-X-value-greater-data-file-out")
    (close "extract-nth-data-from-lines-with-X-value-greater-X-values-file")
    (close "extract-nth-data-from-lines-with-X-value-greater-data-file-in")
    ?lines-out-list
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Extract lines from a file, whose places are in a list
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction extract-lines-in-list (?file-in ?file-len ?list ?file-out)
    (open ?file-in "extract-lines-in-list-file-in" "r")
    (open ?file-out "extract-lines-in-list-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ;(printout t "#" ?i crlf)
        (bind ?file-in-data (readline "extract-lines-in-list-file-in"))
        (if (member$ ?i ?list) then (printout "extract-lines-in-list-file-out" ?file-in-data crlf))
    )
    (close "extract-lines-in-list-file-out")
    (close "extract-lines-in-list-file-in")
    TRUE
)


(deffunction extract-data-from-lines-in-list (?file-in ?file-len ?list ?file-out)
    (open ?file-in "extract-data-from-lines-in-list-file-in" "r")
    (open ?file-out "extract-data-from-lines-in-list-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ;(printout t "#" ?i crlf)
        (bind ?file-in-data (read "extract-data-from-lines-in-list-file-in"))
        (readline "file-in")
        (if (member$ ?i ?list) then (printout "extract-data-from-lines-in-list-file-out" ?file-in-data crlf))
    )
    (close "extract-data-from-lines-in-list-file-out")
    (close "extract-data-from-lines-in-list-file-in")
    TRUE
)


(deffunction extract-nth-data-from-lines-in-list (?file-in ?file-len ?nth-place ?list ?file-out)
    (open ?file-in "extract-nth-data-from-lines-in-list-file-in" "r")
    (open ?file-out "extract-nth-data-from-lines-in-list-file-out" "w")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        ;(printout t "#" ?i crlf)
        (loop-for-count (?i (- ?nth-place 1)) (read "extract-nth-data-from-lines-in-list-file-in"))
        (bind ?file-in-data (read "extract-nth-data-from-lines-in-list-file-in"))
        (readline "file-in")
        (if (member$ ?i ?list) then (printout "extract-nth-data-from-lines-in-list-file-out" ?file-in-data crlf))
    )
    (close "extract-nth-data-from-lines-in-list-file-out")
    (close "extract-nth-data-from-lines-in-list-file-in")
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
    (open ?X-values-file "extract-members-from-list-with-X-value-X-values-file" "r")
    (bind ?i 0)
    (while (< ?i ?file-len)
        (bind ?i (+ ?i 1))
        (bind ?X-values-file-value (string-to-field (readline "extract-members-from-list-with-X-value-X-values-file")))
        ;(readline "X-values-file")
        (printout t "#" ?i " " ?X-values-file-value crlf)
        (if (and (eq ?X-values-file-value ?X-value) (member$ ?i ?list)) then
            (bind ?filtered-list (create$ ?filtered-list ?i))
        )
    )
    (close "extract-members-from-list-with-X-value-X-values-file")
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
