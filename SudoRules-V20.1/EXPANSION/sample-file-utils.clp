
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / SAMPLE FILE UTILITIES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;         https://github.com/denis-berthier          ;;;
               ;;;           January 2006 - September 2025            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;; In the following names:
;;; - "SGS" stands for "Solution Grids Sample";
;;; - "SGMS" stands for "Solution Grids Multiple Sample".


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GENERAL FILE UTILITY FUNCTIONS FOR SAMPLES AND MULTI-SAMPLES
;;; This is an expansion to samples of generic file "file-utils"
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; A. Utilities for getting elementary data about some type
;;;    in a sample or multi-sample
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Number of elements of some type (can be any type, puzzles, numbers,...)

(deffunction SGS-sample-nb-elements-of-type (?type)
    (bind ?nb 0)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-i (str-cat ?USOL-i-DIR ?type ".txt"))
        (if (file-exists-and-nonempty ?file-i) then
            (bind ?nb (+ ?nb (file-length ?file-i)))
        )
    )
    ?nb
)

(deffunction SGMS-multi-sample-nb-elements-of-type (?type)
    (bind ?nb 0)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (printout t (SGS-sample-nb-elements-of-type ?type) crlf) ; in case one needs to have details
        (bind ?nb (+ ?nb (SGS-sample-nb-elements-of-type ?type)))
    )
    ?nb
)


;;; Min and max values of some type (apply to any numerical type)

(deffunction SGS-sample-min-value-of-type (?type)
    (bind ?min 1000000000)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-i (str-cat ?USOL-i-DIR ?type ".txt"))
        (if (file-exists-and-nonempty ?file-i) then
            (bind ?min (min ?min (file-min-value ?file-i)))
        )
    )
    ?min
)

(deffunction SGMS-multi-sample-min-value-of-type (?type)
    (bind ?min 1000000000)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (bind ?min (min ?min (SGS-sample-min-value-of-type ?type)))
    )
    ?min
)


(deffunction SGS-sample-max-value-of-type (?type)
    (bind ?max -1000000000)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-i (str-cat ?USOL-i-DIR ?type ".txt"))
        (if (file-exists-and-nonempty ?file-i) then
            (bind ?max (max ?max (file-max-value ?file-i)))
        )
    )
    ?max
)

(deffunction SGMS-multi-sample-max-value-of-type (?type)
    (bind ?max -1000000000)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (bind ?max (max ?max (SGS-sample-max-value-of-type ?type)))
    )
    ?max
)



;;; Number of files of some type (can be any type, puzzles, numbers,...)

(deffunction SGS-sample-nb-files-of-type (?type)
    (bind ?nb 0)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-i (str-cat ?USOL-i-DIR ?type ".txt"))
        (if (file-exists-and-nonempty ?file-i) then
            (bind ?nb (+ ?nb 1))
        )
    )
    ?nb
)

(deffunction SGMS-multi-sample-nb-files-of-type (?type)
    (bind ?nb 0)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (printout t (SGS-sample-nb-files-of-type ?type) crlf) ; in case one needs to have details
        (bind ?nb (+ ?nb (SGS-sample-nb-files-of-type ?type)))
    )
    ?nb
)



;;; Max length of files of some type (can be any type, puzzles, numbers,...)

(deffunction SGS-sample-max-length-of-type (?type)
    (bind ?max -1000000000)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-i (str-cat ?USOL-i-DIR ?type ".txt"))
        (if (file-exists-and-nonempty ?file-i) then
            (bind ?max-i (file-length ?file-i))
            (if (> ?max-i 1) then (printout t "   " ?i ": " ?max-i crlf))
            (bind ?max (max ?max ?max-i))
        )
    )
    ?max
)

(deffunction SGMS-multi-sample-max-length-of-type (?type)
    (bind ?max -1000000000)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (printout t ?*Sample-Name* ":" crlf)
        (bind ?max (max ?max (SGS-sample-max-length-of-type ?type)))
    )
    ?max
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. Utilities for collecting in a unique file
;;; all the elements of some type in a sample or multi-sample
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-sample-collect-elements-of-type (?type ?file-out)
    ;;; result is sent to ?file-out
    (open ?file-out "SGS-sample-collect-elements-of-type-file-out" "w")
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-i (str-cat ?USOL-i-DIR ?type ".txt"))
        (if (file-exists-and-nonempty ?file-i) then
            (open ?file-i "SGS-sample-collect-elements-of-type-file-i" "r")
            (loop-for-count (file-length ?file-i)
                (bind ?element (read "SGS-sample-collect-elements-of-type-file-i"))
                (readline "SGS-sample-collect-elements-of-type-file-i")
                (printout "SGS-sample-collect-elements-of-type-file-out" ?element crlf)
            )
            (close "SGS-sample-collect-elements-of-type-file-i")
        )
    )
    (close "SGS-sample-collect-elements-of-type-file-out")
)

