
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE1 EXPANSION SCRIPTS
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
;;; A. EXPANSION SCRIPTS FOR VARIOUS LAYERS,
;;;    SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; For each unique solution grid ?Usol-i (restricted to ?n grids after ?p):
;;; - do all the T&E(1) computations for 1+BRT expansion-phases (from 0 to 10)
;;;
;;; Note: the step pk --> pkU could be avoided for faster computations
;;;       or moved after d1
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p (?k ?p ?n)
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

        (printout t crlf crlf "T&E(1) expansion phase p0:" crlf)
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
            (TE1-phase-k-self-expand-type-at-d1 (- ?k 1))
            (TE1-phase-k-pk-expansion-type-at-d1 ?k)
            ?p
            ?n
        )
        (bind ?t1 (time))
        (printout t "EXPANSION PHASE p" ?k ": eliminating initial duplicates in 1-expands" crlf)
        (SGS-sample-eliminate-duplicates-for-n-solution-grids-after-first-p
            (TE1-phase-k-pk-expansion-type-at-d1 ?k)
            (TE1-phase-k-pkU-expansion-type-at-d1 ?k)
            ?p
            ?n
        )
        (bind ?t2 (time))
        (printout t "EXPANSION PHASE p" ?k ": computing T&E-depths" crlf)
        (SGS-sample-compute-classif-for-n-solution-grids-after-first-p
            TE-depth
            " "
            (TE1-phase-k-pkU-expansion-type-at-d1 ?k)
            (TE1-phase-k-pkU-TEd-expansion-type-at-d1 ?k)
            ?p
            ?n
        )
        (bind ?t3 (time))
        (printout t "EXPANSION PHASE p" ?k ": extracting puzzles at T&E-depth 1" crlf)
        (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p
            (TE1-phase-k-pkU-expansion-type-at-d1 ?k)
            (TE1-phase-k-pkU-TEd-expansion-type-at-d1 ?k)
            (TE1-phase-k-pkU-d1-expansion-type-at-d1 ?k)
            1
            ?p
            ?n
        )
        (bind ?t4 (time))
        (printout t "EXPANSION PHASE p" ?k ": computing their BRT-expands" crlf)
        (SGS-sample-compute-BRT-expands-for-n-solution-grids-after-first-p
            (TE1-phase-k-pkU-d1-expansion-type-at-d1 ?k)
            (TE1-phase-k-pkU-d1-E-expansion-type-at-d1 ?k)
            ?p
            ?n
        )
        (bind ?t5 (time))
        (printout t "EXPANSION PHASE p" ?k ": eliminating final duplicates in BRT-expands" crlf)
        (SGS-sample-eliminate-duplicates-for-n-solution-grids-after-first-p
            (TE1-phase-k-pkU-d1-E-expansion-type-at-d1 ?k)
            (TE1-phase-k-self-expand-type-at-d1 ?k)
            ?p
            ?n
        )
        (bind ?t6 (time))

        (printout t crlf crlf "T&E(1) expansion phase p" ?k crlf)
        (printout t "- compute 1-expands time = " (seconds-to-hours (- ?t1 ?t0)) crlf)
        (printout t "- eliminate-initial-duplicates time = " (seconds-to-hours (- ?t2 ?t1)) crlf)
        (printout t "- compute T&E-depth time = " (seconds-to-hours (- ?t3 ?t2)) crlf)
        (printout t "- filter depth 1 puzzles time = " (seconds-to-hours (- ?t4 ?t3)) crlf)
        (printout t "- compute BRT-expands time = " (seconds-to-hours (- ?t5 ?t4)) crlf)
        (printout t "- eliminate-final-duplicates time = " (seconds-to-hours (- ?t6 ?t5)) crlf)
        (printout t "- expansion-phase p" ?k " total time = " (seconds-to-hours (- ?t6 ?t0)) crlf)
        (bind ?type (TE1-phase-k-pk-expansion-type-at-d1 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE1-phase-k-pkU-expansion-type-at-d1 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE1-phase-k-pkU-d1-expansion-type-at-d1 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE1-phase-k-self-expand-type-at-d1 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
    )
)

