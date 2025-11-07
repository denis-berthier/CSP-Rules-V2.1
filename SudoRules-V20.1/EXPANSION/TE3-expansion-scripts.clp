
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE3 EXPANSION SCRIPTS
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







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; A. EXPANSION SCRIPTS FOR VARIOUS EXPANSION PHASES,
;;;    SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; For each unique solution grid ?Usol-i (restricted to ?n grids after ?p):
;;; - do all the T&E(3) computations for 1+BRT expansion-phases (from 0 to 12)
;;;
;;; Note: the step pk --> pkU could be avoided for faster computations
;;;       or moved after d3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p (?k ?p ?n)
    ;;; ?k is upposed to be ≥ 0; this is not checked
    (printout t crlf crlf "STARTING COMPUTATIONS FOR EXPANSION PHASE p" ?k crlf)

    (if (eq ?k 0)
        
        then
        (bind ?t0 (time))
        (printout t "EXPANSION PHASE p0: computing the min-expands" crlf)
        (SGS-sample-compute-BRT-expands-for-n-solution-grids-after-first-p mins ME ?p ?n)
        (bind ?t1 (time))
        (printout t "EXPANSION PHASE p0: eliminating duplicates in min-expands" crlf)
        (SGS-sample-eliminate-duplicates-for-n-solution-grids-after-first-p ME MEU ?p ?n)
        (bind ?t2 (time))

        (printout t crlf crlf "T&E(3) expansion phase p0:" crlf)
        (printout t "- BRT-expand time = " (seconds-to-hours (- ?t1 ?t0)) crlf)
        (printout t "- eliminate-duplicates time = " (seconds-to-hours (- ?t2 ?t1)) crlf)
        (printout t "- expansion-phase p0 total time = " (seconds-to-hours (- ?t2 ?t0)) crlf)
        (printout t (SGS-sample-nb-elements-of-type mins) " mins puzzles" crlf)
        (printout t (SGS-sample-nb-elements-of-type ME) " ME puzzles" crlf)
        (printout t (SGS-sample-nb-elements-of-type MEU) " MEU puzzles" crlf)
        
        else
        (bind ?t0 (time))
        (printout t "EXPANSION PHASE p" ?k ": computing the 1-expands" crlf)
        (SGS-sample-compute-1-expands-for-n-solution-grids-after-first-p
            (TE3-phase-k-self-expand-type-at-d3 (- ?k 1))
            (TE3-phase-k-pk-expansion-type-at-d3 ?k)
            ?p
            ?n
        )
        (bind ?t1 (time))
        (printout t "EXPANSION PHASE p" ?k ": eliminating initial duplicates in 1-expands" crlf)
        (SGS-sample-eliminate-duplicates-for-n-solution-grids-after-first-p
            (TE3-phase-k-pk-expansion-type-at-d3 ?k)
            (TE3-phase-k-pkU-expansion-type-at-d3 ?k)
            ?p
            ?n
        )
        (bind ?t2 (time))
        (printout t "EXPANSION PHASE p" ?k ": computing T&E-depths" crlf)
        (SGS-sample-compute-classif-for-n-solution-grids-after-first-p
            TE-depth
            " "
            (TE3-phase-k-pkU-expansion-type-at-d3 ?k)
            (TE3-phase-k-pkU-TEd-expansion-type-at-d3 ?k)
            ?p
            ?n
        )
        (bind ?t3 (time))
        (printout t "EXPANSION PHASE p" ?k ": extracting puzzles at T&E-depth 3" crlf)
        (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p
            (TE3-phase-k-pkU-expansion-type-at-d3 ?k)
            (TE3-phase-k-pkU-TEd-expansion-type-at-d3 ?k)
            (TE3-phase-k-pkU-d3-expansion-type-at-d3 ?k)
            3
            ?p
            ?n
        )
        (bind ?t4 (time))
        (printout t "EXPANSION PHASE p" ?k ": computing their BRT-expands" crlf)
        (SGS-sample-compute-BRT-expands-for-n-solution-grids-after-first-p
            (TE3-phase-k-pkU-d3-expansion-type-at-d3 ?k)
            (TE3-phase-k-pkU-d3-E-expansion-type-at-d3 ?k)
            ?p
            ?n
        )
        (bind ?t5 (time))
        (printout t "EXPANSION PHASE p" ?k ": eliminating final duplicates in BRT-expands" crlf)
        (SGS-sample-eliminate-duplicates-for-n-solution-grids-after-first-p
            (TE3-phase-k-pkU-d3-E-expansion-type-at-d3 ?k)
            (TE3-phase-k-self-expand-type-at-d3 ?k)
            ?p
            ?n
        )
        (bind ?t6 (time))

        (printout t crlf crlf "T&E(3) expansion phase p" ?k crlf)
        (printout t "- compute 1-expands time = " (seconds-to-hours (- ?t1 ?t0)) crlf)
        (printout t "- eliminate-initial-duplicates time = " (seconds-to-hours (- ?t2 ?t1)) crlf)
        (printout t "- compute T&E-depth time = " (seconds-to-hours (- ?t3 ?t2)) crlf)
        (printout t "- filter depth 3 puzzles time = " (seconds-to-hours (- ?t4 ?t3)) crlf)
        (printout t "- compute BRT-expands time = " (seconds-to-hours (- ?t5 ?t4)) crlf)
        (printout t "- eliminate-final-duplicates time = " (seconds-to-hours (- ?t6 ?t5)) crlf)
        (printout t "- expansion-phase p" ?k " total time = " (seconds-to-hours (- ?t6 ?t0)) crlf)
        (bind ?type (TE3-phase-k-pk-expansion-type-at-d3 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE3-phase-k-pkU-expansion-type-at-d3 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE3-phase-k-pkU-d3-expansion-type-at-d3 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE3-phase-k-self-expand-type-at-d3 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
    )
)

(deffunction SGS-script-compute-TE3-expansion-phase-k (?k)
    (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p ?k 0 ?*Sample-Size*)
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. COMBINED SCRIPT FOR ALL THE EXPANSION PHASES UPTO SOME VALUE,
;;;    SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-nb-puzzles-of-all-TE3-types-upto-expansion-phase-k-for-n-solution-grids-after-first-p (?kmax ?p ?n)
    (if (>= ?kmax 0) then
        (printout t crlf crlf "SUMMARY OF PUZZLES:" crlf)
        (printout t crlf "T&E(3) expansion phase p" 0 crlf)
        (printout t (SGS-sample-nb-elements-of-type mins) " mins puzzles" crlf)
        (printout t (SGS-sample-nb-elements-of-type ME) " ME puzzles" crlf)
        (printout t (SGS-sample-nb-elements-of-type MEU) " MEU puzzles" crlf)
    )
    (loop-for-count (?k 1 ?kmax)
        (printout t crlf "T&E(3) expansion phase p" ?k crlf)
        (bind ?type (TE3-phase-k-pk-expansion-type-at-d3 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE3-phase-k-pkU-expansion-type-at-d3 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE3-phase-k-pkU-d3-expansion-type-at-d3 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE3-phase-k-self-expand-type-at-d3 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
    )
)

(deffunction SGS-script-nb-puzzles-of-all-TE3-types-upto-expansion-phase-k (?kmax)
    (SGS-script-nb-puzzles-of-all-TE3-types-upto-expansion-phase-k-for-n-solution-grids-after-first-p
        ?kmax 0 ?*Sample-Size*
    )
)



(deffunction SGS-script-compute-TE3-expansion-phases-upto-k-for-n-solution-grids-after-first-p (?k ?p ?n)
    (bind ?t0 (time))
    (if (>= ?k 0) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 0 ?p ?n))
    (bind ?t1 (time))
    (if (>= ?k 1) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 1 ?p ?n))
    (bind ?t2 (time))
    (if (>= ?k 2) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 2 ?p ?n))
    (bind ?t3 (time))
    (if (>= ?k 3) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 3 ?p ?n))
    (bind ?t4 (time))
    (if (>= ?k 4) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 4 ?p ?n))
    (bind ?t5 (time))
    (if (>= ?k 5) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 5 ?p ?n))
    (bind ?t6 (time))
    (if (>= ?k 6) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 6 ?p ?n))
    (bind ?t7 (time))
    (if (>= ?k 7) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 7 ?p ?n))
    (bind ?t8 (time))
    (if (>= ?k 8) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 8 ?p ?n))
    (bind ?t9 (time))
    (if (>= ?k 9) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 9 ?p ?n))
    (bind ?t10 (time))
    (if (>= ?k 10) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 10 ?p ?n))
    (bind ?t11 (time))
    (if (>= ?k 11) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 11 ?p ?n))
    (bind ?t12 (time))
    (if (>= ?k 12) then (SGS-script-compute-TE3-expansion-phase-k-for-n-solution-grids-after-first-p 12 ?p ?n))
    (bind ?t13 (time))

    ;;; print times summary
    (if (>= ?k 0) then
        (printout t crlf crlf "SUMMARY OF TIMES:" crlf)
        (printout t "TOTAL TIME = " (seconds-to-hours (- ?t13 ?t0)) crlf)
    )
    (if (>= ?k 0) then (printout t "- expansion-phase p0 total time = " (seconds-to-hours (- ?t1 ?t0)) crlf))
    (if (>= ?k 1) then (printout t "- expansion-phase p1 total time = " (seconds-to-hours (- ?t2 ?t1)) crlf))
    (if (>= ?k 2) then (printout t "- expansion-phase p2 total time = " (seconds-to-hours (- ?t3 ?t2)) crlf))
    (if (>= ?k 3) then (printout t "- expansion-phase p3 total time = " (seconds-to-hours (- ?t4 ?t3)) crlf))
    (if (>= ?k 4) then (printout t "- expansion-phase p4 total time = " (seconds-to-hours (- ?t5 ?t4)) crlf))
    (if (>= ?k 5) then (printout t "- expansion-phase p5 total time = " (seconds-to-hours (- ?t6 ?t5)) crlf))
    (if (>= ?k 6) then (printout t "- expansion-phase p6 total time = " (seconds-to-hours (- ?t7 ?t6)) crlf))
    (if (>= ?k 7) then (printout t "- expansion-phase p7 total time = " (seconds-to-hours (- ?t8 ?t7)) crlf))
    (if (>= ?k 8) then (printout t "- expansion-phase p8 total time = " (seconds-to-hours (- ?t9 ?t8)) crlf))
    (if (>= ?k 9) then (printout t "- expansion-phase p9 total time = " (seconds-to-hours (- ?t10 ?t9)) crlf))
    (if (>= ?k 10) then (printout t "- expansion-phase p10 total time = " (seconds-to-hours (- ?t11 ?t10)) crlf))
    (if (>= ?k 11) then (printout t "- expansion-phase p11 total time = " (seconds-to-hours (- ?t12 ?t11)) crlf))
    (if (>= ?k 12) then (printout t "- expansion-phase p12 total time = " (seconds-to-hours (- ?t13 ?t12)) crlf))

    ;;; print puzzles summary
    (SGS-script-nb-puzzles-of-all-TE3-types-upto-expansion-phase-k-for-n-solution-grids-after-first-p ?k ?p ?n)
)

