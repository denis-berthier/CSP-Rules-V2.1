
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EXPANSION / SAMPLE STATS
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
;;; "SGS" stands for "Solution Grids Sample"
;;; "SGMS" stands for "Solution Grids Multiple Samples"




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; A. GENERAL STATISTICAL FUNCTIONS FOR A SINGLE SAMPLE AND A MULTI-SAMPLE
;;;    applies to any numerical type
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-sample-nb-S-S2-for-Usol-i (?type ?i)
    (bind ?nb 0.0)
    (bind ?S 0.0)
    (bind ?S2 0.0)
    (bind ?res (create$ 0.0 0.0 0.0))
    (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
    (bind ?file-i (str-cat ?USOL-i-DIR ?type ".txt"))
    (if (file-exists-and-nonempty ?file-i) then
        (bind ?nb (file-length ?file-i))
        (open ?file-i "SGS-sample-nb-S-S2-for-Usol-i-file-i" "r")
        (loop-for-count ?nb
            (bind ?x (eval (readline "SGS-sample-nb-S-S2-for-Usol-i-file-i")))
            (bind ?S (+ ?S ?x))
            (bind ?S2 (+ ?S2 (* ?x ?x)))
        )
        (close "SGS-sample-nb-S-S2-for-Usol-i-file-i")
    )
    (create$ ?nb ?S ?S2)
)


(deffunction SGS-sample-nb-S-S2-for-n-solution-grids-after-first-p (?type ?p ?n)
    (bind ?nb 0.0)
    (bind ?S 0.0)
    (bind ?S2 0.0)
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?res (SGS-sample-nb-S-S2-for-Usol-i ?type ?i))
        (bind ?nb (+ ?nb (nth$ 1 ?res)))
        (bind ?S (+ ?S (nth$ 2 ?res)))
        (bind ?S2 (+ ?S2 (nth$ 3 ?res)))
    )
    (create$ ?nb ?S ?S2)
)


(deffunction SGS-sample-mean-sd-of-type-for-n-solution-grids-after-first-p (?type ?p ?n)
    (bind ?nb-S-S2 (SGS-sample-nb-S-S2-for-n-solution-grids-after-first-p ?type ?p ?n))
    (bind ?nb (nth$ 1 ?nb-S-S2))
    (bind ?S (nth$ 2 ?nb-S-S2))
    (bind ?S2 (nth$ 3 ?nb-S-S2))
    (bind ?mean (/ ?S ?nb))
    (bind ?V (- (/ ?S2 ?nb) (* ?mean ?mean)))
    (bind ?sd (sqrt ?V))
    (create$ ?nb ?mean ?sd)
)


(deffunction SGS-sample-mean-sd-of-type(?type)
    (SGS-sample-mean-sd-of-type-for-n-solution-grids-after-first-p ?type 0 ?*Sample-Size*)
)


(deffunction SGMS-multi-sample-mean-sd-of-type (?type)
    ;;; a collection and a multi-sample are supposed to be defined
    (bind ?nb 0.0)
    (bind ?S 0.0)
    (bind ?S2 0.0)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (bind ?nth-sample-res (SGS-sample-nb-S-S2-for-n-solution-grids-after-first-p ?type 0 ?*Sample-Size*))
        (bind ?nb (+ ?nb (nth$ 1 ?nth-sample-res)))
        (bind ?S (+ ?S (nth$ 2 ?nth-sample-res)))
        (bind ?S2 (+ ?S2 (nth$ 3 ?nth-sample-res)))
    )
    (bind ?mean (/ ?S ?nb))
    (bind ?V (- (/ ?S2 ?nb) (* ?mean ?mean)))
    (bind ?sd (sqrt ?V))
    (create$ ?nb ?mean ?sd)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; B. DISTRIBUTION OF A VARIABLE FOR A SAMPLE AND A MULTI-SAMPLE
;;; (applies only to an integer type)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-sample-distribution-r-to-s-of-type-for-Usol-i (?type ?i ?r ?s)
    ;;; r ≤ s is supposed but not checked
    ;;; res will hold the number of elements plus all the values from r to s
    (bind ?nb-values (+ 2 (- ?s ?r)))
    (bind ?res (create$))
    (loop-for-count (?k 1 ?nb-values) (bind ?res (create$ ?res 0.0)))
    (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
    (bind ?file-i (str-cat ?USOL-i-DIR ?type ".txt"))
    (if (file-exists-and-nonempty ?file-i) then
        (bind ?len (file-length ?file-i))
        (bind ?res (replace$ ?res 1 1 ?len))
        (open ?file-i "SGS-sample-distribution-r-to-s-of-type-for-Usol-i-file-i" "r")
        (loop-for-count ?len
            (bind ?x (eval (readline "SGS-sample-distribution-r-to-s-of-type-for-Usol-i-file-i")))
            (bind ?place (+ 2 (- ?x ?r)))
            (bind ?res (replace$ ?res ?place ?place (+ (nth$ ?place ?res) 1)))
        )
        (close "SGS-sample-distribution-r-to-s-of-type-for-Usol-i-file-i")
    )
    ?res
)