(deffunction SGMS-multi-sample-collect-elements-of-type (?type ?file-out)
    ;;; result is sent to ?file-out
    (open ?file-out "SGMS-multi-sample-collect-elements-of-type-file-out" "w")
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (loop-for-count (?i 1 ?*Sample-Size*)
            (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
            (bind ?file-i (str-cat ?USOL-i-DIR ?type ".txt"))
            (if (file-exists-and-nonempty ?file-i) then
                (open ?file-i "SGMS-multi-sample-collect-elements-of-type-file-i" "r")
                (loop-for-count (file-length ?file-i)
                    (bind ?element (read "SGMS-multi-sample-collect-elements-of-type-file-i"))
                    (readline "SGMS-multi-sample-collect-elements-of-type-file-i")
                    (printout "SGMS-multi-sample-collect-elements-of-type-file-out" ?element crlf)
                )
                (close "SGMS-multi-sample-collect-elements-of-type-file-i")
            )
        )
    )
    (close "SGMS-multi-sample-collect-elements-of-type-file-out")
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; C. Utilities for collecting in a single file
;;;    all the elements of some type with X-value = or ≥ some given value
;;;    in a sample or multi-sample
;;; Examples of use:
;;; - collect lists of puzzles with B ≥ 12
;;; - collect their B ratings,
;;;     by setting ?type-in equal to ?X-values-type (and equal to B)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-sample-collect-lines-with-X-value (?type-in ?X-values-type ?X-value ?file-out)
    ;;; result is sent to ?file-out
    (open ?file-out "SGS-sample-collect-lines-with-X-value-file-out" "w")
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in-i (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?X-values-file-i (str-cat ?USOL-i-DIR ?X-values-type ".txt"))
        (if (file-exists-and-nonempty ?file-in-i) then
            (open ?file-in-i "SGS-sample-collect-lines-with-X-value-file-in-i" "r")
            (open ?X-values-file-i "SGS-sample-collect-lines-with-X-value-X-values-file-i" "r")
            (loop-for-count (?j 1 (file-length ?file-in-i))
                (bind ?line (readline "SGS-sample-collect-lines-with-X-value-file-in-i"))
                (bind ?value (eval (readline "SGS-sample-collect-lines-with-X-value-X-values-file-i")))
                (if (eq ?value ?X-value) then
                    (printout "SGS-sample-collect-lines-with-X-value-file-out" ?line crlf)
                )
            )
            (close "SGS-sample-collect-lines-with-X-value-X-values-file-i")
            (close "SGS-sample-collect-lines-with-X-value-file-in-i")
        )
    )
    (close "SGS-sample-collect-lines-with-X-value-file-out")
)

(deffunction SGMS-multi-sample-collect-lines-with-X-value (?type-in ?X-values-type ?X-value ?file-out)
    ;;; result is sent to ?file-out
    (open ?file-out "SGMS-multi-sample-collect-lines-with-X-value-file-out" "w")
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (loop-for-count (?i 1 ?*Sample-Size*)
            (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
            (bind ?file-in-i (str-cat ?USOL-i-DIR ?type-in ".txt"))
            (bind ?X-values-file-i (str-cat ?USOL-i-DIR ?X-values-type ".txt"))
            (if (file-exists-and-nonempty ?file-in-i) then
                (open ?file-in-i "SGMS-multi-sample-collect-lines-with-X-value-file-in-i" "r")
                (open ?X-values-file-i "SGMS-multi-sample-collect-lines-with-X-value-X-values-file-i" "r")
                (loop-for-count (?j 1 (file-length ?X-values-file-i))
                    (bind ?line (readline "SGMS-multi-sample-collect-lines-with-X-value-file-in-i"))
                    (bind ?value (eval (readline "SGMS-multi-sample-collect-lines-with-X-value-X-values-file-i")))
                    (if (eq ?value ?X-value) then
                        (printout "SGMS-multi-sample-collect-lines-with-X-value-file-out" ?line crlf)
                    )
                )
                (close "SGMS-multi-sample-collect-lines-with-X-value-X-values-file-i")
                (close "SGMS-multi-sample-collect-lines-with-X-value-file-in-i")
            )
        )
    )
    (close "SGMS-multi-sample-collect-lines-with-X-value-file-out")
)