(deffunction SGS-script-compute-TE3-expansion-phases-upto-k (?k)
    (SGS-script-compute-TE3-expansion-phases-upto-k-for-n-solution-grids-after-first-p
        ?k 0 ?*Sample-Size*
    )
)







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; C. TERMINAL EXPANSIONS FOR EACH EXPANSION PHASE, i.e. T&E(3)-EXPANDS,
;;;    SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; For each unique solution grid ?Usol-i (restricted to ?n grids after ?p):
;;; - find all the terminal expands of each of the 1+BRT expansion-phases from 0 to ?max-expansion-phases
;;; - fuse them into a unique TE3exp.txt file (eliminate duplicates)
;;; - analyse their 1-expands wrt to T&E-depth
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-extract-TE3-expands-of-expansion-phase-k-for-n-solution-grids-after-first-p (?k ?p ?n)
    ;;; self-expand puzzles of expansion phase k (pkEU-d3 puzzles)
    ;;; that can have no 1-expand in T&E(3), i.e. no 1-expand in (pkEU-d3-pk+1U-d3);
    ;;; expansion phases start at 0
    (SGS-sample-extract-terminal-puzzles-of-expansion-phase-k-for-n-solution-grids-after-first-p
        ?k
        (TE3-phase-k-self-expand-type-at-d3 ?k)
        (TE3-phase-k-pkU-d3-expansion-type-at-d3 (+ ?k 1))
        (TE3-phase-k-max-expand-type-at-d3 ?k)
        ?p
        ?n
    )
    (bind ?nb-k (SGS-sample-nb-elements-of-type (TE3-phase-k-max-expand-type-at-d3 ?k)))
    (printout t ?nb-k " terminal puzzles at expansion-phase " ?k crlf)
    ?nb-k
)