(deffunction SGS-script-compute-TE1-expansion-phase-k (?k)
    (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p
        ?k 0 ?*Sample-Size*
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. COMBINED SCRIPT FOR ALL THE LAYERS UPTO SOME VALUE,
;;;    SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-nb-puzzles-of-all-TE1-types-upto-expansion-phase-k-for-n-solution-grids-after-first-p (?kmax ?p ?n)
    (if (>= ?kmax 0) then
        (printout t crlf crlf "SUMMARY OF PUZZLES:" crlf)
        (printout t crlf "T&E(1) expansion phase p" 0 crlf)
        (printout t (SGS-sample-nb-elements-of-type mins) " mins puzzles" crlf)
        (printout t (SGS-sample-nb-elements-of-type ME) " ME puzzles" crlf)
        (printout t (SGS-sample-nb-elements-of-type MEU) " MEU puzzles" crlf)
    )
    (loop-for-count (?k 1 ?kmax)
        (printout t crlf "T&E(1) expansion phase p" ?k crlf)
        (bind ?type (TE1-phase-k-pk-expansion-type-at-d1 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE1-phase-k-pkU-expansion-type-at-d1 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE1-phase-k-pkU-d1-expansion-type-at-d1 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
        (bind ?type (TE1-phase-k-self-expand-type-at-d1 ?k))
        (printout t (SGS-sample-nb-elements-of-type ?type) " " ?type " puzzles" crlf)
    )
)

(deffunction SGS-script-nb-puzzles-of-all-TE1-types-upto-expansion-phase-k (?kmax)
    (SGS-script-nb-puzzles-of-all-TE1-types-upto-expansion-phase-k-for-n-solution-grids-after-first-p ?kmax 0 ?*Sample-Size*)
)


(deffunction SGS-script-compute-TE1-expansion-phases-upto-k-for-n-solution-grids-after-first-p (?k ?p ?n)
    (bind ?t0 (time))
    (if (>= ?k 0) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 0 ?p ?n))
    (bind ?t1 (time))
    (if (>= ?k 1) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 1 ?p ?n))
    (bind ?t2 (time))
    (if (>= ?k 2) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 2 ?p ?n))
    (bind ?t3 (time))
    (if (>= ?k 3) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 3 ?p ?n))
    (bind ?t4 (time))
    (if (>= ?k 4) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 4 ?p ?n))
    (bind ?t5 (time))
    (if (>= ?k 5) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 5 ?p ?n))
    (bind ?t6 (time))
    (if (>= ?k 6) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 6 ?p ?n))
    (bind ?t7 (time))
    (if (>= ?k 7) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 7 ?p ?n))
    (bind ?t8 (time))
    (if (>= ?k 8) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 8 ?p ?n))
    (bind ?t9 (time))
    (if (>= ?k 9) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 9 ?p ?n))
    (bind ?t10 (time))
    (if (>= ?k 10) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 10 ?p ?n))
    (bind ?t11 (time))
    (if (>= ?k 11) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 11 ?p ?n))
    (bind ?t12 (time))
    (if (>= ?k 12) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 12 ?p ?n))
    (bind ?t13 (time))
    (if (>= ?k 13) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 13 ?p ?n))
    (bind ?t14 (time))
    (if (>= ?k 14) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 14 ?p ?n))
    (bind ?t15 (time))
    (if (>= ?k 15) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 15 ?p ?n))
    (bind ?t16 (time))
    (if (>= ?k 16) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 16 ?p ?n))
    (bind ?t17 (time))
    (if (>= ?k 17) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 17 ?p ?n))
    (bind ?t18 (time))
    (if (>= ?k 18) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 18 ?p ?n))
    (bind ?t19 (time))
    (if (>= ?k 19) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 19 ?p ?n))
    (bind ?t20 (time))
    (if (>= ?k 20) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 20 ?p ?n))
    (bind ?t21 (time))
    (if (>= ?k 21) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 21 ?p ?n))
    (bind ?t22 (time))
    (if (>= ?k 22) then (SGS-script-compute-TE1-expansion-phase-k-for-n-solution-grids-after-first-p 22 ?p ?n))
    (bind ?t23 (time))

    ;;; print times summary
    (if (>= ?k 0) then
        (printout t crlf crlf "SUMMARY OF TIMES:" crlf)
        (printout t "TOTAL TIME = " (seconds-to-hours (- ?t23 ?t0)) crlf)
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
    (if (>= ?k 13) then (printout t "- expansion-phase p13 total time = " (seconds-to-hours (- ?t14 ?t13)) crlf))
    (if (>= ?k 14) then (printout t "- expansion-phase p14 total time = " (seconds-to-hours (- ?t15 ?t14)) crlf))
    (if (>= ?k 15) then (printout t "- expansion-phase p15 total time = " (seconds-to-hours (- ?t16 ?t15)) crlf))
    (if (>= ?k 16) then (printout t "- expansion-phase p16 total time = " (seconds-to-hours (- ?t17 ?t16)) crlf))
    (if (>= ?k 17) then (printout t "- expansion-phase p17 total time = " (seconds-to-hours (- ?t18 ?t17)) crlf))
    (if (>= ?k 18) then (printout t "- expansion-phase p18 total time = " (seconds-to-hours (- ?t19 ?t18)) crlf))
    (if (>= ?k 19) then (printout t "- expansion-phase p19 total time = " (seconds-to-hours (- ?t20 ?t19)) crlf))
    (if (>= ?k 20) then (printout t "- expansion-phase p20 total time = " (seconds-to-hours (- ?t21 ?t20)) crlf))
    (if (>= ?k 21) then (printout t "- expansion-phase p21 total time = " (seconds-to-hours (- ?t22 ?t21)) crlf))
    (if (>= ?k 22) then (printout t "- expansion-phase p22 total time = " (seconds-to-hours (- ?t23 ?t22)) crlf))

    ;;; print puzzles summary
    (SGS-script-nb-puzzles-of-all-TE1-types-upto-expansion-phase-k-for-n-solution-grids-after-first-p ?k ?p ?n)
)