(deffunction SGS-sample-distribution-r-to-s-of-type-for-n-solution-grids-after-first-p (?type ?r ?s ?p ?n)
    ;;; r ≤ s is supposed but not checked
    (bind ?nb-values (+ 2 (- ?s ?r)))
    (bind ?global-res (create$))
    (loop-for-count (?i 1 ?nb-values) (bind ?global-res (create$ ?global-res 0.0)))
    ;;; deal with each Usol-i
    (loop-for-count (?j 1 ?n)
        (bind ?i (+ ?j ?p))
        (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
        (bind ?res-i (SGS-sample-distribution-r-to-s-of-type-for-Usol-i ?type ?i ?r ?s))
        (loop-for-count (?k 1 ?nb-values)
            (bind ?global-res
                (replace$ ?global-res ?k ?k (+ (nth$ ?k ?global-res) (nth$ ?k ?res-i)))
            )
        )
    )
    ;;; write answer in terms of percentages
    (bind ?nb-elements (nth$ 1 ?global-res))
    (bind ?distrib (create$))
    (if (> ?nb-elements 0) then
        (loop-for-count (?k 2 ?nb-values)
            (bind ?distrib (create$ ?distrib (* 100 (/ (nth$ ?k ?global-res) ?nb-elements))))
        )
    )
    (printout t ?*Sample-Name* ": distribution of " (integer ?nb-elements) " values from " ?r " to " ?s " = " ?distrib crlf)
    ?global-res
)


(deffunction SGS-sample-distribution-of-type-for-n-solution-grids-after-first-p (?type ?p ?n)
    (bind ?r (SGS-sample-min-value-of-type ?type))
    (bind ?s (SGS-sample-max-value-of-type ?type))
    (SGS-sample-distribution-r-to-s-of-type-for-n-solution-grids-after-first-p ?type ?r ?s ?p ?n)
)


(deffunction SGS-sample-distribution-of-type (?type)
    (SGS-sample-distribution-of-type-for-n-solution-grids-after-first-p ?type 0 ?*Sample-Size*)
)


(deffunction SGMS-multi-sample-distribution-of-type (?type)
    (bind ?r (SGMS-multi-sample-min-value-of-type ?type))
    (printout t "min value in all samples = " ?r crlf)
    (bind ?s (SGMS-multi-sample-max-value-of-type ?type))
    (printout t "max value in all samples = " ?s crlf)
    
    (bind ?sgms-global-res (create$))
    (if (< ?r ?s) then
        (bind ?nb-values (+ 2 (- ?s ?r)))
        (loop-for-count (?i 1 ?nb-values) (bind ?sgms-global-res (create$ ?sgms-global-res 0.0)))
        
        (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
            (multi-sample-switch-to-nth-sample ?nth-sample)
            (bind ?nth-sample-res
                (SGS-sample-distribution-r-to-s-of-type-for-n-solution-grids-after-first-p ?type ?r ?s 0 ?*Sample-Size*)
            )
            ;;; add the nth sample result to the global result, term by term:
            (loop-for-count (?place 1 ?nb-values)
                (bind ?new-total-in-place (+ (nth$ ?place ?sgms-global-res) (nth$ ?place ?nth-sample-res)))
                (bind ?sgms-global-res (replace$ ?sgms-global-res ?place ?place ?new-total-in-place))
            )
        )
        ;;; write answer in terms of percentages
        (bind ?global-nb-elements (nth$ 1 ?sgms-global-res))
        (bind ?sgms-distrib (create$))
        (if (> ?global-nb-elements 0) then
            (loop-for-count (?k 2 ?nb-values)
                (bind ?sgms-distrib (create$ ?sgms-distrib (* 100 (/ (nth$ ?k ?sgms-global-res) ?global-nb-elements))))
            )
        )
        (printout t crlf
            "Multi-sample distribution of " (integer ?global-nb-elements) " values from " ?r " to " ?s " = " ?sgms-distrib crlf)
        ?sgms-global-res
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; C. CORRELATION FOR A SINGLE SAMPLE AND FOR A MULTI-SAMPLE
;;;    applies to any numerical type
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction SGS-sample-correlation-data-for-XY-types-for-Usol-i (?X-type ?Y-type ?i)
    ;;; computes Pearson's correlation coefficient between ?X and ?Y for Usol-i
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
    (bind ?nb-elements 0)
    (bind ?sum-X 0)
    (bind ?sum-Y 0)
    (bind ?sum-X2 0)
    (bind ?sum-Y2 0)
    (bind ?sum-XY 0)
    
    (bind ?USOL-i-DIR (str-cat ?*GRIDS-DIR* "USOL-" ?i "/"))
    (bind ?X-file-i (str-cat ?USOL-i-DIR ?X-type ".txt"))
    (bind ?Y-file-i (str-cat ?USOL-i-DIR ?Y-type ".txt"))
    (if (or (nonexistent-or-empty-file ?X-file-i) (nonexistent-or-empty-file ?Y-file-i))
        then (return (create$ 0 0 0 0 0 0))
        else
        (bind ?len-i (file-length ?X-file-i))
        (if (neq (file-length ?Y-file-i) ?len-i)
            then
            (printout t "error: different file lengths for " ?X-file-i " and " ?Y-file-i crlf)
            (return (create$ 0 0 0 0 0 0))
            
            else
            (open ?X-file-i "SGS-sample-correlation-coefficient-for-Usol-i-X-file-i" "r")
            (open ?Y-file-i "SGS-sample-correlation-coefficient-for-Usol-i-Y-file-i" "r")
            (while (< ?nb-elements ?len-i)
                (bind ?xi (eval (readline "SGS-sample-correlation-coefficient-for-Usol-i-X-file-i")))
                (bind ?yi (eval (readline "SGS-sample-correlation-coefficient-for-Usol-i-Y-file-i")))
                
                (bind ?nb-elements (+ ?nb-elements 1))
                (bind ?sum-X (+ ?sum-X ?xi))
                (bind ?sum-Y (+ ?sum-Y ?yi))
                (bind ?sum-X2 (+ ?sum-X2 (* ?xi ?xi)))
                (bind ?sum-Y2 (+ ?sum-Y2 (* ?yi ?yi)))
                (bind ?sum-XY (+ ?sum-XY (* ?xi ?yi)))
            )
            (close "SGS-sample-correlation-coefficient-for-Usol-i-Y-file-i")
            (close "SGS-sample-correlation-coefficient-for-Usol-i-X-file-i")
        )
    )
    (create$ ?nb-elements ?sum-X ?sum-Y ?sum-X2 ?sum-Y2 ?sum-XY)
)


(deffunction SGS-sample-correlation-data-for-XY-types-for-n-solution-grids-after-first-p (?X-type ?Y-type ?p ?n)
    (bind ?SGS-nb-elements 0)
    (bind ?SGS-sum-X 0)
    (bind ?SGS-sum-Y 0)
    (bind ?SGS-sum-X2 0)
    (bind ?SGS-sum-Y2 0)
    (bind ?SGS-sum-XY 0)
    (loop-for-count (?i (+ ?p 1) ?n)
        (bind ?res-i (SGS-sample-correlation-data-for-XY-types-for-Usol-i ?X-type ?Y-type ?i))
        (bind ?SGS-nb-elements (+ ?SGS-nb-elements (nth$ 1 ?res-i)))
        (bind ?SGS-sum-X (+ ?SGS-sum-X (nth$ 2 ?res-i)))
        (bind ?SGS-sum-Y (+ ?SGS-sum-Y (nth$ 3 ?res-i)))
        (bind ?SGS-sum-X2 (+ ?SGS-sum-X2 (nth$ 4 ?res-i)))
        (bind ?SGS-sum-Y2 (+ ?SGS-sum-Y2 (nth$ 5 ?res-i)))
        (bind ?SGS-sum-XY (+ ?SGS-sum-XY (nth$ 6 ?res-i)))
    )
    (create$ ?SGS-nb-elements ?SGS-sum-X ?SGS-sum-Y ?SGS-sum-X2 ?SGS-sum-Y2 ?SGS-sum-XY)
)


(deffunction SGS-sample-correlation-data-for-XY-types (?X-type ?Y-type)
    (SGS-sample-correlation-data-for-XY-types-for-n-solution-grids-after-first-p
        ?X-type ?Y-type 0 ?*Sample-Size*
    )
)


(deffunction SGMS-multi-sample-correlation-data-for-XY-types (?X-type ?Y-type)
    ;;; a collection and a multi-sample are supposed to be defined
    (bind ?SGMS-nb-elements 0)
    (bind ?SGMS-sum-X 0)
    (bind ?SGMS-sum-Y 0)
    (bind ?SGMS-sum-X2 0)
    (bind ?SGMS-sum-Y2 0)
    (bind ?SGMS-sum-XY 0)
    (loop-for-count (?nth-sample 1 ?*nb-samples-in-multi-sample*)
        (multi-sample-switch-to-nth-sample ?nth-sample)
        (bind ?SGS-sample-res (SGS-sample-correlation-data-for-XY-types ?X-type ?Y-type))
        (bind ?SGMS-nb-elements (+ ?SGMS-nb-elements (nth$ 1 ?SGS-sample-res)))
        (bind ?SGMS-sum-X (+ ?SGMS-sum-X (nth$ 2 ?SGS-sample-res)))
        (bind ?SGMS-sum-Y (+ ?SGMS-sum-Y (nth$ 3 ?SGS-sample-res)))
        (bind ?SGMS-sum-X2 (+ ?SGMS-sum-X2 (nth$ 4 ?SGS-sample-res)))
        (bind ?SGMS-sum-Y2 (+ ?SGMS-sum-Y2 (nth$ 5 ?SGS-sample-res)))
        (bind ?SGMS-sum-XY (+ ?SGMS-sum-XY (nth$ 6 ?SGS-sample-res)))
        
    )
    (create$ ?SGMS-nb-elements ?SGMS-sum-X ?SGMS-sum-Y ?SGMS-sum-X2 ?SGMS-sum-Y2 ?SGMS-sum-XY)
)


(deffunction correlation-data-to-correlation-for-XY-types (?X-type ?Y-type ?corr-data)
    (bind ?corr-nb-elements (nth$ 1 ?corr-data))
    (bind ?corr-sum-X (nth$ 2 ?corr-data))
    (bind ?corr-sum-Y (nth$ 3 ?corr-data))
    (bind ?corr-sum-X2 (nth$ 4 ?corr-data))
    (bind ?corr-sum-Y2 (nth$ 5 ?corr-data))
    (bind ?corr-sum-XY (nth$ 6 ?corr-data))

    (bind ?EX (/ ?corr-sum-X ?corr-nb-elements))
    (bind ?EY (/ ?corr-sum-Y ?corr-nb-elements))
    (bind ?EX2 (/ ?corr-sum-X2 ?corr-nb-elements))
    (bind ?EY2 (/ ?corr-sum-Y2 ?corr-nb-elements))
    (bind ?EXY (/ ?corr-sum-XY ?corr-nb-elements))

    (bind ?VX (- ?EX2 (* ?EX ?EX)))
    (bind ?VY (- ?EY2 (* ?EY ?EY)))
    (bind ?CovXY (- ?EXY (* ?EX ?EY)))
    ;(printout t ?VX " " ?VY " " ?CovXY crlf)

    (bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
    (bind ?a (/ ?CovXY ?VX))
    (bind ?b (- ?EY (* ?a ?EX)))
    (printout t "E(" ?X-type ") = " ?EX crlf)
    (printout t "E(" ?Y-type ") = " ?EY crlf)
    (printout t "Sigma(" ?X-type ") = " (sqrt ?VX) crlf)
    (printout t "Sigma(" ?Y-type ") = " (sqrt ?VY) crlf)
    (printout t "correlation-coefficient(" ?X-type ", " ?Y-type ") = " ?r crlf)
    (printout t "regression " ?Y-type " = a * " ?X-type " + b" crlf)
    (printout t "a = " ?a crlf)
    (printout t "b = " ?b crlf)
)


(deffunction SGS-sample-correlation-for-XY-types (?X-type ?Y-type)
    (correlation-data-to-correlation-for-XY-types
        ?X-type
        ?Y-type
        (SGS-sample-correlation-data-for-XY-types ?X-type ?Y-type)
    )
)


(deffunction SGMS-multi-sample-correlation-for-XY-types (?X-type ?Y-type)
    (correlation-data-to-correlation-for-XY-types
        ?X-type
        ?Y-type
        (SGMS-multi-sample-correlation-data-for-XY-types ?X-type ?Y-type)
    )
)