(deffunction SGS-script-extract-TE3-expands-of-expansion-phase-k (?k)
    (SGS-script-extract-TE3-expands-of-expansion-phase-k-for-n-solution-grids-after-first-p
        ?k 0 ?*Sample-Size*
    )
)


(deffunction SGS-script-extract-TE3-expands-upto-expansion-phase-k-for-n-solution-grids-after-first-p (?k ?p ?n)
    ;;; expansion phases start at 0, ?k must be ≥ the last expansion-phase before the empty one
    (bind ?t0 (time))
    (bind ?total-nb 0)
    (loop-for-count (?kloc 0 ?k)
        (bind ?total-nb
            (+ ?total-nb
                (SGS-script-extract-TE3-expands-of-expansion-phase-k-for-n-solution-grids-after-first-p ?kloc ?p ?n)
            )
        )
    )
    (printout t "extract T&E(3) expands total time = " (seconds-to-hours (- (time) ?t0)) crlf)
    (printout t ?total-nb " non-unique T&E(3)-expands " crlf)
)

(deffunction SGS-script-extract-TE3-expands-upto-expansion-phase-k (?k)
    (SGS-script-extract-TE3-expands-upto-expansion-phase-k-for-n-solution-grids-after-first-p
        ?k 0 ?*Sample-Size*
    )
)



