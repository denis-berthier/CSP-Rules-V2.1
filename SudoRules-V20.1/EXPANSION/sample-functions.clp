
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / SAMPLE FUNCTIONS
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
;;; A. GENERAL UTILITY FUNCTIONS FOR COMPARING PUZZLES IN A SAMPLE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction SGS-sample-puzzles-of-type1-not-in-type2-for-n-solution-grids-after-first-p (?type1 ?type2 ?p ?n)
    ;;; result is sent to the terminal
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file1 (str-cat ?USOL-i-DIR ?type1 ".txt"))
        (bind ?file2 (str-cat ?USOL-i-DIR ?type2 ".txt"))
        (puzzles-of-file1-not-in-file2 ?file1 ?file2)
    )
    (printout t "type1-not-in-type2 total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)


;;; Utility for finding puzzles of some type with some expansion in a puzzle

(deffunction SGS-sample-puzzles-of-type1-with-expansion-in-puzzle (?type1 ?puzzle)
    ;;; result is sent to the terminal
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file1 (str-cat ?USOL-i-DIR ?type1 ".txt"))
        (puzzles-of-file-with-expansion-in-puzzle ?file1 ?puzzle)
    )
)


;;; Utilities for finding "terminal" puzzles of some type

(deffunction SGS-sample-puzzles-of-type1-with-no-expansion-of-type2 (?type1 ?type2 ?type-out)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file1 (str-cat ?USOL-i-DIR ?type1 ".txt"))
        (bind ?file2 (str-cat ?USOL-i-DIR ?type2 ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (puzzles-of-file1-with-no-expansion-in-file2 ?file1 ?file2 ?file-out)
    )
)

(deffunction SGS-sample-puzzles-of-type1-with-no-strict-expansion-of-type2 (?type1 ?type2 ?type-out)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file1 (str-cat ?USOL-i-DIR ?type1 ".txt"))
        (bind ?file2 (str-cat ?USOL-i-DIR ?type2 ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (puzzles-of-file1-with-no-strict-expansion-in-file2 ?file1 ?file2 ?file-out)
    )
)


(deffunction SGS-sample-puzzles-of-type1-that-are-strict-expands-of-type2 (?type1 ?type2 ?type-out)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file1 (str-cat ?USOL-i-DIR ?type1 ".txt"))
        (bind ?file2 (str-cat ?USOL-i-DIR ?type2 ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (strict-expands-in-file1-of-some-puzzle-in-file2 ?file1 ?file2 ?file-out)
    )
)

