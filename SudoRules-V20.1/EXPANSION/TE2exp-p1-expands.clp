
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE2exp-p1-EXPANDS
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
;;; A. 1-EXPANSIONS OF T&E(2) PUZZLES BEYOND THE INNER BORDER
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-script-analyse-TE2exp-p1-expands-for-n-solution-grids-after-first-p (?p ?n)
    (printout t crlf crlf "STARTING COMPUTATIONS FOR 1-EXPANDS OF TE2exp" crlf)
    (bind ?t0 (time))
    (printout t "computing the 1-expands" crlf)
    (SGS-sample-compute-1-expands-for-n-solution-grids-after-first-p
        TE2exp
        TE2exp-p1
        ?p
        ?n
    )
    (bind ?t1 (time))
    (printout t "eliminating duplicates in 1-expands" crlf)
    (SGS-sample-eliminate-duplicates-for-n-solution-grids-after-first-p
        TE2exp-p1
        TE2exp-p1U
        ?p
        ?n
    )
    (bind ?t2 (time))
    (printout t "computing T&E-depths" crlf)
    (SGS-sample-compute-classif-for-n-solution-grids-after-first-p
        TE-depth
        " "
        TE2exp-p1U
        TE2exp-p1U-TEd
        ?p
        ?n
    )
    (bind ?t3 (time))
)



(deffunction SGS-script-analyse-TE2exp-p1-expands ()
    (bind ?t0 (time))
    (SGS-script-analyse-TE2exp-p1-expands-for-n-solution-grids-after-first-p 0 ?*Sample-Size*)
    (printout t "SAMPLE TIME = " (seconds-to-hours (- (time) ?t0)))
)


(deffunction SGMS-multi-sample-script-analyse-TE2exp-p1-expands()
    (bind ?t0 (time))
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (printout t crlf "===> " ?nth-sample " nth sample: ")
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-script-analyse-TE2exp-p1-expands)
    )
    (printout t crlf)
    (printout t "MULTI-SAMPLE TOTAL TIME = " (seconds-to-hours (- (time) ?t0)) crlf)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. ANALYSE THE TE2exp-p1U PUZZLES AT T&E-DEPTH 1
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

(deffunction SGS-script-further-analyse-TE2exp-p1U-puzzles-in-TE1-for-n-solution-grids-after-first-p (?p ?n)
    (bind ?t0 (time))
    (bind ?t3 (time))
    (printout t "extracting puzzles at T&E-depth 1" crlf)
    (SGS-sample-extract-classif-with-X-value-for-n-solution-grids-after-first-p
        TE2exp-p1U
        TE2exp-p1U-TEd
        TE2exp-p1U-d1
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
        TE2exp-p1U-d1
        TE2exp-p1U-d1-B
        ?p
        ?n
    )
    (bind ?t5 (time))
)
