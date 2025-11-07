
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TEd TO IN SOLUTION HIGH BxB SCRIPTS
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
;;; A. FIND HIGH BxB PUZZLES:
;;;    - FIND THE PUZZLES IN p1U WITH T&E-depth = 2 AND BxB ≥ ?BxBmin,
;;;    - FIND THEIR MINIMALS IN T&E(2) (ALL OF WHICH CAN ONLY HAVE BxB ≥ ?BxBmin),
;;;    SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; THIS WORKS FOR T&E(3) OR T&E(2) MINIMALS,
;;; AFTER AT LEAST THE P1U HAVE BEEN CALCULATED (FIRST EXPANSION PHASE)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-develop-insol-p1U-puzzles-in-TE2-with-BxB-greater-for-n-solution-grids-after-first-p (?BxBmin ?p ?n)
    ;;; This works for any "p1U" puzzles (whichever T&E-depth the p1U come from, i.e. 3 or 2)
    ;;; Note that the T&E-depth of "p1U" puzzles are supposed to be pre-computed
    ;;;  (during the computations for the p1 expansion-phase).
    ;;; As a result, this script can only be applied after phase 1 of expansion.
    (bind ?t0 (time))
    (printout t crlf crlf crlf "extracting p1U puzzles at T&E-depth 2" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p
        "p1U" "p1U-TEd" "p1U-d2" 2 ?p ?n
    )
    (bind ?t1 (time))
    
    (printout t crlf crlf crlf "computing their BxB rating" crlf)
    ;;; max-length is increased to 20, chain buffer to 10,000,000
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p BxB "-max-length 20 -buffer-size 10000000"
        "p1U-d2" "p1U-d2-BxB" ?p ?n
    )
    (bind ?t2 (time))
    
    (printout t crlf crlf crlf "extracting the puzzles with BxB ≥ " ?BxBmin crlf)
    (SGS-sample-extract-classif-with-X-value-greater-than-for-n-solution-grids-after-first-p
        "p1U-d2" "p1U-d2-BxB" (str-cat "p1U-B" ?BxBmin "B") ?BxBmin ?p ?n
    )
    (bind ?t3 (time))
    
    (printout t crlf crlf crlf "computing the minimals of the puzzles with BxB ≥ " ?BxBmin crlf)
    (SGS-sample-compute-minimals-for-n-solution-grids-after-first-p
        (str-cat "p1U-B" ?BxBmin "B") (str-cat "p1U-B" ?BxBmin "B-mins") ?p ?n
    )
    (bind ?t4 (time))
    
    (printout t crlf crlf crlf "computing their T&E-depths" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p TE-depth " "
        (str-cat "p1U-B" ?BxBmin "B-mins") (str-cat "p1U-B" ?BxBmin "B-mins-TEd") ?p ?n
    )
    (bind ?t5 (time))
    
    (printout t crlf crlf crlf "extracting the minimals with T&E-depth 2" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p
        (str-cat "p1U-B" ?BxBmin "B-mins") (str-cat "p1U-B" ?BxBmin "B-mins-TEd") (str-cat "p1U-B" ?BxBmin "B-mins-d2") 2 ?p ?n
    )
    (bind ?t6 (time))
    ;;; At this point, all the puzzles in (str-cat "p1U-B" ?BxBmin "B-mins-d2")
    ;;; are guaranteed to have BxB ≥ ?BxBmin.
    
    ;;; Their BxB-classifs are nevertheless computed in order to find the largest BxB classifs
    ;;; and to see if their distribution is different from the p1U-BxBmin.

    (printout t crlf crlf crlf "computing their BxB classifications" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p BxB "-max-length 20 -buffer-size 10000000"
        (str-cat "p1U-B" ?BxBmin "B-mins-d2") (str-cat "p1U-B" ?BxBmin "B-mins-d2-BxB") ?p ?n
    )
    (bind ?t7 (time))
    
    ;;; Note that BRT-expansion and re-minimization could be applied
    
    (printout t "total time = " (seconds-to-hours (- ?t7 ?t0)) crlf)
    (printout t "- d2 extraction time = " (seconds-to-hours (- ?t1 ?t0)) crlf)
    (printout t "- BxB computation time = " (seconds-to-hours (- ?t2 ?t1)) crlf)
    (printout t "- BxB" ?BxBmin " extraction time = " (seconds-to-hours (- ?t3 ?t2)) crlf)
    (printout t "- minimals time = " (seconds-to-hours (- ?t4 ?t3)) crlf)
    (printout t "- T&E-depth time = " (seconds-to-hours (- ?t5 ?t4)) crlf)
    (printout t "- T&E-depth 2 extraction time = " (seconds-to-hours (- ?t6 ?t5)) crlf)
    (printout t "- BxB rating time = " (seconds-to-hours (- ?t7 ?t6)) crlf)

    (printout t (SGS-sample-nb-elements-of-type "p1U-d2") " p1U puzzles in T&E(2)" crlf)
    (printout t (SGS-sample-nb-elements-of-type (str-cat "p1U-B" ?BxBmin "B"))
        " p1U puzzles with  BxB ≥ " ?BxBmin crlf
    )
    (printout t (SGS-sample-nb-elements-of-type (str-cat "p1U-B" ?BxBmin "B-mins"))
        " minimal puzzles for the BxB ≥ " ?BxBmin crlf
    )
    (printout t (SGS-sample-nb-elements-of-type (str-cat "p1U-B" ?BxBmin "B-mins-d2"))
        " minimal puzzles at depth 2 for the BxB ≥ " ?BxBmin crlf
    )
    (printout t "   all these minimal puzzles are guaranteed to have BxB ≥ " ?BxBmin crlf)
)