(deffunction SGS-sample-puzzles-of-type1-that-are-strict-expand-of-no-type2 (?type1 ?type2 ?type-out)
    (loop-for-count (?i 1 ?*Sample-Size*)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file1 (str-cat ?USOL-i-DIR ?type1 ".txt"))
        (bind ?file2 (str-cat ?USOL-i-DIR ?type2 ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (puzzles-of-file1-that-are-not-strict-expands-of-any-puzzle-in-file2 ?file1 ?file2 ?file-out)
    )
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. BASIC ACTIONS SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; - compute BRT-expands
;;; - eliminate duplicates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; For each unique solution grid, compute all the BRT-expands

(deffunction SGS-sample-compute-BRT-expands-for-Usol-i (?type-in ?type-out ?i ?USOL-i-DIR)
    (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
    (if (and (file-exists ?file-in) (not (empty-file ?file-in))) then
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (SHC-BRT-expand ?file-in ?file-out)
    )
)

(deffunction SGS-sample-compute-BRT-expands-for-n-solution-grids-after-first-p (?type-in ?type-out ?p ?n)
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        ;;; compute all the min-expands for ?Usol-i
        (SGS-sample-compute-BRT-expands-for-Usol-i ?type-in ?type-out ?i ?USOL-i-DIR)
    )
    (printout t "BRT-expands total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)

(deffunction SGS-sample-compute-BRT-expands (?type-in ?type-out)
    (SGS-sample-compute-BRT-expands-for-n-solution-grids-after-first-p ?type-in ?type-out 0 ?*Sample-Size*)
)

(deffunction SGMS-multi-sample-compute-BRT-expands (?type-in ?type-out)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-sample-compute-BRT-expands ?type-in ?type-out)
    )
)



;;; For each unique solution grid, eliminate duplicates

(deffunction SGS-sample-eliminate-duplicates-for-Usol-i (?type-in ?type-out ?i ?USOL-i-DIR)
    (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
    (if (and (file-exists ?file-in) (not (empty-file ?file-in))) then
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        ;(GSF-eliminate-isomorphs ?file-in ?file-out)
        ; on 2025 July 03, replaced the above function by my own:
        (eliminate-duplicates-from-file ?file-in ?file-out)
    )
)


(deffunction SGS-sample-eliminate-duplicates-for-n-solution-grids-after-first-p (?type-in ?type-out ?p ?n)
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        (show-progression ?i)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (SGS-sample-eliminate-duplicates-for-Usol-i ?type-in ?type-out ?i ?USOL-i-DIR)
    )
    (printout t "eliminate duplicates total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)

(deffunction SGS-sample-eliminate-duplicates (?type-in ?type-out)
    (SGS-sample-eliminate-duplicates-for-n-solution-grids-after-first-p ?type-in ?type-out 0 ?*Sample-Size*)
)

(deffunction SGMS-multi-sample-eliminate-duplicates (?type-in ?type-out)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-sample-eliminate-duplicates ?type-in ?type-out)
    )
)






;;; not used
(deffunction SGS-sample-compute-unique-BRT-expands-for-Usol-i (?type-in ?type-out ?i ?USOL-i-DIR)
    (bind ?type-tmp (str-cat ?USOL-i-DIR ?type-out "-tmp.txt"))
    (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
    (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
    (bind ?tmp (str-cat ?USOL-i-DIR ?type-tmp ".txt"))
    (SGS-sample-compute-BRT-expands-for-Usol-i ?type-in ?type-tmp ?i ?USOL-i-DIR)
    ;(GSF-eliminate-isomorphs ?file-in ?file-out)
    ; on 2025 July 03, replaced by my own:
    (eliminate-duplicates-from-file ?tmp ?file-out)
    (remove ?tmp)
    (bind ?nb-Umins-i (file-length ?file-out))
    (printout t ?i ": " ?nb-Umins-i " unique " ?type-out crlf)
    ?nb-Umins-i
)

(deffunction SGS-sample-compute-unique-BRT-expands-for-n-solution-grids-after-first-p (?type-in ?type-out ?p ?n)
    (bind ?sum-nb-Umins 0)
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        ;;; eliminate duplicates for ?Usol-i
        (bind ?sum-nb-Umins
            (+ ?sum-nb-Umins
                (SGS-sample-compute-unique-BRT-expands-for-Usol-i ?type-in ?type-out ?i ?USOL-i-DIR)
            )
        )
    )
    (printout t "compute unique BRT-expands total time = " (seconds-to-hours (- (time) ?t0))  crlf)
    (printout t ?sum-nb-Umins " unique " ?type-out  crlf)
    ?sum-nb-Umins
)

(deffunction SGS-sample-compute-unique-BRT-expands (?type-in ?type-out)
    (SGS-sample-compute-unique-BRT-expands-for-n-solution-grids-after-first-p
        ?type-in ?type-out 0 ?*Sample-Size*
    )
)

(deffunction SGMS-multi-sample-compute-unique-BRT-expands (?type-in ?type-out)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-sample-compute-unique-BRT-expands ?type-in ?type-out)
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; C. CROSS-SATURATE MINIMALS AND THEIR MIN-EXPANDS,
;;;    SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; - compute all the minimals of the BRT-expands
;;; - filter those in T&E(3)
;;; - eliminate duplicates
;;; - filter the new ones
;;; - compute the BRT-expands of the new ones
;;; - eliminate duplicates
;;; - filter the new ones
;;; - iterate: find all their minimals...
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; For each unique solution grid, compute all the minimals of the MEU ==> all-mins-g1

(deffunction SGS-sample-find-minimals-for-n-solution-grids-after-first-p (?expands-type ?new-mins-type ?p ?n)
    (bind ?t0 (time))
    (bind ?nb-mins 0)
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (printout t ?i crlf)
        ;;; find the minimals of the ?expands-type puzzles for USOL-i
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?expands-file-i (str-cat ?USOL-i-DIR ?expands-type ".txt"))
        (bind ?new-mins-file-i (str-cat ?USOL-i-DIR ?new-mins-type ".txt"))
        (GSF-find-all-unique-minimals-not-in-TE0 ?expands-file-i ?new-mins-file-i)
    )
    (printout t "find minimals total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)

(deffunction SGS-sample-find-minimals (?expands-type ?new-mins-type)
    (SGS-sample-find-minimals-for-n-solution-grids-after-first-p ?expands-type ?new-mins-type 0 ?*Sample-Size*)
)

;;; find their T&E-depths ==> all-mins-g1-TEd

;;; filter those at depth 3 ==> mins-g1-d3

;;; filter the new ones ==> mins-g1

;;; remove the temporary files all-mins-g1 all-mins-g1-TEd mins-g1-d3


;;; check saturation of the data

(deffunction SGS-sample-diff-for-n-solution-grids-after-first-p (?type1 ?type2 ?p ?n)
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (printout t ?i crlf)
        ;;; find the minimals of the ?expands-type puzzles for USOL-i
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file1-i (str-cat ?USOL-i-DIR ?type1 ".txt"))
        (bind ?file2-i (str-cat ?USOL-i-DIR ?type2 ".txt"))
        (printout t ?i crlf)
        (OS-diff ?file1-i ?file2-i)
    )
)

;;; Because of long computation times for minimals, this is generally not done in large collections





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; D. 1+BRT EXPANSIONS SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; For each unique solution grid ?Usol-i (restricted to ?q grids after ?p):
;;; - compute the 1-expands of all the non-redudant min-expands (MEU) ==> local file p1.txt
;;; - eliminate redudant puzzles ==> local file p1U.txt
;;; - compute their T&E-depths ==> local file p1U-TEd.txt
;;;
;;; - extract the puzzles at T&E-depth 3 ==> local file p1U-d3.txt
;;; - compute their BRT-expands ==> local file p1U-d3-E
;;; - eliminate duplicates ==> local file p1EU-d3
;;;
;;; - extract the puzzles at T&E-depth 2 ==> local file p1U-d2.txt
;;; - compute their BRT-expands ==> local file p1U-d2-E
;;; - eliminate duplicates ==> local file p1EU-d2
;;; - extract the puzzles with BxB ≥ 7 ==> local file p1EU-B7Bp
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; compute the 1-expands of a file of puzzles, all with the same solution:

(deffunction SGS-sample-compute-1-expands-within-sol (?puzzles-file ?sol ?expands-file)
    ;;; note that ?expands-file is not created if ?puzzles-file is non-existent or empty
    (if (and (file-exists ?puzzles-file) (not (empty-file ?puzzles-file))) then
        (bind ?length (file-length ?puzzles-file))
        (open ?puzzles-file "SGS-sample-compute-1-expands-within-sol-puzzles-file" "r")
        (open ?expands-file "SGS-sample-compute-1-expands-within-sol-expands-file" "w")
        (loop-for-count (?i 1 ?length)
            (bind ?puzzle (readline "SGS-sample-compute-1-expands-within-sol-puzzles-file"))
            (bind ?addable-clues (sudoku-strings-minus ?sol ?puzzle))
            (loop-for-count (?j 1 81)
                (bind ?jth-poss-add (sub-string ?j ?j ?addable-clues))
                (if (neq ?jth-poss-add ".") then
                    ;;; a 1-expand is obtained by adding ?jth-poss-add in the jth position  of ?puzzle
                    (printout "SGS-sample-compute-1-expands-within-sol-expands-file"
                        (str-cat
                            (sub-string 1 (- ?j 1) ?puzzle)
                            ?jth-poss-add
                            (sub-string (+ ?j 1) 81 ?puzzle)
                        )
                        crlf
                    )
                )
            )
        )
        (close "SGS-sample-compute-1-expands-within-sol-expands-file")
        (close "SGS-sample-compute-1-expands-within-sol-puzzles-file")
    )
)


;;; compute the 1-expands of all the puzzles of some type in the sample:

(deffunction SGS-sample-compute-1-expands-for-n-solution-grids-after-first-p (?type-in ?type-out ?p ?n)
    ;;; note that the ?expands-file is not created when ?puzzles-file is non-existent or empty
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?Usol-i-file (str-cat ?USOL-i-DIR "SOLN.txt"))
        (bind ?Usol-i (read-solution-from-unique-file ?Usol-i-file))

        ;;; find the 1-expands of the ?type-in puzzles for USOL-i
        (bind ?puzzles-i (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?expands-i (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (SGS-sample-compute-1-expands-within-sol ?puzzles-i ?Usol-i ?expands-i)
    )
    (printout t "1-expands total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)

(deffunction SGS-sample-compute-1-expands (?type-in ?type-out)
    (SGS-sample-compute-1-expands-for-n-solution-grids-after-first-p
        ?type-in ?type-out 0 ?*Sample-Size*
    )
)



;;; compute the SHC classifications of all the puzzles of some type in the sample
;;; ?classif must be exactly as in SHC: TE-depth, B, BxB, or BxBB

(deffunction SGS-sample-compute-classif-for-n-solution-grids-after-first-p (?classif ?param ?type-in ?type-out ?p ?n)
    ;;; ?classif must be exactly as in SHC: TE-depth, B, BxB, or BxBB
    ;;; note that ?file-out is not created if ?puzzles-file is non-existent or empty
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (bind ?tmp-file (str-cat ?USOL-i-DIR ?type-out "-tmp.txt"))
        (if (and (file-exists ?file-in) (not (empty-file ?file-in))) then
            (SHC-classif ?classif ?param ?file-in ?file-out ?tmp-file)
        )
    )
    (printout t crlf "compute " ?classif " total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)

(deffunction SGS-sample-compute-classif (?classif ?param ?type-in ?type-out)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p
        ?classif ?param ?type-in ?type-out 0 ?*Sample-Size*
    )
)



;;; extract all the puzzles with X-classif equal to ?X-value:

(deffunction SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p (?type-in ?X-classif-type ?type-out ?X-value ?p ?n)
    ;;; note that ?file-out is not created if ?puzzles-file is non-existent or empty
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?X-values-file (str-cat ?USOL-i-DIR ?X-classif-type ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (if (file-exists-and-nonempty ?file-in) then
            (extract-data-from-lines-with-X-value ?file-in ?X-values-file (file-length ?file-in) ?X-value ?file-out)
        )
        ;;; if the result is empty, remove the file
        (if (nonexistent-or-empty-file ?file-out) then (remove ?file-out))
    )
)

(deffunction SGS-sample-extract-classif-with-X-value (?type-in ?X-classif-type ?type-out ?X-value)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p
        ?type-in ?X-classif-type ?type-out ?X-value 0 ?*Sample-Size*
    )
)

    


;;; extract all the puzzles with X-classif equal to or greater than ?X-value:

(deffunction SGS-sample-extract-classif-with-X-value-greater-than-for-n-solution-grids-after-first-p (?type-in ?X-classif-type ?type-out ?X-value ?p ?n)
    ;;; note that ?file-out is not created if ?puzzles-file is non-existent or empty
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?X-values-file (str-cat ?USOL-i-DIR ?X-classif-type ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (if (file-exists-and-nonempty ?file-in) then
            (extract-data-from-lines-with-X-value-greater
                ?file-in ?X-values-file (file-length ?file-in) ?X-value ?file-out
            )
        )
        ;;; if the result is empty, remove the file
        (if (nonexistent-or-empty-file ?file-out) then (remove ?file-out))
    )
)

(deffunction SGS-sample-extract-classif-with-X-value-greater-than (?type-in ?X-classif-type ?type-out ?X-value)
    (SGS-sample-extract-classif-with-X-value-greater-than-for-n-solution-grids-after-first-p
        ?type-in ?X-classif-type ?type-out ?X-value 0 ?*Sample-Size*
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; E. MINIMALS
;;;
;;; - compute the non-T&E(0) minimals (?type-in ?type-out ?p ?n)
;;;   T&E(0) minimals are a priori excluded because T&E(0) puzzles are trivial
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; note that ?file-out is not created if ?file-in is non-existent or empty

(deffunction SGS-sample-compute-minimals-for-n-solution-grids-after-first-p (?type-in ?type-out ?p ?n)
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (printout t ?i crlf)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (if (file-exists-and-nonempty ?file-in) then
            (GSF-find-all-unique-minimals-not-in-TE0 ?file-in ?file-out)
        )
        (if (nonexistent-or-empty-file ?file-out) then (remove ?file-out))
    )
    (printout t crlf "compute minimals total time = " (seconds-to-hours (- (time) ?t0))  crlf)
    (printout t (SGS-sample-nb-elements-of-type ?type-out) " " ?type-out crlf)
)

(deffunction SGS-sample-compute-minimals (?type-in ?type-out)
    (SGS-sample-compute-minimals-for-n-solution-grids-after-first-p
        ?type-in ?type-out 0 ?*Sample-Size*
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; F. TERMINAL PUZZLES
;;; - find the puzzles in T&E(n) that have no strict expansion in T&E(n)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction extract-terminal-puzzles-of-expansion-phase-k-for-Usol-i (?i ?USOL-i-DIR ?k ?type1-in ?type2-in ?type-out)
    ;;; puzzles of type1 with no 1-expand of type2
    (bind ?nbi 0)
    (bind ?file1 (str-cat ?USOL-i-DIR ?type1-in ".txt"))
    (bind ?file2 (str-cat ?USOL-i-DIR ?type2-in ".txt"))
    (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
    (if (file-exists-and-nonempty ?file1) then
        (bind ?len1 (file-length ?file1))
        (if (nonexistent-or-empty-file ?file2)
            then
            (OS-copy-file ?file1 ?file-out) ;;; all the puzzles in ?file1 are terminal
            else
            ;;; create ?file-out if it didn't exist and fill it ???? ?list-out makes it less efficient
            (open ?file-out "extract-terminal-puzzles-of-expansion-phase-k-for-Usol-i-file-out" "w")
            (open ?file1 "extract-terminal-puzzles-of-expansion-phase-k-for-Usol-i-file1" "r")
            (loop-for-count ?len1
                (bind ?puz1 (readline "extract-terminal-puzzles-of-expansion-phase-k-for-Usol-i-file1"))
                ;;; if none of the 1-expands of ?puz1 is in ?file2
                (if (not (puzzle-strictly-in-some-puzzle-in-file ?puz1 ?file2)) then
                    (printout "extract-terminal-puzzles-of-expansion-phase-k-for-Usol-i-file-out" ?puz1 crlf)
                )
            )
            (close "extract-terminal-puzzles-of-expansion-phase-k-for-Usol-i-file-out")
            (close "extract-terminal-puzzles-of-expansion-phase-k-for-Usol-i-file1")
            ;;; in case ?file-out is not empty, then delete it
            (if (empty-file ?file-out) then (remove ?file-out))
        )
    )
)


(deffunction SGS-sample-extract-terminal-puzzles-of-expansion-phase-k-for-n-solution-grids-after-first-p (?k ?type1-in ?type2-in ?type-out ?p ?n)
    ;;; puzzles of type1 with no 1-expand of type2
    (bind ?t0 (time))
    (bind ?sum-nb 0)
    (open ?*Usols-file*
        "SGS-sample-extract-terminal-puzzles-of-expansion-phase-k-for-n-solution-grids-after-first-p-Usols" "r"
    )
    ;;; read the first ?p solutions:
    (loop-for-count (?j 1 ?p)
        (readline "SGS-sample-extract-terminal-puzzles-of-expansion-phase-k-for-n-solution-grids-after-first-p-Usols")
    )
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (extract-terminal-puzzles-of-expansion-phase-k-for-Usol-i ?i ?USOL-i-DIR ?k ?type1-in ?type2-in ?type-out)
    )
    (close "SGS-sample-extract-terminal-puzzles-of-expansion-phase-k-for-n-solution-grids-after-first-p-Usols")
    ;;; used for debug
    ; (printout t crlf "expansion-phase " ?k crlf)
    ;(printout t "extract terminal puzzles of expansion-phase " ?k " total time = " (seconds-to-hours (- (time) ?t0))  crlf)
    ;(printout t "type1-in = " ?type1-in " type2-in = " ?type2-in " type-out = " ?type-out crlf)
)

(deffunction SGS-sample-extract-terminal-puzzles-of-expansion-phase-k (?k ?type1-in ?type2-in ?type-out)
    (SGS-sample-extract-terminal-puzzles-of-expansion-phase-k-for-n-solution-grids-after-first-p
        ?k ?type1-in ?type2-in ?type-out 0 ?*Sample-Size*
    )
)



(deffunction SGS-sample-extract-terminal-puzzles-upto-expansion-phase-k-for-n-solution-grids-after-first-p (?k ?list-types-in ?list-types-out ?p ?n)
    ;;; ?k doesn't count the 0 expansion-phase:
    ;;; if ?list-types-in is ".../MEU.txt" ".../p1EU-d3.txt" ... ".../p9EU-d3.txt"
    ;;; ?k must be 9
    ;;; ?list-types-out must have length ?list-types-in minus 1
    ;;; In order to get all the terminal puzzles, one must make sure that
    ;;; the last expansion-phase (here ".../p9EU-d3.txt") is empty for all the grids in the sample.
    
    (bind ?t0 (time))
    (bind ?sum-all-expansion-phases 0)
    (if (or (neq (length$ ?list-types-in) (+ ?k 1)) (neq (length$ ?list-types-out) ?k))
        then (printout t "nb-expansion-phases " ?k " incompatible with number of files" crlf) (return FALSE)
        else
        (loop-for-count (?expansion-phase 0 (- ?k 1))
            (bind ?type1-in (nth$ (+ ?expansion-phase 1) ?list-types-in))
            (bind ?type2-in (nth$ (+ ?expansion-phase 2) ?list-types-in))
            (bind ?type-out (nth$ (+ ?expansion-phase 1) ?list-types-out))
            (SGS-sample-extract-terminal-puzzles-of-expansion-phase-k-for-n-solution-grids-after-first-p ?k ?type1-in ?type2-in ?type-out ?p ?n)
        )
    )
    (printout t "extract terminal puzzles at all expansion-phases total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)

(deffunction SGS-sample-extract-terminal-puzzles-upto-expansion-phase-k (?k ?list-types-in ?list-types-out)
    (SGS-sample-extract-terminal-puzzles-upto-expansion-phase-k-for-n-solution-grids-after-first-p
        ?k ?list-types-in ?list-types-out 0 ?*Sample-Size*
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; G. COMPUTE THE MIN-EXPANDS THAT ARE ISOLATED OR NOT ISOLATED
;;;
;;; For each unique solution grid ?Usol-i:
;;; - find all the non-isolated puzzles,
;;;    i.e. puzzles of type "MEU" that are the strict expand of some puzzle of type MEU
;;; - find all the isolated puzzles,
;;;    i.e. puzzles of type "MEU" that are the strict expand of no MEU puzzle
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-sample-compute-non-isolated-puzzles ()
    (SGS-sample-puzzles-of-type1-that-are-strict-expands-of-type2 "MEU" "MEU" "Non-Isol") 
    (bind ?nb (SGS-sample-nb-elements-of-type "Non-Isol"))
    (printout t ?nb crlf)
    ?nb
)

(deffunction SGMS-multi-sample-compute-non-isolated-puzzles ()
    (bind ?nb 0)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (bind ?nb (+ ?nb (SGS-sample-compute-non-isolated-puzzles)))
    )
    ?nb
)


(deffunction SGS-sample-compute-isolated-puzzles ()
    (SGS-sample-puzzles-of-type1-that-are-strict-expand-of-no-type2 "MEU" "MEU" "Isol")
    (bind ?nb (SGS-sample-nb-elements-of-type "Isol"))
    (printout t ?nb crlf)
    ?nb
)

(deffunction SGMS-multi-sample-compute-isolated-puzzles ()
    (bind ?nb 0)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (bind ?nb (+ ?nb (SGS-sample-compute-isolated-puzzles)))
    )
    ?nb
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; H. BASIC ACTIONS SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; - compute the nb-clues and nb-cands for all the puzzles of some type
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; For each unique solution grid separately, compute the nb-clues and nb-cands for all the puzzles of some type

(deffunction SGS-sample-record-nb-clues-at-start-for-n-solution-grids-after-first-p (?type ?p ?n)
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?puzzles-file-i (str-cat ?USOL-i-DIR ?type ".txt"))
        (if (file-exists-and-nonempty ?puzzles-file-i) then
            (bind ?file-length-i (file-length ?puzzles-file-i))
            (bind ?nb-clues-file-i (str-cat ?USOL-i-DIR ?type "-clues.txt"))
            (record-nb-clues-at-start ?puzzles-file-i ?file-length-i ?nb-clues-file-i)
        )
        (show-progression ?i)
    )
    (printout t crlf "Sample record-nb-clues-at-start total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)

(deffunction SGS-sample-record-nb-clues-at-start (?type)
    (SGS-sample-record-nb-clues-at-start-for-n-solution-grids-after-first-p ?type 0 ?*Sample-Size*)
)

(deffunction SGMS-multi-sample-record-nb-clues-at-start (?type)
    (bind ?t0 (time))
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (printout t crlf ?nth-sample ": ")
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-sample-record-nb-clues-at-start-for-n-solution-grids-after-first-p ?type 0 ?*Sample-Size*)
    )
    (printout t crlf "Multi-sample record-nb-clues-at-start total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)



(deffunction SGS-sample-record-nb-cands-at-start-for-n-solution-grids-after-first-p  (?type ?p ?n)
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (if (file-exists-and-nonempty ?puzzles-file-i) then
            (bind ?puzzles-file-i (str-cat ?USOL-i-DIR ?type ".txt"))
            (bind ?file-length-i (file-length ?puzzles-file-i))
            (bind ?nb-cands-file-i (str-cat ?USOL-i-DIR ?type "-cands.txt"))
            (record-nb-cands-at-start ?puzzles-file-i ?file-length-i ?nb-cands-file-i)
        )
        (show-progression ?i)
    )
    (printout t crlf "Sample record-nb-cands-at-start total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)

(deffunction SGS-sample-record-nb-cands-at-start (?type)
    (SGS-sample-record-nb-cands-at-start-for-n-solution-grids-after-first-p ?type 0 ?*Sample-Size*)
)

(deffunction SGMS-multi-sample-record-nb-cands-at-start (?type)
    (bind ?t0 (time))
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (printout t crlf ?nth-sample ": ")
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-sample-record-nb-cands-at-start-for-n-solution-grids-after-first-p ?type 0 ?*Sample-Size*)
    )
    (printout t crlf "Multi-sample record-nb-cands-at-start total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)



(deffunction SGS-sample-record-nb-clues-and-cands-at-start-for-n-solution-grids-after-first-p (?type ?p ?n)
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?p ?j))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?puzzles-file-i (str-cat ?USOL-i-DIR ?type ".txt"))
        (if (file-exists-and-nonempty ?puzzles-file-i) then
            (bind ?file-length-i (file-length ?puzzles-file-i))
            (bind ?nb-clues-file-i (str-cat ?USOL-i-DIR ?type "-clues.txt"))
            (bind ?nb-cands-file-i (str-cat ?USOL-i-DIR ?type "-cands.txt"))
            (record-nb-clues-and-cands-at-start ?puzzles-file-i ?file-length-i ?nb-clues-file-i ?nb-cands-file-i)
        )
        (show-progression ?i)
    )
    (printout t crlf "Sample record-nb-clues-and-cands-at-start total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)

(deffunction SGS-sample-record-nb-clues-and-cands-at-start (?type)
    (SGS-sample-record-nb-clues-and-cands-at-start-for-n-solution-grids-after-first-p ?type 0 ?*Sample-Size*)
)

(deffunction SGMS-multi-sample-record-nb-clues-and-cands-at-start (?type)
    (bind ?t0 (time))
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (printout t crlf ?nth-sample ": ")
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-sample-record-nb-clues-and-cands-at-start-for-n-solution-grids-after-first-p ?type 0 ?*Sample-Size*)
    )
    (printout t crlf "Multi-sample record-nb-clues-and-cands-at-start total time = " (seconds-to-hours (- (time) ?t0))  crlf)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; I. {-p +q} EXPANSIONS SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; -
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-sample-compute-all-minus-r-plus-s-not-in-TE0-for-n-solution-grids-after-first-p (?r ?s ?type-in ?type-out ?p ?n)
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (printout t ?i crlf)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (if (file-exists-and-nonempty ?file-in) then
            (GSF-find-all-minus-p-plus-q-not-in-TE0 ?r ?s ?file-in ?file-out)
        )
        (if (nonexistent-or-empty-file ?file-out) then (remove ?file-out))
    )
    (printout t crlf "compute {-" ?r " +" ?s "} total time = " (seconds-to-hours (- (time) ?t0))  crlf)
    (printout t (SGS-sample-nb-elements-of-type ?type-out) " " ?type-out crlf)
)

(deffunction SGS-sample-compute-all-minus-r-plus-s-not-in-TE0 (?r ?s ?type-in ?type-out)
    (SGS-sample-compute-all-minus-r-plus-s-not-in-TE0-for-n-solution-grids-after-first-p
        ?r ?s ?type-in ?type-out 0 ?*Sample-Size*
    )
)


(deffunction SGS-sample-exclude-puzzles-in-excl-file-for-n-solution-grids-after-first-p (?type-in ?file-excl ?type-out ?p ?n)
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (printout t ?i crlf)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (if (file-exists-and-nonempty ?file-in) then
            (puzzles-of-file1-with-no-expansion-in-file2 ?file-in ?file-excl ?file-out)
        )
        (if (nonexistent-or-empty-file ?file-out) then (remove ?file-out))
    )
    (printout t crlf "eliminate excluded puzzles total time = " (seconds-to-hours (- (time) ?t0))  crlf)
    (printout t (SGS-sample-nb-elements-of-type ?type-out) " " ?type-out crlf)
)

(deffunction SGS-sample-exclude-puzzles-in-excl-file (?type-in ?file-excl ?type-out)
    (SGS-sample-exclude-puzzles-in-excl-file-for-n-solution-grids-after-first-p
        ?type-in ?file-excl ?type-out 0 ?*Sample-Size*)
    )
)





;;; not used (contrary to the idea that eaach sample function should do only one basic action):
(deffunction SGS-sample-compute-all-minus-r-plus-s-not-in-TE0-not-in-excl-for-n-solution-grids-after-first-p (?r ?s ?type-in ?type-out ?file-excl ?type-out2 ?p ?n)
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (printout t ?i crlf)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (bind ?file-out2 (str-cat ?USOL-i-DIR ?type-out2 ".txt"))
        (if (file-exists-and-nonempty ?file-in) then
            (GSF-find-all-minus-p-plus-q-not-in-TE0 ?r ?s ?file-in ?file-out)
            (puzzles-of-file1-with-no-expansion-in-file2 ?file-out ?file-excl ?file-out2)
        )
        (if (nonexistent-or-empty-file ?file-out2) then (remove ?file-out2))
    )
    (printout t crlf "compute {-" ?r " +" ?s "} total time = " (seconds-to-hours (- (time) ?t0))  crlf)
    (printout t (SGS-sample-nb-elements-of-type ?type-out) " " ?type-out crlf)
)

