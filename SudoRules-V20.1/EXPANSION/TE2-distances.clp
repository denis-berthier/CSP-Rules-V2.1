
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / TE2 DISTANCES
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
;;; A. DISTANCE OUT OF T&E(2):
;;;    NUMBER OF EXPANSION STEPS OUT OF T&E(2)
;;;
;;; - compute the minimal number of expansion steps for a T&E(2)
;;;   minimal or min-expand puzzle to get out of T&E(2)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction try-k-expansion-steps-out-of-TE2-for-puzzle-in-Usol-i (?k ?Usol-i ?USOL-i-DIR $?previous-1pBRT-expands)
    ;;; It is supposed that there are no shorter paths out of T&E(2),
    ;;; i.e. that  all the ?previous-1pBRT-expands are in T&E(2).
    ;;; The result is:
    ;;; - an empty list if there is a 1-expand out of T&E(2),
    ;;; - the updated list of 1pBRT-expands for the next expansion phase otherwise.
    (bind ?pkU-d2-expansion-type (TE2-phase-k-pkU-d2-expansion-type-at-d2 ?k))
    (bind ?pkU-d2-expansion-file (str-cat ?USOL-i-DIR ?pkU-d2-expansion-type ".txt"))
    (bind ?list-of-1-expands
        (list-1-expands-of-puzzle-list-in-super-puzzle--in-file ?previous-1pBRT-expands ?Usol-i ?pkU-d2-expansion-file)
    )
    (bind ?list-of-1-expands (eliminate-duplicates-from-list ?list-of-1-expands))
    ;;; return all the 1pBRT-expands necessary for trying the next value of ?k
    ;;; note that all these puzzles are in T&E(2)
    (unique-BRT-expands-of-list ?list-of-1-expands)
)


(deffunction 1pBRT-expansion-steps-out-of-TE2-for-puzzle-in-Usol-i (?puzzle ?Usol-i ?USOL-i-DIR)
    ;;; the puzzle is supposed to be a minimal in T&E(2)
    ;;; or at least to be in p0
    (bind ?list-1pBRT-expands (create$ (BRT-expand-of-puzzle ?puzzle)))
    (bind ?k 0)
    (while (and (<= ?k 12) (neq (length$ ?list-1pBRT-expands) 0))
        ;;; note that the number of steps ?k cannot be 0
        (bind ?k (+ ?k 1))
        (if ?*verbose-distance-to-TEk-border* then
            (printout t "Trying dist-out = " ?k " : " crlf)
        )
        (bind ?list-1pBRT-expands
            (try-k-expansion-steps-out-of-TE2-for-puzzle-in-Usol-i
                ?k
                ?Usol-i
                ?USOL-i-DIR
                ?list-1pBRT-expands
            )
        )
        ;;; the list is set to () and the loop for ?k is exited
        ;;; if at least one 1-expand of the previous ?list-1pBRT-expands is not in T&E(2)
    )
    ?k
)


(deffunction TE2-expansion-steps-out-of-TE2-for-type-in-Usol-i (?type ?Usol-i ?USOL-i-DIR)
    ;;; compute the distance out of T&E(2) for all the puzzles of type ?type for ?Usol-i.
    ;;; ?type is supposed to be one of minimals in T&E(2),
    ;;; or at least one of puzzles in p0.
    ;;; create ?file-out if it doesn't exist, empty it otherwise.
    (bind ?file-in (str-cat ?USOL-i-DIR ?type ".txt"))
    (bind ?file-out (str-cat ?USOL-i-DIR ?type "-dist-out.txt")) ; <=== type out is defined here
    (if (file-exists-and-nonempty ?file-in) then
        (open ?file-out "TE2-expansion-steps-out-of-TE2-for-type-in-Usol-i-file-out" "w")
        (open ?file-in "TE2-expansion-steps-out-of-TE2-for-type-in-Usol-i-file-in" "r")
        (loop-for-count (file-length ?file-in)
            (bind ?puzzle (readline "TE2-expansion-steps-out-of-TE2-for-type-in-Usol-i-file-in"))
            (printout "TE2-expansion-steps-out-of-TE2-for-type-in-Usol-i-file-out"
                (1pBRT-expansion-steps-out-of-TE2-for-puzzle-in-Usol-i ?puzzle ?Usol-i ?USOL-i-DIR)
                crlf
            )
        )
        (close "TE2-expansion-steps-out-of-TE2-for-type-in-Usol-i-file-in")
        (close "TE2-expansion-steps-out-of-TE2-for-type-in-Usol-i-file-out")
    )
)