(deffunction SGS-sample-collect-lines-with-X-value-greater-than (?type-in ?X-values-type ?X-value ?file-out)
    ;;; result is sent to ?file-out
    (open ?file-out "SGS-sample-collect-lines-with-X-value-greater-than-file-out" "w")
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in-i (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?X-values-file-i (str-cat ?USOL-i-DIR ?X-values-type ".txt"))
        (if (file-exists-and-nonempty ?file-in-i) then
            (open ?file-in-i "SGS-sample-collect-lines-with-X-value-greater-than-file-in-i" "r")
            (open ?X-values-file-i "SGS-sample-collect-lines-with-X-value-greater-than-X-values-file-i" "r")
            (loop-for-count (?j 1 (file-length ?X-values-file-i))
                (bind ?line (readline "SGS-sample-collect-lines-with-X-value-greater-than-file-in-i"))
                (bind ?value (eval (readline "SGS-sample-collect-lines-with-X-value-greater-than-X-values-file-i")))
                (if (>= ?value ?X-value) then
                    (printout "SGS-sample-collect-lines-with-X-value-greater-than-file-out" ?line crlf)
                )
            )
            (close "SGS-sample-collect-lines-with-X-value-greater-than-X-values-file-i")
            (close "SGS-sample-collect-lines-with-X-value-greater-than-file-in-i")
        )
    )
    (close "SGS-sample-collect-lines-with-X-value-greater-than-file-out")
)

(deffunction SGMS-multi-sample-collect-lines-with-X-value-greater-than (?type-in ?X-values-type ?X-value ?file-out)
    ;;; result is sent to ?file-out
    (open ?file-out "SGMS-multi-sample-collect-lines-with-X-value-greater-than-file-out" "w")
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (loop-for-count (?i 1 ?*Sample-Size*)
             (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
             (bind ?file-in-i (str-cat ?USOL-i-DIR ?type-in ".txt"))
             (bind ?X-values-file-i (str-cat ?USOL-i-DIR ?X-values-type ".txt"))
             (if (file-exists-and-nonempty ?file-in-i) then
                 (open ?file-in-i "SGMS-multi-sample-collect-lines-with-X-value-greater-than-file-in-i" "r")
                 (open ?X-values-file-i "SGMS-multi-sample-collect-lines-with-X-value-greater-than-X-values-file-i" "r")
                 (loop-for-count (?j 1 (file-length ?X-values-file-i))
                     (bind ?line (readline "SGMS-multi-sample-collect-lines-with-X-value-greater-than-file-in-i"))
                     (bind ?value (eval (readline "SGMS-multi-sample-collect-lines-with-X-value-greater-than-X-values-file-i")))
                     (if (>= ?value ?X-value) then
                         (printout "SGMS-multi-sample-collect-lines-with-X-value-greater-than-file-out" ?line crlf)
                     )
                 )
                 (close "SGMS-multi-sample-collect-lines-with-X-value-greater-than-X-values-file-i")
                 (close "SGMS-multi-sample-collect-lines-with-X-value-greater-than-file-in-i")
             )
         )
    )
    (close "SGMS-multi-sample-collect-lines-with-X-value-greater-than-file-out")
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; D. Utilities for comparing the values of two numerical types
;;;    in a sample or multi-sample
;;;    Beware that the values must be relative to the same puzzles
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction differences-between-files (?file1 ?file2)
    (bind ?min-diff 1000000)
    (bind ?max-diff -1000000)
    (open ?file1 "file1" "r")
    (open ?file2 "file2" "r")
    (bind ?i 0)
    (bind ?file-length (min (file-length ?file1) (file-length ?file2)))
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?diff
            (-  (string-to-field (readline "file2"))
                (string-to-field (readline "file1"))
            )
        )
        (bind ?min-diff (min ?min-diff ?diff))
        (bind ?max-diff (max ?max-diff ?diff))
    )
    (close "file2")
    (close "file1")
    (create$ ?min-diff ?max-diff)
)


(deffunction SGS-sample-differences-between-types-for-n-solution-grids-after-first-p (?p ?n ?type1 ?type2)
    (bind ?SGS-min-diff 1000000)
    (bind ?SGS-max-diff -1000000)
    (loop-for-count (?i (+ ?p 1) (+ ?p ?n))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file1 (str-cat ?USOL-i-DIR ?type1 ".txt"))
        (bind ?file2 (str-cat ?USOL-i-DIR ?type2 ".txt"))
        (if (and (file-exists ?file1) (not (empty-file ?file1))
                (file-exists ?file2) (not (empty-file ?file2))
            )
            then
            (bind ?res (differences-between-files ?file1 ?file2))
            (bind ?SGS-min-diff (min ?SGS-min-diff (nth$ 1 ?res)))
            (bind ?SGS-max-diff (max ?SGS-max-diff (nth$ 2 ?res)))
        )
    )
    (printout t "SGS-min-diff = " ?SGS-min-diff "; SGS-max-diff = " ?SGS-max-diff crlf)
    (create$ ?SGS-min-diff ?SGS-max-diff)
)