(deffunction SGS-sample-compute-all-minus-r-plus-s-not-in-TE0-not-in-excl (?r ?s ?type-in ?type-out ?file-excl ?type-out2 )
    (SGS-sample-compute-all-minus-r-plus-s-not-in-TE0-not-in-excl-for-n-solution-grids-after-first-p
        ?r ?s ?type-in ?type-out ?file-excl ?type-out2 0 ?*Sample-Size*
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; K. ELIMINATE PUZZLES WITH AN EXPANSION IN A LARGE EXCLUSION FILE
;;;    SEPARATELY FOR EACH SOLUTION GRID
;;;
;;; -
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction puzzles-of-type-with-no-expansion-in-large-excluded-file-for-Usol-i (?i ?USOL-i-DIR ?type-in ?excl-file ?type-out)
    ;;; puzzles of type1 with no 1-expand in file2
    (bind ?nbi 0)
    (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
    (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
    (if (file-exists-and-nonempty ?file-in) then
        (element-list-to-element-file
            (puzzles-of-list-with-no-expansion-in-large-file
                (element-file-to-element-list ?file-in)
                ?excl-file
            )
            ?file-out
        )
    )
)

(deffunction SGS-sample-puzzles-of-type-with-no-expansion-in-large-excluded-file-for-n-solution-grids-after-first-p (?type-in ?file-excl ?type-out ?p ?n)
    (bind ?t0 (time))
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (printout t ?i crlf)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?file-in (str-cat ?USOL-i-DIR ?type-in ".txt"))
        (bind ?file-out (str-cat ?USOL-i-DIR ?type-out ".txt"))
        (if (file-exists-and-nonempty ?file-in) then
            (puzzles-of-type-with-no-expansion-in-large-excluded-file-for-Usol-i
                ?i ?USOL-i-DIR ?file-in ?file-excl ?file-out
            )
        )
        (if (nonexistent-or-empty-file ?file-out) then (remove ?file-out))
    )
    (printout t crlf "eliminate excluded puzzles total time = " (seconds-to-hours (- (time) ?t0))  crlf)
    (printout t (SGS-sample-nb-elements-of-type ?type-out) " " ?type-out crlf)
)

(deffunction SGS-sample-puzzles-of-type-with-no-expansion-in-large-excluded-file (?type-in ?file-excl ?type-out)
    (SGS-sample-puzzles-of-type-with-no-expansion-in-large-excluded-file-for-n-solution-grids-after-first-p
        ?type-in ?file-excl ?type-out 0 ?*Sample-Size*
    )
)



