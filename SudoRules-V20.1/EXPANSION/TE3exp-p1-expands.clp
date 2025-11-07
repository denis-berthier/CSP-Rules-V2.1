w
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE3exp-p1-EXPANDS
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
;;; A. 1-EXPANSIONS OF T&E(3) PUZZLES BEYOND THE INNER BORDER
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-analyse-TE3p1-expands-for-n-solution-grids-after-first-p (?p ?n)
    (printout t crlf crlf "STARTING COMPUTATIONS FOR 1-EXPANDS OF TE3exp" crlf)
    (bind ?t0 (time))
    (printout t "computing the 1-expands" crlf)
    (SGS-sample-compute-1-expands-for-n-solution-grids-after-first-p
        TE3-exp
        TE3exp-p1
        ?p
        ?n
    )
    (bind ?t1 (time))
    (printout t "eliminating duplicates in 1-expands" crlf)
    (SGS-sample-eliminate-duplicates-for-n-solution-grids-after-first-p
        TE3exp-p1
        TE3exp-p1U
        ?p
        ?n
    )
    (bind ?t2 (time))
    (printout t "computing T&E-depths" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p
        TE-depth
        " "
        TE3exp-p1U
        TE3exp-p1U-TEd
        ?p
        ?n
    )
    (bind ?t3 (time))
)


(deffunction SGS-script-analyse-TE3p1-expands ()
    (bind ?t0 (time))
    (SGS-script-analyse-TE3p1-expands-for-n-solution-grids-after-first-p 0 ?*Sample-Size*)
    (printout t "SAMPLE TIME = " (seconds-to-hours (- (time) ?t0)))
)


(deffunction SGMS-multi-sample-script-analyse-TE3p1-expands()
    (bind ?t0 (time))
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (printout t crlf "===> " ?nth-sample " nth sample: ")
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-script-analyse-TE3p1-expands)
    )
    (printout t crlf)
    (printout t "MULTI-SAMPLE TOTAL TIME = " (seconds-to-hours (- (time) ?t0)) crlf)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. ANALYSE THE TE3exp-p1U PUZZLES AT T&E-DEPTH 1
;;; SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; For each unique solution grid ?Usol-i (restricted to ?q grids after ?p):
;;; - extract the puzzles at T&E-depth 1
;;; - compute the BxB classifications
;;; - extract the puzzles with BxB ≥ 7
;;; - compute their BRT-expands
;;; - eliminate duplicates
;;;
;;; - find their minimals (which can only have BxB ≥ 7 and T&E-depth ≥ 2)
;;; - extract the minimals in T&E(2)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-further-analyse-TE3exp-p1U-puzzles-in-TE1-for-n-solution-grids-after-first-p (?p ?n)
    (bind ?t0 (time))
    (bind ?t3 (time))
    (printout t "extracting puzzles at T&E-depth 1" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p
        TE3exp-p1U
        TE3exp-p1U-TEd
        TE3exp-p1U-d1
        1
        ?p
        ?n
    )
    (bind ?t4 (time))
    (printout t "computing their B ratings" crlf)
    ;;; max-length is increased to 36, chain buffer to 10,000,000
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p
        B
        "-max-length 36 -buffer-size 10000000"
        TE3exp-p1U-d1
        TE3exp-p1U-d1-B
        ?p
        ?n
    )
    (bind ?t5 (time))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; C. ANALYSE THE TE3exp-p1U PUZZLES AT T&E-DEPTH 2
;;; SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; For each unique solution grid ?Usol-i (restricted to ?q grids after ?p):
;;; - extract the puzzles at T&E-depth 2
;;; - compute their BRT-expands
;;; - eliminate duplicates
;;; - compute the BxB classifications
;;; - extract the puzzles with BxB ≥ 7
;;; - compute their BRT-expands
;;; - eliminate duplicates
;;;
;;; - find their minimals (which can only have BxB ≥ 7 and T&E-depth ≥ 2)
;;; - extract the minimals in T&E(2)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-further-analyse-TE3exp-p1U-puzzles-in-TE2-with-BxB-greater (?BxBmin ?p ?n)
    (bind ?t0 (time))
    (bind ?t3 (time))
    (printout t crlf crlf crlf "extracting puzzles at T&E-depth 2" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p "TE3exp-p1U" "TE3exp-p1U-TEd" "TE3exp-p1U-d2" 2 ?p ?n)
    (bind ?t4 (time))
    (printout t crlf crlf crlf "computing their BxB classifications" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p BxB "-max-length 20 -buffer-size 10000000" "TE3exp-p1U-d2" "TE3exp-p1U-BxB" ?p ?n)
    (bind ?t5 (time))
    (printout t crlf crlf crlf "extracting puzzles with BxB ≥ 7" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p "TE3exp-p1U-d2" "TE3exp-p1U-BxB" "TE3exp-p1U-B7B" 7 ?p ?n)
    (bind ?t6 (time))
    (printout t crlf crlf crlf "computing their BRT-expands" crlf)
    (SGS-sample-compute-BRT-expands-for-n-solution-grids-after-first-p "TE3exp-p1U-B7B" "TE3exp-p1U-B7B-E" ?p ?n)
    (bind ?t7 (time))
    (printout t crlf crlf crlf "eliminating final duplicates in BRT-expands" crlf)
    (SGS-sample-eliminate-duplicates-for-n-solution-grids-after-first-p "TE3exp-p1U-B7B-E" "TE3exp-p1EU-B7B" ?p ?n)
    (bind ?t8 (time))

    (printout t crlf crlf "1-expands of the TE3exp" crlf)
    (printout t "- filter depth 2 puzzles time = " (seconds-to-hours (- ?t4 ?t3)) crlf)
    (printout t "- compute BxB time = " (seconds-to-hours (- ?t5 ?t4)) crlf)
    (printout t "- filter B7B puzzles time = " (seconds-to-hours (- ?t6 ?t5)) crlf)
    (printout t "- compute BRT-expands time = " (seconds-to-hours (- ?t7 ?t6)) crlf)
    (printout t "- eliminate-duplicates time = " (seconds-to-hours (- ?t8 ?t7)) crlf)
    (printout t "- expansion-phase p10 total time = " (seconds-to-hours (- ?t8 ?t0)) crlf)
    (printout t crlf)
    (printout t (SGS-sample-nb-elements-of-type "TE3exp-p1") " TE3exp-p1 puzzles" crlf)
    (printout t (SGS-sample-nb-elements-of-type "TE3exp-p1U") " TE3exp-p1U puzzles" crlf)
    (printout t (SGS-sample-nb-elements-of-type "TE3exp-p1U-d2") " TE3exp-p1U-d2 puzzles" crlf)
    (printout t (SGS-sample-nb-elements-of-type "TE3exp-p1U-B7B") " TE3exp-p1U-B7B puzzles" crlf)
    (printout t (SGS-sample-nb-elements-of-type "TE3exp-p1U-B7B-E") " TE3exp-p1U-B7B-E puzzles" crlf)
    (printout t (SGS-sample-nb-elements-of-type "TE3exp-p1EU-B7B") " TE3exp-p1EU-B7B puzzles" crlf)
)