(deffunction SGS-script-compute-TE1-expansion-phases-upto-k (?k)
    (SGS-script-compute-TE1-expansion-phases-upto-k-for-n-solution-grids-after-first-p
        ?k 0 ?*Sample-Size*
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; C. TERMINAL EXPANSIONS FOR EACH LAYER, i.e. T&E(1)-EXPANDS,
;;;    SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; For each unique solution grid ?Usol-i (restricted to ?n grids after ?p):
;;; - find all the terminal expands of each of the 1+BRT expansion-phases from 0 to ?max-expansion-phases
;;; - fuse them into a unique TE1exp.txt file (eliminate duplicates)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-extract-TE1-expands-of-expansion-phase-k-for-n-solution-grids-after-first-p (?k ?p ?n)
    ;;; self-expand puzzles of expansion phase k (pkEU-d1 puzzles)
    ;;; that can have no 1-expand in T&E(1), i.e. no 1-expand in (pkEU-d1-pk+1U-d1);
    ;;; expansion phases start at 0
    (SGS-sample-extract-terminal-puzzles-of-expansion-phase-k-for-n-solution-grids-after-first-p
        ?k
        (TE1-phase-k-self-expand-type-at-d1 ?k)
        (TE1-phase-k-pkU-d1-expansion-type-at-d1 (+ ?k 1))
        (TE1-phase-k-max-expand-type-at-d1 ?k)
        ?p
        ?n
    )
    (bind ?nb-k (SGS-sample-nb-elements-of-type (TE1-phase-k-max-expand-type-at-d1 ?k)))
    (printout t ?nb-k " terminal puzzles at expansion-phase " ?k crlf)
    ?nb-k
)

(deffunction SGS-script-extract-TE1-expands-of-expansion-phase-k (?k)
    (SGS-script-extract-TE1-expands-of-expansion-phase-k-for-n-solution-grids-after-first-p
        ?k 0 ?*Sample-Size*
    )
)


(deffunction SGS-script-extract-TE1-expands-upto-expansion-phase-k-for-n-solution-grids-after-first-p (?k ?p ?n)
    ;;; expansion phases start at 0, ?k must be ≥ the last expansion-phase before the empty one
    (bind ?t0 (time))
    (bind ?total-nb 0)
    (loop-for-count (?kloc 0 ?k)
        (bind ?total-nb
            (+ ?total-nb
                (SGS-script-extract-TE1-expands-of-expansion-phase-k-for-n-solution-grids-after-first-p ?kloc ?p ?n)
            )
        )
    )
    (printout t "extract T&E(1) expands total time = " (seconds-to-hours (- (time) ?t0)) crlf)
    (printout t ?total-nb " non-unique T&E(1)-expands " crlf)
)

(deffunction SGS-script-extract-TE1-expands-upto-expansion-phase-k (?k)
    (SGS-script-extract-TE1-expands-upto-expansion-phase-k-for-n-solution-grids-after-first-p
        ?k 0 ?*Sample-Size*
    )
)


;;; fuse the TE1-expand results of all expansion-phases, for each grid
(deffunction SGS-script-fuse-all-TE1-expands-of-Usol-i-upto-max-expansion-phase-k (?i ?USOL-i-DIR ?max-expansion-phase)
    (bind ?list-types-in (subseq$ ?*TE1-list-of-max-expand-types-at-d1* 1 (+ ?max-expansion-phase 1)))
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
        (bind ?TE1exp-file (str-cat ?USOL-i-DIR "TE1exp.txt"))
        (element-list-to-element-file ?list-i ?TE1exp-file)
    )
    ?len-i
)