(deffunction SGS-sample-TE2-expansion-steps-out-of-TE2-for-n-solution-grids-after-first-p (?type ?p ?n)
    (open ?*Usols-file* "SGS-sample-TE2-expansion-steps-out-of-TE2-for-n-solution-grids-after-first-p-Usols-file" "r")
    (loop-for-count (?i 1 ?p)
        (readline "SGS-sample-TE2-expansion-steps-out-of-TE2-for-n-solution-grids-after-first-p-Usols-file")
    )

    (loop-for-count (?i (+ ?p 1) (+ ?p ?n))
        (show-progression ?i)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?Usol-i-file (str-cat ?USOL-i-DIR "SOLN.txt"))
        (bind ?Usol-i (read-solution-from-unique-file ?Usol-i-file))
        (TE2-expansion-steps-out-of-TE2-for-type-in-Usol-i ?type ?Usol-i ?USOL-i-DIR)
    )
    (close "SGS-sample-TE2-expansion-steps-out-of-TE2-for-n-solution-grids-after-first-p-Usols-file")
    (printout t
        crlf
        "max number of steps out of T&E(2) in the sample = "
        (SGS-sample-max-value-of-type (str-cat ?type "-dist-out"))
        crlf
    )
)


(deffunction SGS-sample-TE2-expansion-steps-out-of-TE2 (?type)
    (SGS-sample-TE2-expansion-steps-out-of-TE2-for-n-solution-grids-after-first-p
        ?type 0 ?*Sample-Size*
    )
)


(deffunction SGMS-multi-sample-TE2-expansion-steps-out-of-TE2 (?type)
    ;;; Note that it is enough to apply this function to the "MEU" puzzles
    (bind ?time0 (time))
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (printout t crlf ?*Sample-Name* ": ")
        (SGS-sample-TE2-expansion-steps-out-of-TE2 ?type )
    )
    (printout t
        "min number of steps out of T&E(2) in the sample = "
        (SGMS-multi-sample-min-value-of-type (str-cat ?type "-dist-out"))
        crlf
    )
    (printout t
        "max number of steps out of T&E(2) in the sample = "
        (SGMS-multi-sample-max-value-of-type (str-cat ?type "-dist-out"))
        crlf
    )
    (printout t "Total time = " (seconds-to-hours (- (time) ?time0)) crlf)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. VIEWING DISTANCE;
;;;    NUMBER OF EXPANSION STEPS BEFORE GETTING A VIEW OF THE T&E(2) INNER BORDER
;;;
;;; - compute the minimal number of expansion steps of a T&E(2) (minimal) puzzle
;;;   before having a strict expand in the T&E(2) inner border
;;; - find a path realising it
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction 1pBRT-1st-view-of-inner-border-for-TE2-puzzle-in-Usol-i (?puzzle ?USOL-i-DIR)
    ;;; the puzzle is supposed to be a minimal or a min-expand in T&E(2)
    (bind ?distance 1000000)
    (loop-for-count (?k 0 15)
        (bind ?border-layer-type (TE2-phase-k-max-expand-type-at-d2 ?k))
        (bind ?border-file (str-cat ?USOL-i-DIR ?border-layer-type ".txt"))
        (if (puzzle-in-some-puzzle-in-file ?puzzle ?border-file) then
            (bind ?distance ?k)
            (return ?distance)
        )
    )
    ?distance
)


(deffunction TE2-1st-view-of-inner-border-for-type-in-Usol-i (?type ?USOL-i-DIR)
    ;;; compute the distance of all the puzzles of type ?type to the border
    ;;; the file is supposed to be one of minimals or min-expands in T&E(2)
    ;;; create ?file-out if it doesn't exist, empty it otherwise
    (bind ?file (str-cat ?USOL-i-DIR ?type ".txt"))
    (bind ?file-out (str-cat ?USOL-i-DIR ?type "-1bview.txt")) ; <=== type out is defined here
    (if (and (file-exists ?file) (not (empty-file ?file))) then
        (open ?file "TE2-1st-view-of-inner-border-for-type-in-Usol-i-file" "r")
        (open ?file-out "TE2-1st-view-of-inner-border-for-type-in-Usol-i-file-out" "w")
        (loop-for-count (?k 1 (file-length ?file))
            (printout "TE2-1st-view-of-inner-border-for-type-in-Usol-i-file-out"
                (1pBRT-1st-view-of-inner-border-for-TE2-puzzle-in-Usol-i
                    (readline "TE2-1st-view-of-inner-border-for-type-in-Usol-i-file")
                    ?USOL-i-DIR
                )
                crlf
            )
        )
        (close "TE2-1st-view-of-inner-border-for-type-in-Usol-i-file-out")
        (close "TE2-1st-view-of-inner-border-for-type-in-Usol-i-file")
    )
)


