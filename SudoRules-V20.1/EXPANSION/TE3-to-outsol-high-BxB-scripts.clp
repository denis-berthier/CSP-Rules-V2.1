
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE3 TO OUT T&E(3) SOLUTIONS HIGH BxB SCRIPTS
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
;;; - FIND THE PUZZLES IN p1U WITH T&E-depth = 2 AND BxB ≥ ?BxBmin,
;;; - FIND THEIR MINIMALS IN T&E(2) (ALL OF WHICH CAN ONLY HAVE BxB ≥ ?BxBmin),
;;; SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction SGS-script-develop-outsol-minus-r-plus-s-puzzles-in-TE2-with-BxB-greater-for-n-solution-grids-after-first-p (?r ?s ?BxBmin ?p ?n)
    (bind ?mrps (str-cat "m" ?r "p" ?s))
    ;;; start from T&E(3) minimals
    (bind ?t0 (time))
    (printout t crlf crlf crlf "computing the {-" ?r " +" ?s "} of T&E(3) minimals" crlf)
    (SGS-sample-compute-all-minus-r-plus-s-not-in-TE0-for-n-solution-grids-after-first-p
        ?r ?s
        mins ?mrps
        ?p ?n
    )
    (bind ?t1 (time))
    
    (printout t crlf crlf crlf "eliminating those with solutions in T&E(3) grids " crlf)
    (SGS-sample-puzzles-of-type-with-no-expansion-in-large-excluded-file-for-n-solution-grids-after-first-p
        ?mrps ?*exclusion-file* (str-cat ?mrps "-notTE3")
        ?p ?n
    )
    (bind ?t2 (time))

    (printout t crlf crlf crlf "computing their T&E-depth " crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p
        TE-depth " "
        (str-cat ?mrps "-notTE3") (str-cat ?mrps "-notTE3-TEd")
        ?p ?n
    )
    (bind ?t3 (time))

    (printout t crlf crlf crlf "extracting those at T&E-depth 2" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p
        (str-cat ?mrps "-notTE3") (str-cat ?mrps "-notTE3-TEd") (str-cat ?mrps "-notTE3-d2") 2
        ?p ?n
    )
    (bind ?t4 (time))

    (printout t crlf crlf crlf "computing their BxB rating" crlf)
    ;;; max-length is increased to 20, chain buffer to 10,000,000
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p
        BxB "-max-length 20 -buffer-size 10000000"
        (str-cat ?mrps "-notTE3-d2") (str-cat ?mrps "-notTE3-d2-B")
        ?p ?n
    )
    (bind ?t5 (time))
    
    (printout t crlf crlf crlf "extracting the puzzles with BxB ≥ " ?BxBmin crlf)
    (SGS-sample-extract-classif-with-X-value-greater-than-for-n-solution-grids-after-first-p
        (str-cat ?mrps "-notTE3-d2") (str-cat ?mrps "-notTE3-d2-B") (str-cat ?mrps "-notTE3-B" ?BxBmin "B")
        ?BxBmin
        ?p ?n
    )
    (bind ?t6 (time))
    
    (printout t crlf crlf crlf "computing the minimals of the puzzles with BxB ≥ " ?BxBmin crlf)
    (SGS-sample-compute-minimals-for-n-solution-grids-after-first-p
        (str-cat ?mrps "-notTE3-B" ?BxBmin "B") (str-cat ?mrps "-notTE3-B" ?BxBmin "B-mins")
        ?p ?n
    )
    (bind ?t7 (time))
    
    (printout t crlf crlf crlf "computing their T&E-depths" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p
        TE-depth " "
        (str-cat ?mrps "-notTE3-B" ?BxBmin "B-mins") (str-cat ?mrps "-notTE3-B" ?BxBmin "B-mins-TEd")
        ?p ?n
    )
    (bind ?t8 (time))
    
    (printout t crlf crlf crlf "extracting the minimals with T&E-depth 2" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p
        (str-cat ?mrps "-notTE3-B" ?BxBmin "B-mins") (str-cat ?mrps "-notTE3-B" ?BxBmin "B-mins-TEd")
        (str-cat ?mrps "-notTE3-B" ?BxBmin "B-mins-d2")
        2
        ?p ?n
    )
    (bind ?t9 (time))
    ;;; At this point, all the puzzles in (str-cat "m1p1-notTE3-B" ?BxBmin "B-mins-d2")
    ;;; are guaranteed to have BxB ≥ ?BxBmin.
    
    ;;; Their BxB-classifs are nevertheless computed in order to find the largest BxB classifs
    ;;; and to see if their distribution is different from the p1U-BxBmin.

    (printout t crlf crlf crlf "computing their BxB classifications" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p
        BxB "-max-length 20 -buffer-size 10000000"
        (str-cat ?mrps "-notTE3-B" ?BxBmin "B-mins-d2") (str-cat ?mrps "-notTE3-B" ?BxBmin "B-mins-d2-BxB")
        ?p ?n
    )
    (bind ?t10 (time))
    
    (printout t "total time = " (seconds-to-hours (- ?t10 ?t0)) crlf)
    (printout t "- {-" ?r " +" ?s"} computation time = " (seconds-to-hours (- ?t1 ?t0)) crlf)
    (printout t "- T&E(3)-solution exclusion time = " (seconds-to-hours (- ?t2 ?t1)) crlf)
    (printout t "- T&E-depth computation time = " (seconds-to-hours (- ?t3 ?t2)) crlf)
    (printout t "- T&E-depth 2 extraction time = " (seconds-to-hours (- ?t4 ?t3)) crlf)
    (printout t "- BxB computation time = " (seconds-to-hours (- ?t5 ?t4)) crlf)
    (printout t "- BxB" ?BxBmin " extraction time = " (seconds-to-hours (- ?t6 ?t5)) crlf)
    (printout t "- new minimals computation time = " (seconds-to-hours (- ?t7 ?t6)) crlf)
    (printout t "- T&E-depth computation time = " (seconds-to-hours (- ?t8 ?t7)) crlf)
    (printout t "- T&E-depth 2 extraction time = " (seconds-to-hours (- ?t9 ?t8)) crlf)
    (printout t "- BxB computation time = " (seconds-to-hours (- ?t10 ?t9)) crlf)

    (printout t (SGS-sample-nb-elements-of-type ?mrps) " " ?mrps " puzzles" crlf)
    (printout t
        (SGS-sample-nb-elements-of-type (str-cat ?mrps "-notTE3"))
        (str-cat " " ?mrps "-notTE3 puzzles") crlf
    )
    (printout t
        (SGS-sample-nb-elements-of-type (str-cat ?mrps "-notTE3-d2"))
        (str-cat " " ?mrps "-notTE3-d2 puzzles") crlf
    )
    (printout t
        (SGS-sample-nb-elements-of-type (str-cat ?mrps "-notTE3-B" ?BxBmin "B"))
        (str-cat " " ?mrps "-notTE3-d2 puzzles with  BxB ≥ ") ?BxBmin crlf
    )
    (printout t (SGS-sample-nb-elements-of-type (str-cat ?mrps "-notTE3-B" ?BxBmin "B-mins"))
        " minimal puzzles for the BxB ≥ " ?BxBmin crlf
    )
    (printout t
        (SGS-sample-nb-elements-of-type (str-cat ?mrps "-notTE3-B" ?BxBmin "B-mins-d2"))
        " minimal puzzles at depth 2 for the BxB ≥ " ?BxBmin crlf
    )
    (printout t "   all these minimal puzzles are guaranteed to have BxB ≥ " ?BxBmin crlf)
)


(deffunction SGS-script-develop-outsol-minus-r-plus-s-puzzles-in-TE2-with-BxB-greater (?r ?s ?BxBmin)
    (SGS-script-develop-outsol-minus-r-plus-s-puzzles-in-TE2-with-BxB-greater-for-n-solution-grids-after-first-p
        ?r ?s ?BxBmin 0 ?*Sample-Size*
    )
)




