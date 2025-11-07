
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE3 OR TE2 TO HIGH B SCRIPTS
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; - FIND THE PUZZLES IN p1U WITH T&E-depth = 1 AND B ≥ ?Bmin,
;;; - FIND THEIR MINIMALS IN T&E(1) (ALL OF WHICH CAN ONLY HAVE B ≥ ?Bmin),
;;; SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;;   Note that this works for original minimal puzzles in T&E(3) or T&E(2)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction SGS-script-develop-p1U-puzzles-in-TE1-with-B-greater-for-n-solution-grids-after-first-p (?Bmin ?p ?n)
    ;;; this works for any "p1U" puzzles (whichever T&E-depth the p1U come from, i.e. 3 or 2)
    ;;; note that the T&E-depth of "p1U" puzzles are computed during the computations for the p1 expansion-phase
    ;;; As a result, this script can only be applied after phase 1 of expansion.
    (bind ?t0 (time))
    (printout t crlf crlf crlf "extracting p1U puzzles at T&E-depth 1" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p "p1U" "p1U-TEd" "p1U-d1" 1 ?p ?n)
    (printout t (SGS-sample-nb-elements-of-type p1U-d1) " p1U-d1 puzzles, i.e. p1U puzzles in T&E(1)" crlf)
    (bind ?t1 (time))
    
    (printout t crlf crlf crlf "computing their B ratings" crlf)
    ;;; max-length is increased to 36, chain buffer to 10,000,000
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p B "-max-length 36 -buffer-size 10000000" p1U-d1 p1U-d1-B ?p ?n)
    (bind ?t2 (time))
    
    (printout t crlf crlf crlf "extracting the puzzles with B ≥ " ?Bmin crlf)
    (SGS-sample-extract-classif-with-X-value-greater-than-for-n-solution-grids-after-first-p p1U-d1 p1U-d1-B (str-cat p1U-B ?Bmin) ?Bmin ?p ?n)
    (printout t (SGS-sample-nb-elements-of-type (str-cat p1U-B ?Bmin)) " p1U-B" ?Bmin " puzzles, i.e. p1U-d1 puzzles with  B ≥ " ?Bmin crlf)
    (printout t "max-value of p1U-d1-B = " (SGS-sample-max-value-of-type p1U-d1-B) crlf)
    (bind ?t3 (time))
    
    (printout t crlf crlf crlf "computing the minimals of the puzzles with B ≥ " ?Bmin crlf)
    (SGS-sample-compute-minimals-for-n-solution-grids-after-first-p (str-cat p1U-B ?Bmin) (str-cat p1U-B ?Bmin "-mins") ?p ?n)
    (printout t (SGS-sample-nb-elements-of-type (str-cat p1U-B ?Bmin "-mins")) "  p1U-B" ?Bmin "-mins puzzles, i.e. minimal puzzles for the p1U-B" ?Bmin crlf)
    (bind ?t4 (time))
    
    (printout t crlf crlf crlf "computing their T&E-depths" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p TE-depth " " (str-cat p1U-B ?Bmin "-mins") (str-cat p1U-B ?Bmin "-mins-TEd") ?p ?n)
    (bind ?t5 (time))
    
    (printout t crlf crlf crlf "extracting the minimals with T&E-depth 1" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p (str-cat p1U-B ?Bmin "-mins") (str-cat p1U-B ?Bmin "-mins-TEd") (str-cat p1U-B ?Bmin "-mins-d1") 1 ?p ?n)
    (printout t (SGS-sample-nb-elements-of-type (str-cat p1U-B ?Bmin "-mins-d1")) " p1U-B" ?Bmin "-mins-d1 puzzles, i.e. minimal puzzles at depth 1 for the p1U-B" ?Bmin crlf)
    (bind ?t6 (time))
    ;;; At this point, all the puzzles in (str-cat "p1U-B" ?Bmin "-mins-d1")
    ;;; are guaranteed to have B ≥ ?Bmin.
    
    ;;; Their B-ratings are nevertheless computed in order to find the largest B ratings
    ;;; and to see if their distribution is different from the p1U-B12.
    (printout t crlf crlf crlf "computing the B ratings of the above minimal puzzles" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p B "-max-length 36 -buffer-size 10000000" (str-cat p1U-B ?Bmin "-mins-d1") (str-cat p1U-B ?Bmin "-mins-d1-B") ?p ?n)
    (bind ?t7 (time))

    (printout t "total time = " (seconds-to-hours (- ?t7 ?t0)) crlf)
    (printout t "- d1 extraction time = " (seconds-to-hours (- ?t1 ?t0)) crlf)
    (printout t "- B rating computation time = " (seconds-to-hours (- ?t2 ?t1)) crlf)
    (printout t "- B" ?Bmin " extraction time = " (seconds-to-hours (- ?t3 ?t2)) crlf)
    (printout t "- search for minimals time = " (seconds-to-hours (- ?t4 ?t3)) crlf)
    (printout t "- T&E-depth time = " (seconds-to-hours (- ?t5 ?t4)) crlf)
    (printout t "- T&E-depth 1 extraction time = " (seconds-to-hours (- ?t6 ?t5)) crlf)
    (printout t "- B rating computation time = " (seconds-to-hours (- ?t7 ?t6)) crlf)

    (printout t (SGS-sample-nb-elements-of-type p1U-d1) " p1U-d1 puzzles, i.e. p1U puzzles in T&E(1)" crlf)
    (printout t (SGS-sample-nb-elements-of-type (str-cat p1U-B ?Bmin)) " p1U-B" ?Bmin " puzzles, i.e. p1U-d1 puzzles with  B ≥ " ?Bmin crlf)
    (printout t (SGS-sample-nb-elements-of-type (str-cat p1U-B ?Bmin "-mins")) "  p1U-B" ?Bmin "-mins puzzles, i.e. minimal puzzles for the p1U-B" ?Bmin crlf)
    (printout t (SGS-sample-nb-elements-of-type (str-cat p1U-B ?Bmin "-mins-d1")) " p1U-B" ?Bmin "-mins-d1 puzzles, i.e. minimal puzzles at depth 1 for the p1U-B" ?Bmin crlf)
    (printout t "   all these minimal puzzles are guaranteed to have B ≥ " ?Bmin crlf)
    (printout t "max-value of p1U-d1-B = " (SGS-sample-max-value-of-type p1U-d1-B) crlf)
    (printout t "max-value of p1U-B" ?Bmin "-mins-d1-B = " (SGS-sample-max-value-of-type (str-cat p1U-B ?Bmin "-mins-d1-B")) crlf)
)


(deffunction SGS-script-develop-p1U-puzzles-in-TE1-with-B-greater (?Bmin)
    (SGS-script-develop-p1U-puzzles-in-TE1-with-B-greater-for-n-solution-grids-after-first-p
        ?Bmin 0 ?*Sample-Size*
    )
)