(deffunction SGS-sample-TE2-1st-view-of-inner-border-for-n-solution-grids-after-first-p (?type ?p ?n)
    (loop-for-count (?i (+ ?p 1) (+ ?p ?n))
        (show-progression ?i)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (TE2-1st-view-of-inner-border-for-type-in-Usol-i ?type ?USOL-i-DIR)
    )
)



(deffunction SGS-sample-TE2-1st-view-of-inner-border (?type)
    (SGS-sample-TE2-1st-view-of-inner-border-for-n-solution-grids-after-first-p
        ?type 0 ?*Sample-Size*
    )
)


(deffunction SGMS-multi-sample-TE2-1st-view-of-inner-border (?type)
    ;;; Note that it is enough to apply this function to the "MEU" puzzles
    (bind ?time0 (time))
    (bind ?min 1000000)
    (bind ?max -1000000)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-sample-TE2-1st-view-of-inner-border ?type)
        (bind ?min-i (SGS-sample-min-value-of-type (str-cat ?type "-1bview")))
        (bind ?max-i (SGS-sample-max-value-of-type (str-cat ?type "-1bview")))
        (bind ?min (min ?min ?min-i))
        (bind ?max (max ?max ?max-i))
        (printout t ?nth-sample ": min 1bview = " ?min-i "; max 1bview = " ?max-i crlf)
    )
    (printout t "Global results: min 1bview = " ?min " max 1bview = " ?max crlf)
    (printout t "Total time = " (seconds-to-hours (- (time) ?time0)) crlf)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; C. DISTANCE TO INNER T&E(2) BORDER:
;;;    NUMBER OF EXPANSION STEPS IN T&E(2) T0 THE T&E(2) INNER BORDER
;;;
;;; - compute the minimal number of expansion steps of a T&E(2) (minimal) puzzle
;;;   to the T&E(2) inner border
;;; - find a path realising it
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; the printed list of puzzles is in the order: original puzzle to border