(deffunction SGS-sample-differences-between-types (?type1 ?type2)
    (SGS-sample-differences-between-types-for-n-solution-grids-after-first-p 0 ?*Sample-Size* ?type1 ?type2)
)

(deffunction SGMS-multi-sample-differences-between-types (?type1 ?type2)
    (bind ?SGMS-min-diff 1000000)
    (bind ?SGMS-max-diff -1000000)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (bind ?res (SGS-sample-differences-between-types ?type1 ?type2))
        (bind ?SGMS-min-diff (min ?SGMS-min-diff (nth$ 1 ?res)))
        (bind ?SGMS-max-diff (max ?SGMS-max-diff (nth$ 2 ?res)))
    )
    (printout t "SGMS-min-diff = " ?SGMS-min-diff "; SGMS-max-diff = " ?SGMS-max-diff crlf)
    (create$ ?SGMS-min-diff ?SGMS-max-diff)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; E. Utilities for renaming, copying or removing all the files of some type(s)
;;;    in a sample or multi-sample
;;;    Make sure you don't remove essential files
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-sample-move-files-of-type (?type-in ?type-out)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (if (file-exists-and-nonempty ?file-in) then (rename ?file-in ?file-out))
    )
)

(deffunction SGMS-multi-sample-move-files-of-type (?type-in ?type-out)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-sample-move-files-of-type ?type-in ?type-out)
    )
)


(deffunction SGS-sample-copy-files-of-type (?type-in ?type-out)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (if (file-exists-and-nonempty ?file-in) then (OS-copy-file ?file-in ?file-out))
    )
)

(deffunction SGMS-multi-sample-copy-files-of-type (?type-in ?type-out)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-sample-copy-files-of-type ?type-in ?type-out)
    )
)



;;; MAKE SURE YOU REALLY WANT TO ERASE ALL THE FILES OF TYPE ?type-in
;;; THERE'S NO POSSIBLE RECOVERY.
(deffunction SGS-sample-remove-files-of-type (?type-in)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (if (file-exists ?file-in) then (remove ?file-in))
    )
)

;;; MAKE SURE YOU REALLY WANT TO ERASE ALL THE FILES OF TYPE ?type-in
;;; THERE'S NO POSSIBLE RECOVERY
;;; HERE, YOU GET THE CHOICE OF CANCELLING
(deffunction SGMS-multi-sample-remove-files-of-type (?type-in)
    (printout t
        "ARE YOU SURE YOU  WANT TO ERASE ALL THE FILES OF TYPE " ?type-in "?" crlf
        "THERE'S NO POSSIBLE RECOVERY." crlf
        "Press lower case y to continue, any other character to cancel..." crlf
    )
    (if (eq (get-char t) 121)
        then
        (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
            (multi-sample-switch-to-nth-sample ?nth-sample)
            (SGS-sample-remove-files-of-type ?type-in)
        )
        else
        (printout t "You cancelled the removal of any file." crlf)
    )
)



;;; MAKE SURE YOU REALLY WANT TO ERASE ALL THE FILES OF ALL THE TYPES IN $?types-list;
;;; THERE'S NO POSSIBLE RECOVERY
(deffunction SGS-sample-remove-files-of-types-for-n-solution-grids-after-first-p (?p ?n $?types-list)
    (bind ?len (length$ ?types-list))
    (loop-for-count (?i (+ ?p 1) (+ ?p ?n))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (loop-for-count (?j 1 ?len)
            (bind ?file (str-cat ?USOL-i-DIR (nth$ ?j ?types-list) ".txt"))
            (if (file-exists ?file) then
                (printout t "removing file " ?file crlf)
                (remove ?file)
            )
        )
    )
)

(deffunction SGS-sample-remove-files-of-types ($?types-list)
    (SGS-sample-remove-files-of-types-for-n-solution-grids-after-first-p 0 ?*Sample-Size* $?types-list)
)



;;; MAKE SURE YOU REALLY WANT TO ERASE ALL THE FILES OF ALL THE TYPES IN $?types-list;
;;; THERE'S NO POSSIBLE RECOVERY
;;; HERE, YOU GET THE CHOICE OF CANCELLING
(deffunction SGMS-multi-sample-remove-files-of-types ($?types-list)
    (printout t
        "ARE YOU SURE YOU  WANT TO ERASE ALL THE FILES OF ANY TYPE IN " ?types-list "?" crlf
        "THERE'S NO POSSIBLE RECOVERY." crlf
        "Press lower case y to continue, any other character to cancel..." crlf
    )
    (if (eq (get-char t) 121)
        then
        (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
            (multi-sample-switch-to-nth-sample ?nth-sample)
            (SGS-sample-remove-files-of-types $?types-list)
        )
        else
        (printout t "You cancelled the removal of any file." crlf)
    )
)