(deffunction SGS-script-fuse-all-TE1-expands-upto-max-expansion-phase-k-for-n-solution-grids-after-first-p (?max-expansion-phase ?p ?n)
    (bind ?max-expansion-phase (min ?max-expansion-phase 12))
    (bind ?nb-TE1exp 0)
    (loop-for-count (?i (+ ?p 1) (+ ?p ?n))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?nb-TE1exp
            (+ ?nb-TE1exp
                (SGS-script-fuse-all-TE1-expands-of-Usol-i-upto-max-expansion-phase-k ?i ?USOL-i-DIR ?max-expansion-phase)
            )
        )
    )
    (printout t ?nb-TE1exp " unique T&E(1)-expands" crlf)
    ?nb-TE1exp
)

(deffunction SGS-script-fuse-all-TE1-expands-upto-max-expansion-phase-k (?max-expansion-phase)
    (SGS-script-fuse-all-TE1-expands-upto-max-expansion-phase-k-for-n-solution-grids-after-first-p
        ?max-expansion-phase 0 ?*Sample-Size*
    )
)


(deffunction SGS-script-extract-and-fuse-TE1-expands-upto-max-expansion-phase-k-for-n-solution-grids-after-first-p (?max-expansion-phase ?p ?n)
    (SGS-script-extract-TE1-expands-upto-expansion-phase-k-for-n-solution-grids-after-first-p ?max-expansion-phase ?p ?n)
    (SGS-script-fuse-all-TE1-expands-upto-max-expansion-phase-k-for-n-solution-grids-after-first-p ?max-expansion-phase ?p ?n)
)

(deffunction SGS-script-extract-and-fuse-TE1-expands-upto-max-expansion-phase-k (?max-expansion-phase)
    (SGS-script-extract-and-fuse-TE1-expands-upto-max-expansion-phase-k-for-n-solution-grids-after-first-p
        ?max-expansion-phase 0 ?*Sample-Size*
    )
)