(deffunction 1pBRT-expansion-steps-to-inner-border-for-TE2-puzzle-in-Usol-i (?puzzle ?USOL-i-DIR)
    ;;; the puzzle is supposed to be a minimal in T&E(2)
    ;;; or at least to be in p0
    (bind ?time0 (time))
    (bind ?distance -1)
    (bind ?puzzle-BRT (BRT-expand-of-puzzle ?puzzle))
    
    (bind ?border-layer-type (TE2-phase-k-max-expand-type-at-d2 0))
    (bind ?border-file (str-cat ?USOL-i-DIR ?border-layer-type ".txt"))
    (if (puzzle-in-file ?puzzle-BRT ?border-file)
        then
        (if ?*verbose-distance-to-TEk-border* then
            (printout t ?puzzle crlf)
            (printout t ?puzzle-BRT crlf)
        )
        (bind ?distance 0)
        
        else
        (loop-for-count (?k 1 13)
            (bind ?time1 (time))
            (if ?*verbose-distance-to-TEk-border* then
                (printout t "Trying " ?k " steps : " crlf)
            )
            (bind ?border-layer-type (TE2-phase-k-max-expand-type-at-d2 ?k))
            (bind ?border-file (str-cat ?USOL-i-DIR ?border-layer-type ".txt"))
            ;;; TODO: add condition
            ;;; (if (puzzle-strictly-in-puzzle-in-file ?puzzle-BRT ?border-file) then
            
            (bind ?addable-clues (addable-clues-from-file-of-puzzles ?puzzle-BRT ?border-file))
            (if ?*verbose-distance-to-TEk-border* then
                (printout t "Addable clues " ?addable-clues ": " crlf)
            )
            (bind ?path
                (first-length-k-1pBRT-path-to-file-for-BRT-puzzle-with-addable-clues
                    ?k (- ?k 1) ?puzzle-BRT ?addable-clues ?border-file
                )
            )
            (if (neq (length$ ?path) 0) then
                (bind ?distance ?k)
                (if ?*verbose-distance-to-TEk-border* then
                    (printout t ?puzzle crlf)
                    (printout t ?puzzle-BRT crlf)
                    (foreach ?puz ?path
                        (printout t ?puz crlf)
                    )
                    (printout t "total time for expansion steps = " (seconds-to-hours (- (time) ?time0)) crlf)
                )
                (return ?distance)
            )
            (if ?*verbose-distance-to-TEk-border* then
                (printout t "time for testing " ?k " expansion steps = " (seconds-to-hours (- (time) ?time1)) crlf)
            )
        )
    )
    ?distance
)



(deffunction TE2-expansion-steps-to-inner-border-for-type-in-Usol-i (?type ?USOL-i-DIR)
    ;;; compute the distance of all the puzzles of type ?type to the inner border
    ;;; the file is supposed to be one of minimals in T&E(2)
    ;;; or at least one of puzzles in p0
    ;;; create ?file-out if it doesn't exist, empty it otherwise
    (bind ?file (str-cat ?USOL-i-DIR ?type ".txt"))
    (bind ?file-out (str-cat ?USOL-i-DIR ?type "-dist-in.txt")) ; <=== type out is defined here
    (if (and (file-exists ?file) (not (empty-file ?file))) then
        (open ?file "TE2-expansion-steps-to-inner-border-for-type-in-Usol-i-file" "r")
        (open ?file-out "TE2-expansion-steps-to-inner-border-for-type-in-Usol-i-file-out" "w")
        (loop-for-count (?k 1 (file-length ?file))
            (printout "TE2-expansion-steps-to-inner-border-for-type-in-Usol-i-file-out"
                (1pBRT-expansion-steps-to-inner-border-for-TE2-puzzle-in-Usol-i
                    (readline "TE2-expansion-steps-to-inner-border-for-type-in-Usol-i-file")
                    ?USOL-i-DIR
                )
                crlf
            )
        )
        (close "TE2-expansion-steps-to-inner-border-for-type-in-Usol-i-file-out")
        (close "TE2-expansion-steps-to-inner-border-for-type-in-Usol-i-file")
    )
)


(deffunction SGS-sample-TE2-expansion-steps-to-inner-border-for-n-solution-grids-after-first-p (?type ?p ?n)
    (bind ?time0 (time))
    (loop-for-count (?i (+ ?p 1) (+ ?p ?n))
        (show-progression ?i)
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (TE2-expansion-steps-to-inner-border-for-type-in-Usol-i ?type ?USOL-i-DIR)
    )
    (printout t crlf
        "max minimal number of steps to the inner border in the sample = "
        (SGS-sample-max-value-of-type (str-cat ?type "-dist-in"))
        crlf
    )
    (printout t "total time = " (seconds-to-hours (- (time) ?time0)) crlf)
)


(deffunction SGS-sample-TE2-expansion-steps-to-inner-border (?type)
    (SGS-sample-TE2-expansion-steps-to-inner-border-for-n-solution-grids-after-first-p
        ?type 0 ?*Sample-Size*
    )
)


(deffunction SGMS-multi-sample-TE2-expansion-steps-to-inner-border (?type)
    ;;; Note that it is enough to apply this function to the "MEU" puzzles
    (bind ?time0 (time))
    (bind ?min 1000000)
    (bind ?max -1000000)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (SGS-sample-TE2-expansion-steps-to-inner-border ?type)
        (bind ?min-i (SGS-sample-min-value-of-type (str-cat ?type "-dist-in")))
        (bind ?max-i (SGS-sample-max-value-of-type (str-cat ?type "-dist-in")))
        (bind ?min (min ?min ?min-i))
        (bind ?max (max ?max ?max-i))
        (printout t ?nth-sample ": min dist-in = " ?min-i "; max dist-in = " ?max-i crlf)
    )
    (printout t "Global results: min dist-in = " ?min " max dist-in = " ?max crlf)
    (printout t "Total time = " (seconds-to-hours (- (time) ?time0)) crlf)
)




