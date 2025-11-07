



(redefine-collection-and-sample
    (str-cat ?*Application-Dir* "EXPANSION/DUMMY-COLLECTION/")
    0
    0
    "DUMMY-SAMPLE"
    0
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; A. "MANUAL" PREPARATION WORK FOR THE WHOLE COLLECTION OF MINIMALS
;;; CLEAN AND COMPLETE THE ORIGINAL DATA
;;; CHECK THAT THEY ARE ALL IN GSF'S SOLUTION MINLEX FORM
;;; ==> STARTING POINT FOR ALL THE SAMPLES, IN ?*WORK-DIR*:
;;;     GLOBAL FILES minimals.txt" and "solutions.txt"
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; REAL WORK STARTS HERE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. CREATE THE SAMPLE OF 1,000 NON-REDUNDANT SOLUTIONS
;;; ==> STARTING POINT FOR THE SAMPLE, IN ?*SAMPLE-DIR*:
;;;     LOCAL FILE "Usols.txt"
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(copy-n-lines-after-fist-p-from-text-file
    (str-cat ?*COLLECTION-DIR* "solutions.txt")
    0
    0
    (str-cat ?*SAMPLE-DIR* "Usols.txt")
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; C. BASIC ACTIONS, SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID IN THE SAMPLE
;;;
;;; FOR EACH UNIQUE GRID USOL-i IN THE SAMPLE:
;;; - create the GRIDS/USOL-i directory; in it:
;;; - create a "mins.txt" file with all the original minimals that have this solution
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(SGS-sample-copy-minimals-for-n-solution-grids-after-first-p 0 ?*Sample-Size*)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; E. BRT-EXPANSIONS
;;;
;;; FOR EACH UNIQUE GRID USOL-i IN THE SAMPLE:
;;; - start from the unique mininimals in local file "mins.txt"
;;; - compute their BRT-expands ==> local file file "ME.txt"
;;; - compute the unique BRT-expands ==> local file "MEU.txt"
;;; (we know they will alll be in T&E(3)
;;;
;;; (- check: compute all their minimals ==> file "MEU-mins.txt")
;;; (- check: filter those in T&E(3) ==> file "MEU-mins-d3.txt")
;;; (- check: is there any new minimal in T&E(3)?)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; skip this if you want all the T&E(3) expansions
(SGS-script-compute-TE3-layer-p0 0 ?*Sample-Size*)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; D. SATURATE MINIMALS SEPARATELY FOR EACH NON REDUNDANT SOLUTION GRID
;;;
;;; - compute all the unique minimals of the BRT-expands
;;; - filter the new ones in T&E(3)
;;; - compute the BRT-expands of the new ones
;;; - eliminate duplicates
;;; - filter the new ones
;;; - find all their unique minimals; iterate
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


SKIP THIS IF YOU DON''T WANT TO SATURATE THE SAMPKE:
;;; For each unique solution grid, compute all the BRT-expands

(SGS-sample-find-minimals-for-n-solution-grids-after-first-p "MEU" "all-mins-g1" 0 0)

(SGS-sample-find-minimals-for-n-solution-grids-after-first-p "MEU" "all-mins-g1" 14 1)


(SGS-sample-nb-elements-of-type "all-mins-g1")




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; E. ALL 1-  AND BRT- EXPANSIONS WITHIN T&E(3)
;;;
;;; FOR EACH UNIQUE GRID USOL-i IN THE SAMPLE:
;;; - start from the unique min-expands in "MEU.txt"
;;; - compute the 1-expands ==> file "p1.txt"
;;; - compute the unique 1-expands ==> file "p1U.txt"
;;; - compute their T&E-depths ==> file "p1U-TEd.txt"
;;; - extract the puzzle at T&E-depth 3 ==> file "p1U-d3.txt"
;;; - compute their BRT-expands ==> file "p1U-d3-E.txt"
;;; - compute the unique BRT-expands ==> file "p1EU-d3.txt"
;;;
;;; - iterate expansions within T&E(3)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(SGS-script-compute-TE3-layers-upto 10 0 ?*Sample-Size*)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; F. TERMINAL EXPANDS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(SGS-script-extract-TE3-expands-upto-layer-k 10 0 ?*Sample-Size*)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; G. T&E(2) PUZZLES
;;;    Starting from the T&E(3)-expands
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(SGS-script-compute-d2-1-expand-layer-of-TE3-expands 0 ?*Sample-Size*)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; H. T&E(2) PUZZLES
;;;    Starting from the p1U
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(SGS-script-develop-p1U-puzzles-in-TE2-with-BxB-greater 7 0 ?*Sample-Size*)







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; I. T&E(1) PUZZLES in p1U-d1
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(SGS-script-develop-p1U-puzzles-in-TE1-with-B-greater 12 0 ?*Sample-Size*)