;;; fuse the TE3-expand results of all expansion-phases, for each grid
(deffunction SGS-script-fuse-all-TE3-expands-of-Usol-i-upto-max-expansion-phase-k (?i ?USOL-i-DIR ?max-expansion-phase)
    (bind ?list-types-in (subseq$ ?*TE3-list-of-max-expand-types-at-d3* 1 (+ ?max-expansion-phase 1)))
    (bind ?list-files-in (create$))
    (foreach ?type ?list-types-in
        (bind ?list-files-in (create$ ?list-files-in (str-cat ?USOL-i-DIR ?type ".txt")))
    )
    (bind ?list-i (create$))
    (foreach ?file ?list-files-in
        (if (and (file-exists ?file) (not (empty-file ?file))) then
            (bind ?list-i (set-union ?list-i (element-file-to-element-list ?file)))
        )
    )
    (bind ?len-i (length$ ?list-i))
    ;;; print result to file
    (if (> ?len-i 0) then
        (bind ?TE3exp-file (str-cat ?USOL-i-DIR "TE3exp.txt"))
        (element-list-to-element-file ?list-i ?TE3exp-file)
    )
    ?len-i
)


(deffunction SGS-script-fuse-all-TE3-expands-upto-max-expansion-phase-k-for-n-solution-grids-after-first-p (?max-expansion-phase ?p ?n)
    (bind ?max-expansion-phase (min ?max-expansion-phase 12))
    (bind ?nb-TE3exp 0)
    (loop-for-count (?i (+ ?p 1) (+ ?p ?n))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?nb-TE3exp
            (+ ?nb-TE3exp
                (SGS-script-fuse-all-TE3-expands-of-Usol-i-upto-max-expansion-phase-k ?i ?USOL-i-DIR ?max-expansion-phase)
            )
        )
    )
    (printout t ?nb-TE3exp " unique T&E(3)-expands" crlf)
    ?nb-TE3exp
)

(deffunction SGS-script-fuse-all-TE3-expands-upto-max-expansion-phase-k (?max-expansion-phase)
    (SGS-script-fuse-all-TE3-expands-upto-max-expansion-phase-k-for-n-solution-grids-after-first-p
        ?max-expansion-phase 0 ?*Sample-Size*
    )
)





(deffunction SGS-script-extract-and-fuse-TE3-expands-upto-max-expansion-phase-k-for-n-solution-grids-after-first-p (?max-expansion-phase ?p ?n)
    (SGS-script-extract-TE3-expands-upto-expansion-phase-k-for-n-solution-grids-after-first-p ?max-expansion-phase ?p ?n)
    (SGS-script-fuse-all-TE3-expands-upto-max-expansion-phase-k-for-n-solution-grids-after-first-p ?max-expansion-phase ?p ?n)
)

(deffunction SGS-script-extract-and-fuse-TE3-expands-upto-max-expansion-phase-k (?max-expansion-phase)
    (SGS-script-extract-and-fuse-TE3-expands-upto-max-expansion-phase-k-for-n-solution-grids-after-first-p
        ?max-expansion-phase 0 ?*Sample-Size*
    )
)
    
    