(deffunction SGS-script-develop-insol-p1U-puzzles-in-TE2-with-BxB-greater (?BxBmin)
    ;;; This works for any "p1U" puzzles (whichever T&E-depth the p1U come from, i.e. 3 or 2)
    ;;; Note that the T&E-depth of "p1U" puzzles are supposed to be pre-computed
    ;;;  (during the computations for the p1 expansion-phase).
    ;;; As a result, this script can only be applied after phase 1 of expansion.
    (SGS-script-develop-insol-p1U-puzzles-in-TE2-with-BxB-greater-for-n-solution-grids-after-first-p
        ?BxBmin 0 ?*Sample-Size*
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; re-start the computations with new (generally smaller) BxBmin
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-develop-insol-p1U-puzzles-in-TE2-with-new-BxB-greater-for-n-solution-grids-after-first-p (?BxBmin ?p ?n)
    ;;; This works for any "p1U" puzzles (whichever T&E-depth the p1U come from, i.e. 3 or 2)
    ;;; Note that the T&E-depth of "p1U" puzzles are supposed to be pre-computed
    ;;;  (during the computations for the p1 expansion-phase).
    ;;; As a result, this script can only be applied after phase 1 of expansion.
    (bind ?t0 (time))
    ;;; skip the BxB computation phase
    (bind ?t2 (time))

    (printout t crlf crlf crlf "extracting the puzzles with BxB ≥ " ?BxBmin crlf)
    (SGS-sample-extract-classif-with-X-value-greater-than-for-n-solution-grids-after-first-p
        "p1U-d2" "p1U-d2-BxB" (str-cat "p1U-B" ?BxBmin "B") ?BxBmin ?p ?n
    ) 
    (bind ?t3 (time))
    
    (printout t crlf crlf crlf "computing the minimals of the puzzles with BxB ≥ " ?BxBmin crlf)
    (SGS-sample-compute-minimals-for-n-solution-grids-after-first-p
        (str-cat "p1U-B" ?BxBmin "B") (str-cat "p1U-B" ?BxBmin "B-mins") ?p ?n
    )
    (bind ?t4 (time))
    
    (printout t crlf crlf crlf "computing their T&E-depths" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p TE-depth " "
        (str-cat "p1U-B" ?BxBmin "B-mins") (str-cat "p1U-B" ?BxBmin "B-mins-TEd") ?p ?n
    )
    (bind ?t5 (time))
    
    (printout t crlf crlf crlf "extracting the minimals with T&E-depth 2" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p
        (str-cat "p1U-B" ?BxBmin "B-mins") (str-cat "p1U-B" ?BxBmin "B-mins-TEd")
        (str-cat "p1U-B" ?BxBmin "B-mins-d2") 2 ?p ?n
    )
    (bind ?t6 (time))
    ;;; At this point, all the puzzles in (str-cat "p1U-B" ?BxBmin "B-mins-d2")
    ;;; are guaranteed to have BxB ≥ ?BxBmin.
    
    ;;; Their BxB-classifs are nevertheless computed in order to find the largest BxB classifs
    ;;; and to see if their distribution is different from the p1U-BxBmin.

    (printout t crlf crlf crlf "computing their BxB classifications" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p BxB "-max-length 20 -buffer-size 10000000"
        (str-cat "p1U-B" ?BxBmin "B-mins-d2") (str-cat "p1U-B" ?BxBmin "B-mins-d2-BxB") ?p ?n
    )
    (bind ?t7 (time))
    

    (printout t "total time = " (seconds-to-hours (- ?t7 ?t0)) crlf)
    (printout t "- BxB" ?BxBmin " extraction time = " (seconds-to-hours (- ?t3 ?t2)) crlf)
    (printout t "- minimals computation time = " (seconds-to-hours (- ?t4 ?t3)) crlf)
    (printout t "- T&E-depth computation time = " (seconds-to-hours (- ?t5 ?t4)) crlf)
    (printout t "- T&E-depth 2 extraction time = " (seconds-to-hours (- ?t6 ?t5)) crlf)
    (printout t "- BxB computation time = " (seconds-to-hours (- ?t7 ?t6)) crlf)

    (printout t (SGS-sample-nb-elements-of-type "p1U-d2") " p1U puzzles in T&E(2)" crlf)
    (printout t (SGS-sample-nb-elements-of-type (str-cat "p1U-B" ?BxBmin "B"))
        " p1U puzzles with  BxB ≥ " ?BxBmin crlf
    )
    (printout t (SGS-sample-nb-elements-of-type (str-cat "p1U-B" ?BxBmin "B-mins"))
        " minimal puzzles for the BxB ≥ " ?BxBmin crlf
    )
    (printout t (SGS-sample-nb-elements-of-type (str-cat "p1U-B" ?BxBmin "B-mins-d2"))
        " minimal puzzles at depth 2 for the BxB ≥ " ?BxBmin crlf
    )
    (printout t "   all these minimal puzzles are guaranteed to have BxB ≥ " ?BxBmin crlf)
)


(deffunction SGS-script-develop-insol-p1U-puzzles-in-TE2-with-new-BxB-greater (?BxBmin)
    ;;; This works for any "p1U" puzzles (whichever T&E-depth the p1U come from, i.e. 3 or 2)
    ;;; Note that the T&E-depth of "p1U" puzzles are supposed to be pre-computed
    ;;;  (during the computations for the p1 expansion-phase).
    ;;; As a result, this script can only be applied after phase 1 of expansion.
    (SGS-script-develop-insol-p1U-puzzles-in-TE2-with-new-BxB-greater-for-n-solution-grids-after-first-p
        ?BxBmin 0 ?*Sample-Size*
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; B. ADD A BRT-EXPANSION AND RE-MINIMIZATION STEP
;;;    THIS WORKS ONLY AFTER THE SCRIPTS IN SECTION A HAVE BEEN APPLIED
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-further-develop-insol-p1U-puzzles-in-TE2-with-BxB-greater-for-n-solution-grids-after-first-p (?BxBmin ?p ?n)
    ;;; BRT-expansion and re-minimization,
    ;;; to be applied only after either of the functions in section A
    (bind ?t7 (time))
    (printout t crlf crlf crlf "computing the BRT-expands of the " (str-cat "p1U-B" ?BxBmin "B-mins-d2") " puzzles" crlf)
    (SGS-sample-compute-BRT-expands-for-n-solution-grids-after-first-p
        (str-cat "p1U-B" ?BxBmin "B-mins-d2") (str-cat "p1U-B" ?BxBmin "B-mins-d2-E") ?p ?n
    )
    (bind ?t8 (time))

    (printout t crlf crlf crlf "computing their unique BRT-expands" crlf)
    (SGS-sample-eliminate-duplicates-for-n-solution-grids-after-first-p
        (str-cat "p1U-B" ?BxBmin "B-mins-d2-E") (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU") ?p ?n)
    (bind ?t9 (time))

    (printout t crlf crlf crlf "computing their minimals" crlf)
    (SGS-sample-compute-minimals-for-n-solution-grids-after-first-p
        (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU") (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU-mins") ?p ?n
    )
    (bind ?t10 (time))

    (printout t crlf crlf crlf "compute their T&E-depth" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p TE-depth " "
        (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU-mins") (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU-mins-TEd") ?p ?n
    )
    (bind ?t11 (time))

    (printout t crlf crlf crlf "extracting the minimals with T&E-depth 2" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p
        (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU-mins") (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU-mins-TEd")
        (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU-mins-d2") 2 ?p ?n
    )
    (bind ?t12 (time))
    ;;; At this point, all the puzzles in (str-cat "p1U-B" ?BxBmin "B-mins-d2")
    ;;; are guaranteed to have BxB ≥ ?BxBmin.
    
    ;;; Their BxB-classifs are nevertheless computed in order to find the largest BxB classifs
    ;;; and to see if their distribution is different from the p1U-BxBmin.

    (printout t crlf crlf crlf "computing their BxB classifications" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p BxB "-max-length 20 -buffer-size 10000000"
        (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU-mins-d2") (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU-mins-d2-BxB") ?p ?n
    )
    (bind ?t13 (time))
    
    (printout t "Further results after BRT-expansion and re-minimization:" crlf)
    (printout t "total time = " (seconds-to-hours (- ?t13 ?t7)) crlf)
    (printout t "- BRT-expand computation time = " (seconds-to-hours (- ?t8 ?t7)) crlf)
    (printout t "- unique BRT-expand computation time = " (seconds-to-hours (- ?t9 ?t8)) crlf)
    (printout t "- minimals computation time = " (seconds-to-hours (- ?t10 ?t9)) crlf)
    (printout t "- T&E-depth computation time = " (seconds-to-hours (- ?t11 ?t10)) crlf)
    (printout t "- d2 extraction time = " (seconds-to-hours (- ?t12 ?t11)) crlf)
    (printout t "- BxB computation time = " (seconds-to-hours (- ?t13 ?t12)) crlf)

    (printout t (SGS-sample-nb-elements-of-type (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU"))
        " p1U-B" ?BxBmin "B-mins-d2-EU puzzles" crlf
    )
    (printout t (SGS-sample-nb-elements-of-type (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU-mins"))
        (str-cat " p1U-B" ?BxBmin "B-mins-d2-EU-mins puzzles") crlf
    )
    (printout t (SGS-sample-nb-elements-of-type (str-cat "p1U-B" ?BxBmin "B-mins-d2-EU-mins-d2"))
        (str-cat " p1U-B" ?BxBmin "B-mins-d2-EU-mins-d2 puzzles") crlf
    )
    (printout t "   all these minimal puzzles are guaranteed to have BxB ≥ " ?BxBmin crlf)
)

(deffunction SGS-script-further-develop-insol-p1U-puzzles-in-TE2-with-BxB-greater (?BxBmin)
    ;;; BRT-expansion and re-minimization
    ;;; to be applied only after either of the functions in section A
    (SGS-script-further-develop-insol-p1U-puzzles-in-TE2-with-BxB-greater-for-n-solution-grids-after-first-p
        ?BxBmin 0 ?*Sample-Size*
    )
)
