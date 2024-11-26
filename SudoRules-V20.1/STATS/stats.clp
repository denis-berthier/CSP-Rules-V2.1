
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                                  STATS / STATS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;            January 2006 - November 2023            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; General functions for computing the correlation coefficient between
;;; two random variables X and Y (or some function of Y)
;;; written as sequences of values in two text files for a series of puzzles (one value per line).
;;; Values in the files are typically those produced by function:
;;; "classify-n-grids-after-first-p-from-text-file", but this is not necessary.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Pearson's correlation coefficient
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction correlation-coefficient (?X-name ?Y-name ?X-file ?Y-file ?file-length)
    ;;; computes Pearson's correlation coefficient between ?X and ?Y
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
	(close)
	(open ?X-file "X-file" "r")
	(open ?Y-file "Y-file" "r")
	
	(bind ?i 0)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "Y-file"))
		(bind ?yi (eval ?yline))
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
	)
	
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?VY (- ?EY2 (* ?EY ?EY)))
	(bind ?CovXY (- ?EXY (* ?EX ?EY)))
	(bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
	(bind ?a (/ ?CovXY ?VX))
	(bind ?b (- ?EY (* ?a ?EX)))
	(printout t "E(" ?X-name ") = " ?EX crlf)
    (printout t "E(" ?Y-name ") = " ?EY crlf)
	(printout t "Sigma(" ?X-name ") = " (sqrt ?VX) crlf)
    (printout t "Sigma(" ?Y-name ") = " (sqrt ?VY) crlf)
	(printout t "correlation-coefficient(" ?X-name ", " ?Y-name ") = " ?r crlf)
	(printout t "regression " ?Y-name " = a * " ?X-name " + b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "X-file")
	(close "Y-file")
)


;;; same function, restricted to the cases where ?Y ≠ 0

(deffunction nonZ0-correlation-coefficient (?X-name ?Y-name ?Z-name ?X-file ?Y-file ?Z-file ?file-length)
    ;;; computes Pearson's correlation coefficient coefficient between ?X and ?Y, excluding data with  ?Z = 0
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
    (close)
    (open ?X-file "X-file" "r")
    (open ?Y-file "Y-file" "r")
    (open ?Z-file "Z-file" "r")

    (bind ?i 0)
    (bind ?nb 0)
    (bind ?EX 0)
    (bind ?EY 0)
    (bind ?EX2 0)
    (bind ?EY2 0)
    (bind ?EXY 0)
    
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?xline (readline "X-file"))
        (bind ?xi (eval ?xline))
        (bind ?yline (readline "Y-file"))
        (bind ?yi (eval ?yline))
        (bind ?zline (readline "Z-file"))
        (bind ?zi (eval ?zline))
        (if (neq ?zi 0) then
            (bind ?nb (+ ?nb 1))
            (bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?nb)))
            (bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?nb)))
            (bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?nb)))
            (bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?nb)))
            (bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?nb)))
        )
    )
    
    (bind ?VX (- ?EX2 (* ?EX ?EX)))
    (bind ?VY (- ?EY2 (* ?EY ?EY)))
    (bind ?CovXY (- ?EXY (* ?EX ?EY)))
    (bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
    (bind ?a (/ ?CovXY ?VX))
    (bind ?b (- ?EY (* ?a ?EX)))
    (printout t "# of " ?Z-name "≠0 cases = " ?nb crlf)
    (printout t "E(" ?X-name ") = " ?EX crlf)
    (printout t "E(" ?Y-name ") = " ?EY crlf)
    (printout t "Sigma(" ?X-name ") = " (sqrt ?VX) crlf)
    (printout t "Sigma(" ?Y-name ") = " (sqrt ?VY) crlf)
    (printout t "correlation-coefficient(" ?X-name ", " ?Y-name ") = " ?r crlf)
    (printout t "regression " ?Y-name " = a * " ?X-name " + b" crlf)
    (printout t "a = " ?a crlf)
    (printout t "b = " ?b crlf)
    (close "X-file")
    (close "Y-file")
)


;;; same function, restricted to the cases where ?Z > ?z

(deffunction Zgtz-correlation-coefficient (?X-name ?Y-name ?Z-name ?X-file ?Y-file ?Z-file ?zmin ?file-length)
    ;;; computes Pearson's correlation coefficient coefficient between ?X and ?Y, restricted to data with ?Z > ?z
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
    (close)
    (open ?X-file "X-file" "r")
    (open ?Y-file "Y-file" "r")
    (open ?Z-file "Z-file" "r")

    (bind ?i 0)
    (bind ?nb 0)
    (bind ?EX 0)
    (bind ?EY 0)
    (bind ?EX2 0)
    (bind ?EY2 0)
    (bind ?EXY 0)
    
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?xline (readline "X-file"))
        (bind ?xi (eval ?xline))
        (bind ?yline (readline "Y-file"))
        (bind ?yi (eval ?yline))
        (bind ?zline (readline "Z-file"))
        (bind ?zi (eval ?zline))
        (if (> ?zi ?zmin) then
            (bind ?nb (+ ?nb 1))
            (bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?nb)))
            (bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?nb)))
            (bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?nb)))
            (bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?nb)))
            (bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?nb)))
        )
    )
    
    (bind ?VX (- ?EX2 (* ?EX ?EX)))
    (bind ?VY (- ?EY2 (* ?EY ?EY)))
    (bind ?CovXY (- ?EXY (* ?EX ?EY)))
    (bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
    (bind ?a (/ ?CovXY ?VX))
    (bind ?b (- ?EY (* ?a ?EX)))
    (printout t "# of " ?Z-name " cases > " ?zmin " = " ?nb crlf)
    (printout t "E(" ?X-name ") = " ?EX crlf)
    (printout t "E(" ?Y-name ") = " ?EY crlf)
    (printout t "Sigma(" ?X-name ") = " (sqrt ?VX) crlf)
    (printout t "Sigma(" ?Y-name ") = " (sqrt ?VY) crlf)
    (printout t "correlation-coefficient(" ?X-name ", " ?Y-name ") = " ?r crlf)
    (printout t "regression " ?Y-name " = a * " ?X-name " + b" crlf)
    (printout t "a = " ?a crlf)
    (printout t "b = " ?b crlf)
    (close "X-file")
    (close "Y-file")
)


;;; Correlation coefficient between X and a function of Y
;;; May be useful e.g. when:
;;; - Y is the number of facts used in the CLIPS computations,
;;; - Y is the computation time.

(deffunction log-correlation-coefficient (?X-name ?Y-name ?X-file ?Y-file ?file-length)
    ;;; computes Pearson's correlation coefficient coefficient between ?X and log(?Y)
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
	(close)
	(open ?X-file "X-file" "r")
	(open ?Y-file "Y-file" "r")
	
	(bind ?i 0)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "Y-file"))
		;;; only difference: log
		(bind ?yi (log (eval ?yline)))
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
	)
	
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?VY (- ?EY2 (* ?EY ?EY)))
	(bind ?CovXY (- ?EXY (* ?EX ?EY)))
	(bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
	(bind ?a (/ ?CovXY ?VX))
	(bind ?b (- ?EY (* ?a ?EX)))
    ;;; only difference: log
    (printout t "E(" ?X-name ") = " ?EX crlf)
    (printout t "E(log(" ?Y-name ")) = " ?EY crlf)
    (printout t "Sigma(" ?X-name ") = " (sqrt ?VX) crlf)
    (printout t "Sigma(log(" ?Y-name ")) = " (sqrt ?VY) crlf)
    (printout t "correlation-coefficient(" ?X-name ", log(" ?Y-name ")) = " ?r crlf)
    (printout t "regression log(" ?Y-name ") = a * " ?X-name " + b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "X-file")
	(close "Y-file")
)



(deffunction sqr-correlation-coefficient (?X-name ?Y-name ?X-file ?Y-file ?file-length)
    ;;; computes Pearson's correlation coefficient coefficient between ?X and sqr(?Y)
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
	(close)
	(open ?X-file "X-file" "r")
	(open ?Y-file "Y-file" "r")
	
	(bind ?i 0)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "Y-file"))
		;;; only difference: sqrt
		(bind ?yi (sqrt (eval ?yline)))
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
	)
	
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?VY (- ?EY2 (* ?EY ?EY)))
	(bind ?CovXY (- ?EXY (* ?EX ?EY)))
	(bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
	(bind ?a (/ ?CovXY ?VX))
	(bind ?b (- ?EY (* ?a ?EX)))
    ;;; only difference: sqr
    (printout t "E(" ?X-name ") = " ?EX crlf)
    (printout t "E(sqr(" ?Y-name ")) = " ?EY crlf)
    (printout t "Sigma(" ?X-name ") = " (sqrt ?VX) crlf)
    (printout t "Sigma(sqr(" ?Y-name ")) = " (sqrt ?VY) crlf)
    (printout t "correlation-coefficient(" ?X-name ", sqr(" ?Y-name ")) = " ?r crlf)
    (printout t "regression sqr(" ?Y-name ") = a * " ?X-name " + b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "X-file")
	(close "Y-file")
)



(deffunction sqr4-correlation-coefficient (?X-name ?Y-name ?X-file ?Y-file ?file-length)
    ;;; computes Pearson's correlation coefficient coefficient between ?X and sqr4(?Y)
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
	(close)
	(open ?X-file "X-file" "r")
	(open ?Y-file "Y-file" "r")
	
	(bind ?i 0)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "Y-file"))
		;;; only difference: sqr4
		(bind ?yi (sqrt (sqrt (eval ?yline))))
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
	)
	
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?VY (- ?EY2 (* ?EY ?EY)))
	(bind ?CovXY (- ?EXY (* ?EX ?EY)))
	(bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
	(bind ?a (/ ?CovXY ?VX))
	(bind ?b (- ?EY (* ?a ?EX)))
    ;;; only difference: sqr4
    (printout t "E(" ?X-name ") = " ?EX crlf)
    (printout t "E(sqr4(" ?Y-name ")) = " ?EY crlf)
    (printout t "Sigma(" ?X-name ") = " (sqrt ?VX) crlf)
    (printout t "Sigma(sqr4(" ?Y-name ")) = " (sqrt ?VY) crlf)
    (printout t "correlation-coefficient(" ?X-name ", sqr4(" ?Y-name ")) = " ?r crlf)
    (printout t "regression sqr4(" ?Y-name ") = a * " ?X-name " + b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "X-file")
	(close "Y-file")
)



(deffunction sqr6-correlation-coefficient (?X-name ?Y-name ?X-file ?Y-file ?file-length)
    ;;; computes Pearson's correlation coefficient coefficient between ?X and sqr6(?Y)
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
	(close)
	(open ?X-file "X-file" "r")
	(open ?Y-file "Y-file" "r")
	
	(bind ?i 0)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "Y-file"))
		;;; only difference: sqr6
		(bind ?yi (** (eval ?yline) (/ 1.0 6)))
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
	)
	
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?VY (- ?EY2 (* ?EY ?EY)))
	(bind ?CovXY (- ?EXY (* ?EX ?EY)))
	(bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
	(bind ?a (/ ?CovXY ?VX))
	(bind ?b (- ?EY (* ?a ?EX)))
    ;;; only difference: sqr6
    (printout t "E(" ?X-name ") = " ?EX crlf)
    (printout t "E(sqr6(" ?Y-name ")) = " ?EY crlf)
    (printout t "Sigma(" ?X-name ") = " (sqrt ?VX) crlf)
    (printout t "Sigma(sqr6(" ?Y-name ")) = " (sqrt ?VY) crlf)
    (printout t "correlation-coefficient(" ?X-name ", sqr6(" ?Y-name ")) = " ?r crlf)
    (printout t "regression sqr6(" ?Y-name ") = a * " ?X-name " + b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "X-file")
	(close "Y-file")
)



(deffunction sqr8-correlation-coefficient (?X-name ?Y-name ?X-file ?Y-file ?file-length)
    ;;; computes Pearson's correlation coefficient coefficient between ?X and sqr8(?Y)
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
	(close)
	(open ?X-file "X-file" "r")
	(open ?Y-file "Y-file" "r")
	
	(bind ?i 0)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "Y-file"))
		;;; only difference: sqr8
		(bind ?yi (sqrt (sqrt (sqrt (eval ?yline)))))
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
	)
	
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?VY (- ?EY2 (* ?EY ?EY)))
	(bind ?CovXY (- ?EXY (* ?EX ?EY)))
	(bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
	(bind ?a (/ ?CovXY ?VX))
	(bind ?b (- ?EY (* ?a ?EX)))
    ;;; only difference: sqr8
    (printout t "E(" ?X-name ") = " ?EX crlf)
    (printout t "E(sqr8(" ?Y-name ")) = " ?EY crlf)
    (printout t "Sigma(" ?X-name ") = " (sqrt ?VX) crlf)
    (printout t "Sigma(sqr8(" ?Y-name ")) = " (sqrt ?VY) crlf)
    (printout t "correlation-coefficient(" ?X-name ", sqr8(" ?Y-name ")) = " ?r crlf)
    (printout t "regression sqr8(" ?Y-name ") = a * " ?X-name " + b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "X-file")
	(close "Y-file")
)



(deffunction sqr16-correlation-coefficient (?X-name ?Y-name ?X-file ?Y-file ?file-length)
    ;;; computes Pearson's correlation coefficient coefficient between ?X and sqr16(?Y)
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
	(close)
	(open ?X-file "X-file" "r")
	(open ?Y-file "Y-file" "r")
	
	(bind ?i 0)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "Y-file"))
		;;; only difference: sqr16
		(bind ?yi (sqrt (sqrt (sqrt (sqrt (eval ?yline))))))
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
	)
	
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?VY (- ?EY2 (* ?EY ?EY)))
	(bind ?CovXY (- ?EXY (* ?EX ?EY)))
	(bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
	(bind ?a (/ ?CovXY ?VX))
	(bind ?b (- ?EY (* ?a ?EX)))
    ;;; only difference: sqr16
    (printout t "E(" ?X-name ") = " ?EX crlf)
    (printout t "E(sqr16(" ?Y-name ")) = " ?EY crlf)
    (printout t "Sigma(" ?X-name ") = " (sqrt ?VX) crlf)
    (printout t "Sigma(sqr16(" ?Y-name ")) = " (sqrt ?VY) crlf)
    (printout t "correlation-coefficient(" ?X-name ", sqr16(" ?Y-name ")) = " ?r crlf)
    (printout t "regression sqr16(" ?Y-name ") = a * " ?X-name " + b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "X-file")
	(close "Y-file")
)





(deffunction corde2(?x)
	(** (* 2 (sin ( / (acos ?x) 2))) 2)
)

(deffunction mean-distance(?x ?y ?z ?t)
	(sqrt (/ (+ (corde2 ?x) (corde2 ?y) (corde2 ?z) (corde2 ?t)) 4))
)

(deffunction mean-distance5(?x ?y ?z ?t ?u)
	(sqrt (/ (+ (corde2 ?x) (corde2 ?y) (corde2 ?z) (corde2 ?t) (corde2 ?u)) 5))
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Old functions for classifying instances according to some criterion
;;; (used in SudoRules in the first old uses of the controlled-bias generator)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction number-by-level (?fixed-level ?levels-file ?file-length)
	(close)
	(open ?levels-file "levels-file" "r")
	(bind ?i 0)
	(bind ?nb-puzzles 0)
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?levels-line (readline "levels-file"))
		(bind ?li (eval ?levels-line))
		(if (eq ?li ?fixed-level) then
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
		)
	)
	(printout t ?fixed-level "   " ?nb-puzzles crlf)
	(close "levels-file")
)



(deffunction mean-sd-by-level (?fixed-level ?levels-file ?times-file ?facts-file ?file-length)
	(close)
	(open ?levels-file "levels-file" "r")
	(open ?times-file "times-file" "r")
	(open ?facts-file "facts-file" "r")
	
	(bind ?i 0)
	(bind ?nb-puzzles 0)
	(bind ?ETimes 0)
	(bind ?ETimes2 0)
	(bind ?EFacts 0)
	(bind ?EFacts2 0)
	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?levels-line (readline "levels-file"))
		(bind ?li (eval ?levels-line))
		(bind ?times-line (readline "times-file"))
		(bind ?ti (eval ?times-line))
		(bind ?facts-line (readline "facts-file"))
		(bind ?fi (eval ?facts-line))
		(if (eq ?li ?fixed-level) then
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
			(bind ?ETimes (+ ?ETimes (/ (- ?ti  ?ETimes) ?nb-puzzles)))
			(bind ?ETimes2 (+ ?ETimes2 (/ (- (* ?ti ?ti) ?ETimes2) ?nb-puzzles)))
			(bind ?EFacts (+ ?EFacts (/ (- ?fi  ?EFacts) ?nb-puzzles)))
			(bind ?EFacts2 (+ ?EFacts2 (/ (- (* ?fi ?fi) ?EFacts2) ?nb-puzzles)))
		)
	)
	(bind ?SigmaTimes (sqrt (- ?ETimes2 (* ?ETimes ?ETimes))))
	(bind ?SigmaFacts (sqrt (- ?EFacts2 (* ?EFacts ?EFacts))))
	(printout t ?fixed-level "   " ?nb-puzzles "   " ?ETimes "   " ?SigmaTimes "   " ?EFacts "   " ?SigmaFacts crlf)
	(close "levels-file")
	(close "times-file")
	(close "facts-file")
)



(deffunction mean-sd-by-level-with-SER (?fixed-level ?levels-file ?times-file ?facts-file ?SER-file ?file-length)
	(close)
	(open ?levels-file "levels-file" "r")
	(open ?times-file "times-file" "r")
	(open ?facts-file "facts-file" "r")
	(open ?SER-file "SER-file" "r")
	
	(bind ?i 0)
	(bind ?nb-puzzles 0)
	(bind ?ETimes 0)
	(bind ?ETimes2 0)
	(bind ?EFacts 0)
	(bind ?EFacts2 0)
	(bind ?ESER 0)
	(bind ?ESER2 0)
	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?levels-line (readline "levels-file"))
		(bind ?li (eval ?levels-line))
		(bind ?times-line (readline "times-file"))
		(bind ?ti (eval ?times-line))
		(bind ?facts-line (readline "facts-file"))
		(bind ?fi (eval ?facts-line))
		(bind ?SER-line (readline "SER-file"))
		(bind ?si (eval ?SER-line))
		(if (eq ?li ?fixed-level) then
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
			(bind ?ETimes (+ ?ETimes (/ (- ?ti  ?ETimes) ?nb-puzzles)))
			(bind ?ETimes2 (+ ?ETimes2 (/ (- (* ?ti ?ti) ?ETimes2) ?nb-puzzles)))
			(bind ?EFacts (+ ?EFacts (/ (- ?fi  ?EFacts) ?nb-puzzles)))
			(bind ?EFacts2 (+ ?EFacts2 (/ (- (* ?fi ?fi) ?EFacts2) ?nb-puzzles)))
			(bind ?ESER (+ ?ESER (/ (- ?si  ?ESER) ?nb-puzzles)))
			(bind ?ESER2 (+ ?ESER2 (/ (- (* ?si ?si) ?ESER2) ?nb-puzzles)))
		)
	)
	(bind ?SigmaTimes (sqrt (- ?ETimes2 (* ?ETimes ?ETimes))))
	(bind ?SigmaFacts (sqrt (- ?EFacts2 (* ?EFacts ?EFacts))))
	(bind ?SigmaSER (sqrt (- ?ESER2 (* ?ESER ?ESER))))
	(printout t ?fixed-level "     " ?nb-puzzles "     " ?ETimes "   " ?SigmaTimes "     " ?EFacts "   " ?SigmaFacts "     " ?ESER "   " ?SigmaSER crlf)
	(close "levels-file")
	(close "times-file")
	(close "facts-file")
	(close "SER-file")
)



(deffunction mean-sd-by-level-with-SER-and-nb-clues (?fixed-level ?levels-file ?times-file ?facts-file ?SER-file ?nb-clues-file ?file-length)
	(close)
	(open ?levels-file "levels-file" "r")
	(open ?times-file "times-file" "r")
	(open ?facts-file "facts-file" "r")
	(open ?SER-file "SER-file" "r")
	(open ?nb-clues-file "nb-clues-file" "r")
	
	(bind ?nb-puzzles 0)
	(bind ?ETimes 0)
	(bind ?ETimes2 0)
	(bind ?EFacts 0)
	(bind ?EFacts2 0)
	(bind ?ESER 0)
	(bind ?ESER2 0)
	(bind ?ENbClues 0)
	(bind ?ENbClues2 0)
	
	(bind ?i 0)
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?levels-line (readline "levels-file"))
		(bind ?li (eval ?levels-line))
		(bind ?times-line (readline "times-file"))
		(bind ?ti (eval ?times-line))
		(bind ?facts-line (readline "facts-file"))
		(bind ?fi (eval ?facts-line))
		(bind ?SER-line (readline "SER-file"))
		(bind ?si (eval ?SER-line))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(if (eq ?li ?fixed-level) then
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
			(bind ?ETimes (+ ?ETimes (/ (- ?ti  ?ETimes) ?nb-puzzles)))
			(bind ?ETimes2 (+ ?ETimes2 (/ (- (* ?ti ?ti) ?ETimes2) ?nb-puzzles)))
			(bind ?EFacts (+ ?EFacts (/ (- ?fi  ?EFacts) ?nb-puzzles)))
			(bind ?EFacts2 (+ ?EFacts2 (/ (- (* ?fi ?fi) ?EFacts2) ?nb-puzzles)))
			(bind ?ESER (+ ?ESER (/ (- ?si  ?ESER) ?nb-puzzles)))
			(bind ?ESER2 (+ ?ESER2 (/ (- (* ?si ?si) ?ESER2) ?nb-puzzles)))
			(bind ?ENbClues (+ ?ENbClues (/ (- ?ni  ?ENbClues) ?nb-puzzles)))
			(bind ?ENbClues2 (+ ?ENbClues2 (/ (- (* ?ni ?ni) ?ENbClues2) ?nb-puzzles)))
		)
	)
	(bind ?SigmaTimes (sqrt (- ?ETimes2 (* ?ETimes ?ETimes))))
	(bind ?SigmaFacts (sqrt (- ?EFacts2 (* ?EFacts ?EFacts))))
	(bind ?SigmaSER (sqrt (- ?ESER2 (* ?ESER ?ESER))))
	(bind ?SigmaNbClues (sqrt (- ?ENbClues2 (* ?ENbClues ?ENbClues))))
	(printout t ?fixed-level "     " ?nb-puzzles "     " ?ETimes "   " ?SigmaTimes "     " ?EFacts "   " ?SigmaFacts "     " ?ESER "   " ?SigmaSER "     " ?ENbClues "   " ?SigmaNbClues crlf)
	(close "levels-file")
	(close "times-file")
	(close "facts-file")
	(close "SER-file")
	(close "nb-clues-file")
)



(deffunction mean-sd-by-nb-clues-with-SER (?fixed-nb-clues ?nb-clues-file ?levels-file ?times-file ?facts-file ?SER-file ?file-length)
	(close)
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?levels-file "levels-file" "r")
	(open ?times-file "times-file" "r")
	(open ?facts-file "facts-file" "r")
	(open ?SER-file "SER-file" "r")
    ?nb-puzzles
	(bind ?nb-puzzles 0)
	(bind ?ELevels 0)
	(bind ?ELevels2 0)
	(bind ?ETimes 0)
	(bind ?ETimes2 0)
	(bind ?EFacts 0)
	(bind ?EFacts2 0)
	(bind ?ESER 0)
	(bind ?ESER2 0)
	
	(bind ?i 0)
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(bind ?levels-line (readline "levels-file"))
		(bind ?li (eval ?levels-line))
		(bind ?times-line (readline "times-file"))
		(bind ?ti (eval ?times-line))
		(bind ?facts-line (readline "facts-file"))
		(bind ?fi (eval ?facts-line))
		(bind ?SER-line (readline "SER-file"))
		(bind ?si (eval ?SER-line))
		(if (eq ?ni ?fixed-nb-clues) then
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
			(bind ?ELevels (+ ?ELevels (/ (- ?li  ?ELevels) ?nb-puzzles)))
			(bind ?ELevels2 (+ ?ELevels2 (/ (- (* ?li ?li) ?ELevels2) ?nb-puzzles)))
			(bind ?ETimes (+ ?ETimes (/ (- ?ti  ?ETimes) ?nb-puzzles)))
			(bind ?ETimes2 (+ ?ETimes2 (/ (- (* ?ti ?ti) ?ETimes2) ?nb-puzzles)))
			(bind ?EFacts (+ ?EFacts (/ (- ?fi  ?EFacts) ?nb-puzzles)))
			(bind ?EFacts2 (+ ?EFacts2 (/ (- (* ?fi ?fi) ?EFacts2) ?nb-puzzles)))
			(bind ?ESER (+ ?ESER (/ (- ?si  ?ESER) ?nb-puzzles)))
			(bind ?ESER2 (+ ?ESER2 (/ (- (* ?si ?si) ?ESER2) ?nb-puzzles)))
		)
	)
	(bind ?SigmaLevels (sqrt (- ?ELevels2 (* ?ELevels ?ELevels))))
	(bind ?SigmaTimes (sqrt (- ?ETimes2 (* ?ETimes ?ETimes))))
	(bind ?SigmaFacts (sqrt (- ?EFacts2 (* ?EFacts ?EFacts))))
	(bind ?SigmaSER (sqrt (- ?ESER2 (* ?ESER ?ESER))))
	(printout t ?fixed-nb-clues "     " ?nb-puzzles "     " ?ELevels "     " ?SigmaLevels "     " ?ETimes "   " ?SigmaTimes "     " ?EFacts "   " ?SigmaFacts "     " ?ESER "   " ?SigmaSER crlf)
	(close "nb-clues-file")
	(close "levels-file")
	(close "times-file")
	(close "facts-file")
	(close "SER-file")
)



(deffunction mean-SER-by-nb-clues (?fixed-nb-clues ?nb-clues-file ?SER-file ?file-length)
	(close)
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?SER-file "SER-file" "r")
	
	(bind ?nb-puzzles 0)
	(bind ?ESER 0)
	(bind ?ESER2 0)
	
	(bind ?i 0)
    (bind ?i (+ ?i 1))
	(while (< ?i ?file-length)
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(bind ?SER-line (readline "SER-file"))
		(bind ?si (eval ?SER-line))
		(if (eq ?ni ?fixed-nb-clues) then
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
			(bind ?ESER (+ ?ESER (/ (- ?si  ?ESER) ?nb-puzzles)))
			(bind ?ESER2 (+ ?ESER2 (/ (- (** ?si 2) ?ESER2) ?nb-puzzles)))
		)
	)
	(bind ?SigmaSER (sqrt (- ?ESER2 (** ?ESER 2))))
	(printout t ?fixed-nb-clues "     " ?nb-puzzles "     " ?ESER "   " ?SigmaSER crlf)
	(close "nb-clues-file")
	(close "SER-file")
	(return (create$ ?fixed-nb-clues ?nb-puzzles ?ESER ?SigmaSER))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; The following functions are valid for any random variable X, hence have been renamed
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction X-mean-sd-for-nb-clues (?X-file ?nb-clues-file ?file-length ?fixed-nb-clues)
    ;;; computes the mean and standard deviation of ?X, restricted to cases with value ?fixed-nb-clues of ?nb-clues
	(close)
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?X-file "X-file" "r")
	
	(bind ?nb-puzzles 0)
	(bind ?EX 0)
	(bind ?EX2 0)
	
	(bind ?i 0)
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(bind ?X-line (readline "X-file"))
		(bind ?si (eval ?X-line))
		(if (eq ?ni ?fixed-nb-clues) then
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
			(bind ?EX (+ ?EX (/ (- ?si  ?EX) ?nb-puzzles)))
			(bind ?EX2 (+ ?EX2 (/ (- (** ?si 2) ?EX2) ?nb-puzzles)))
		)
	)
	(bind ?SigmaX (sqrt (- ?EX2 (** ?EX 2))))
	(printout t ?fixed-nb-clues "     " ?nb-puzzles "     " ?EX "   " ?SigmaX crlf)
	(close "nb-clues-file")
	(close "X-file")
	(return (create$ ?fixed-nb-clues ?nb-puzzles ?EX ?SigmaX))
)



(deffunction X-mean-sd-kurtosis-for-nb-clues (?X-file ?nb-clues-file ?file-length ?fixed-nb-clues)
    ;;; computes the mean, standard deviation and kurtosis of ?X, 
    ;;; restricted to cases with value ?fixed-nb-clues of ?nb-clues
	(bind ?l (X-mean-sd-for-nb-clues ?X-file ?nb-clues-file ?file-length ?fixed-nb-clues))
	(bind ?E (nth$ 3 ?l))
	(bind ?Sigma (nth$ 4 ?l))
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?X-file "X-file" "r")
	
	(bind ?nb-puzzles 0)
	(bind ?S4 0)
	
	(bind ?i 0)
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(bind ?X-line (readline "X-file"))
		(bind ?xi (eval ?X-line))
		(if (eq ?ni ?fixed-nb-clues) then
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
			(bind ?S4 (+ ?S4 (** (- ?xi ?E) 4)))
		)
	)
	(if (eq ?nb-puzzles 0) 
		then (bind ?Kurt 0) 
		else (bind ?Kurt (- (/ ?S4 (* ?nb-puzzles (** ?Sigma 4))) 3))
	)
	(printout t ?fixed-nb-clues "     " ?nb-puzzles "     " ?E "   " ?Sigma "   " ?Kurt crlf)
	(close "nb-clues-file")
	(close "X-file")
	(return (create$ ?fixed-nb-clues ?nb-puzzles ?E ?Sigma ?Kurt))
)



(deffunction X-mean-sd-skewness-kurtosis-for-nb-clues (?X-file ?nb-clues-file ?file-length ?fixed-nb-clues)
    ;;; computes the mean, standard deviation, skewness and kurtosis of ?X,
    ;;; restricted to cases with value ?fixed-nb-clues of ?nb-clues
	(bind ?l (X-mean-sd-for-nb-clues ?X-file ?nb-clues-file ?file-length ?fixed-nb-clues))
	(bind ?E (nth$ 3 ?l))
	(bind ?Sigma (nth$ 4 ?l))
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?X-file "X-file" "r")
	
	(bind ?nb-puzzles 0)
	(bind ?S3 0)
	(bind ?S4 0)
	
	(bind ?i 0)
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(bind ?X-line (readline "X-file"))
		(bind ?xi (eval ?X-line))
		(if (eq ?ni ?fixed-nb-clues) then
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
			(bind ?S3 (+ ?S3 (** (- ?xi ?E) 3)))
 			(bind ?S4 (+ ?S4 (** (- ?xi ?E) 4)))
		)
	)
	(if (eq ?nb-puzzles 0) 
		then (bind ?Skewness 0) 
			(bind ?Kurt 0) 
		else 
			(bind ?Skewness (/ ?S3 (* ?i (** ?Sigma 3))))
			(bind ?Kurt (- (/ ?S4 (* ?nb-puzzles (** ?Sigma 4))) 3))
	)
	(printout t ?fixed-nb-clues "     " ?nb-puzzles "     " ?E "   " ?Sigma "   " ?Skewness "   " ?Kurt crlf)
	(close "nb-clues-file")
	(close "X-file")
	(return (create$ ?fixed-nb-clues ?nb-puzzles ?E ?Sigma ?Skewness ?Kurt))
)


;;; Compute the same functions for X, excluding Y levels (in ?levels-file) lower than some value (?min-lvel)

(deffunction X-mean-sd-for-nb-clues-excluding-lower-levels (?X-file ?levels-file ?nb-clues-file ?file-length ?fixed-nb-clues ?min-level)
	(close)
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?X-file "X-file" "r")
	(open ?levels-file "levels-file" "r")
	
	(bind ?nb-puzzles 0)
	(bind ?EX 0)
	(bind ?EX2 0)
	
	(bind ?i 0)
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(bind ?X-line (readline "X-file"))
		(bind ?si (eval ?X-line))
		(bind ?levels-line (readline "levels-file"))
		(bind ?li (eval ?levels-line))
		(if (and (eq ?ni ?fixed-nb-clues) (> ?li ?min-level)) then
			(bind ?nb-puzzles (+ ?nb-puzzles 1))
			(bind ?EX (+ ?EX (/ (- ?si  ?EX) ?nb-puzzles)))
			(bind ?EX2 (+ ?EX2 (/ (- (* ?si ?si) ?EX2) ?nb-puzzles)))
		)
	)
	(bind ?SigmaX (sqrt (- ?EX2 (* ?EX ?EX))))
	(printout t ?fixed-nb-clues "     " ?nb-puzzles "     " ?EX "   " ?SigmaX crlf)
	(close "nb-clues-file")
	(close "X-file")
	(close "levels-file")
    (return (create$ ?fixed-nb-clues ?nb-puzzles ?EX ?SigmaX))
)



(deffunction distribution-of-clues-19-35 (?nb-clues-file ?file-length)
	(close)
	(bind ?E 0.0)
	(bind ?E2 0.0)
	(bind ?distrib (create$))
	(printout t "nb-clues   nb-instances" crlf)
	(bind ?nb-clues 19)
	(while (<= ?nb-clues 35)
		(open ?nb-clues-file "nb-clues-file" "r")
		(bind ?nb-instances 0)
		(bind ?i 0)
		(while (< ?i ?file-length)
            (bind ?i (+ ?i 1))
			(bind ?nb-clues-line (readline "nb-clues-file"))
			(bind ?ni (eval ?nb-clues-line))
			(if (eq ?ni ?nb-clues) then (bind ?nb-instances (+ ?nb-instances 1)))
		)
		(close "nb-clues-file")
		(printout t ?nb-clues "         " ?nb-instances crlf)
		(bind ?distrib (union$ ?distrib (create$ ?nb-instances)))
		(bind ?E (+ ?E (* ?nb-instances ?nb-clues)))
		(bind ?E2 (+ ?E2 (* ?nb-instances ?nb-clues ?nb-clues)))
		(bind ?nb-clues (+ ?nb-clues 1))
	)
	(bind ?E (/ ?E ?file-length))
	(bind ?E2 (/ ?E2 ?file-length))
	(bind ?sd (sqrt (- ?E2 (* ?E ?E))))
	(printout t "global mean = " ?E crlf)
	(printout t "global standard-deviation = " ?sd crlf)
	(return ?distrib)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for studying the independence of the values in a sequence
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction center-reduce (?X-file ?out-file ?file-length)
	(close)
	;;; read the data and compute EX and SigmaX
	(open ?X-file "X-file" "r")
	(bind ?i 0)
	(bind ?EX 0)
	(bind ?EX2 0)	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
	)
	(close "X-file")
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?SigmaX (sqrt ?VX))
	(printout t "EX = " ?EX crlf)
	(printout t "SigmaX = " ?SigmaX crlf)
	
	;;; print the reduced centered variable ?l0
	(open ?X-file "X-file" "r")
	(open ?out-file "out-file" "w")
	(bind ?i 0)
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(printout "out-file" (/ (- ?xi ?EX) ?SigmaX) crlf)
	)
	(close "X-file")
	(close "out-file")
)


(deffunction auto-correlation (?X-file ?file-length ?k)
	(close)
	;;; read the data and compute EX and SigmaX
	(open ?X-file "X-file" "r")
	(bind ?l (create$))
	(bind ?i 0)
	(bind ?EX 0)
	(bind ?EX2 0)	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(bind ?l (create$ ?l ?xi))
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
	)
	(close "X-file")
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?SigmaX (sqrt ?VX))
	(printout t "EX = " ?EX crlf)
	(printout t "SigmaX = " ?SigmaX crlf)
	
	;;; create the reduced centered variable ?l0
	(bind ?l0 (create$))
	(bind ?i 0)
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?l0 (create$ ?l0 (/ (- (nth$ ?i ?l) ?EX) ?SigmaX)))
	)
	; (printout t "centered reduced sequence OK" crlf)
	
	(bind ?EX2X2k 0)
	(bind ?i 0)
	(while (< ?i (- ?file-length ?k))
        (bind ?i (+ ?i 1))
		(bind ?X2 (nth$ ?i ?l0))
		(bind ?X2k (nth$ (+ ?i ?k) ?l0)) 
		(bind ?EX2X2k (+ ?EX2X2k (* ?X2 ?X2k)))
	)
	(bind ?EX2X2k (/ ?EX2X2k (- ?file-length ?k)))
	(printout t "EX2X2+k = " ?EX2X2k crlf)
)


(deffunction cr-auto-correlation (?cr-X-file ?file-length ?k)
	"autocorrelation for a sequence of centered reduced instances; 
	may introduce errors if computed on a subsequence while mean and sigma have been computed on the full sequence"
	(close)
	;;; read the data
	(open ?cr-X-file "cr-X-file" "r")
	(bind ?l0 (create$))
	(bind ?i 9)
	(bind ?EX 0)
	(bind ?EX2 0)	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "cr-X-file"))
		(bind ?xi (eval ?xline))
		(bind ?l0 (create$ ?l0 ?xi))
	)
	(close "cr-X-file")
	
	(bind ?EX2X2k 0)
	(bind ?i 0)
	(while (< ?i (- ?file-length ?k))
        (bind ?i (+ ?i 1))
		(bind ?X2 (nth$ ?i ?l0))
		(bind ?X2k (nth$ (+ ?i ?k) ?l0)) 
		(bind ?EX2X2k (+ ?EX2X2k (* ?X2 ?X2k)))
	)
	(bind ?EX2X2k (/ ?EX2X2k (- ?file-length ?k)))
	(printout t ?EX2X2k crlf)
)


;;; test whether a file contains identical puzzles

(deffunction test-repetitions (?file-name ?file-length)
	(close)
	(open ?file-name "file-symb" "r")
	(bind ?list (create$))
	(bind ?i 0)
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?a (readline "file-symb"))
		(if (member$ ?a ?list) 
			then (printout t crlf ?i " already in list" crlf)
			else (bind ?list (union$ ?list (create$ ?a )))
		)
		(printout t ?i " ")
	)
	(close "file-symb")
)
;;; test:
;;; (test-repetitions (str-cat ?*PuzzlesDir* "Sudogen/sudogen0-1M.txt") 1000000)
;;; conclusion: Sudogen0_1M has no repetitions




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Same functions with file length computed automatically
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction file-last-value (?X-file)
	(close)
	(open ?X-file "X-file" "r")
	(bind ?i 0)
	(bind ?last 10000000)
	(while TRUE
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(if (eq ?xi EOF) then (close "X-file") (return ?last))
		(bind ?last ?xi)
	)
	(close "X-file")
)


(deffunction file-mean-and-sd (?X-file)
	(close)
	(open ?X-file "X-file" "r")
	(bind ?i 0)
	(bind ?S 0)
	(bind ?S2 0)
	(while TRUE
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(if (eq (eval ?xline) EOF) 
			then 
				(close "X-file") 
				(return (create$ (/ ?S ?i) (sqrt (- (/ ?S2 ?i) (** (/ ?S ?i) 2)))))
			else
				(bind ?xi (eval ?xline))
				(bind ?S (+ ?S ?xi))
				(bind ?S2 (+ ?S2 (* ?xi ?xi)))
		)
		
	)
	(close "X-file")
)


(deffunction file-nonZ0-mean-and-sd (?X-file ?Z-file)
    (close)
    (open ?X-file "X-file" "r")
    (open ?Z-file "Z-file" "r")
    (bind ?i 0)
    (bind ?S 0)
    (bind ?S2 0)
    (bind ?nb 0)
    (while TRUE
        (bind ?i (+ ?i 1))
        (bind ?xline (readline "X-file"))
        (bind ?zline (readline "Z-file"))
        (if (eq (eval ?xline) EOF)
            then
                (close "Z-file")
                (close "X-file")
                (return (create$ (/ ?S ?nb) (sqrt (- (/ ?S2 ?nb) (** (/ ?S ?nb) 2)))))
            else
                (bind ?xi (eval ?xline))
                (bind ?zi (eval ?zline))
                (if (neq ?zi 0) then
                    (bind ?nb (+ ?nb 1))
                    (bind ?S (+ ?S ?xi))
                    (bind ?S2 (+ ?S2 (* ?xi ?xi)))
                )
        )
        
    )
    (close "Z-file")
    (close "X-file")
)




(deffunction file-mean-sd-kurtosis (?X-file)
	(bind ?l (file-mean-and-sd ?X-file))
	(bind ?E (nth$ 1 ?l))
	(bind ?Sigma (nth$ 2 ?l))
	(bind ?V (** ?Sigma 2))
	(open ?X-file "X-file" "r")
	(bind ?i 0)
	(bind ?S4 0)
	(while TRUE
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(if (eq (eval ?xline) EOF) 
			then 
				(close "X-file") 
				(return (create$ ?E ?Sigma (- (/ ?S4 (* ?i (** ?V 2))) 3)))
			else
				(bind ?xi (eval ?xline))
				(bind ?S4 (+ ?S4 (** (- ?xi ?E) 4)))
		)
	)
	(close "X-file")
)


(deffunction file-mean-sd-skewness-kurtosis (?X-file)
	(bind ?l (file-mean-and-sd ?X-file))
	(bind ?E (nth$ 1 ?l))
	(bind ?Sigma (nth$ 2 ?l))
	(bind ?V (** ?Sigma 2))
	(open ?X-file "X-file" "r")
	(bind ?i 0)
	(bind ?S3 0)
	(bind ?S4 0)
	(while TRUE
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(if (eq (eval ?xline) EOF) 
			then 
				(close "X-file") 
				(return (create$ ?E ?Sigma (/ ?S3 (* ?i (** ?Sigma 3))) (- (/ ?S4 (* ?i (** ?V 2))) 3)))
			else
				(bind ?xi (eval ?xline))
				(bind ?S3 (+ ?S3 (** (- ?xi ?E) 3)))
				(bind ?S4 (+ ?S4 (** (- ?xi ?E) 4)))
		)
		
	)
	(close "X-file")
)



(deffunction file-test-repetitions (?file-name)
	(close)
	(bind ?file-length (file-length ?file-name))
	(open ?file-name "file-symb" "r")
	(bind ?list (create$))
	(bind ?i 0)
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?a (sub-string 1 81 (readline "file-symb")))
		(if (member$ ?a ?list) 
			then (printout t crlf ?i " already in list: " ?a crlf)
			else (bind ?list (union$ ?list (create$ ?a )))
		)
		(printout t ?i " ")
	)
	(close "file-symb")
)



(deffunction mean-sd-of-distrib-19-35 (?list)
	"mean and standard deviation for a distribution given by the list of numbers of instances for values between 19 and 35"
	(bind ?file-length (length$ ?list))
	(bind ?E 0.0)
	(bind ?E2 0.0)
	(bind ?total-instances 0)
	(bind ?i 1)
	(while (< ?i 18)
		(bind ?fixed-nb-clues (+ ?i 18))
		(bind ?nb-instances (nth$ ?i ?list))
		(bind ?total-instances (+ ?total-instances ?nb-instances))
		(bind ?E (+ ?E (* ?nb-instances ?fixed-nb-clues)))
		(bind ?E2 (+ ?E2 (* ?nb-instances ?fixed-nb-clues ?fixed-nb-clues)))
		(bind ?i (+ ?i 1))
	)
	(bind ?E (/ ?E ?total-instances))
	(bind ?E2 (/ ?E2 ?total-instances))
	(bind ?sd (sqrt (- ?E2 (* ?E ?E))))
	(printout t "mean = " ?E crlf)
	(printout t "standard-deviation = " ?sd crlf)
	(return (create$ ?E ?sd))
)



(deffunction mean-sd-of-distrib-19-31 (?list)
	"mean and standard deviation for a distribution given by the list of numbers of instances for values between 19 and 31"
	(bind ?file-length (length$ ?list))
	(bind ?E 0.0)
	(bind ?E2 0.0)
	(bind ?total-instances 0)
	(bind ?i 1)
	(while (< ?i 14)
		(bind ?fixed-nb-clues (+ ?i 18))
		(bind ?nb-instances (nth$ ?i ?list))
		(bind ?total-instances (+ ?total-instances ?nb-instances))
		(bind ?E (+ ?E (* ?nb-instances ?fixed-nb-clues)))
		(bind ?E2 (+ ?E2 (* ?nb-instances ?fixed-nb-clues ?fixed-nb-clues)))
		(bind ?i (+ ?i 1))
	)
	(bind ?E (/ ?E ?total-instances))
	(bind ?E2 (/ ?E2 ?total-instances))
	(bind ?sd (sqrt (- ?E2 (* ?E ?E))))
	(printout t ?list crlf)
	(printout t "mean = " ?E crlf)
	(printout t "standard-deviation = " ?sd crlf)
	(return (create$ ?E ?sd))
)




(deffunction correlation-coefficient-bis (?X-file ?Y-file ?file-length)
	(close)
	(open ?X-file "X-file" "r")
	(open ?Y-file "Y-file" "r")
	
	(bind ?i 0)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
		(bind ?xline (readline "X-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "Y-file"))
		(bind ?yi (eval ?yline))
;		(printout t ?xi " " ?yi crlf)
		(bind ?EX (+ ?EX ?xi))
		(bind ?EY (+ ?EY ?yi))
		(bind ?EX2 (+ ?EX2 (* ?xi ?xi)))
		(bind ?EY2 (+ ?EY2 (* ?yi ?yi)))
		(bind ?EXY (+ ?EXY (* ?xi ?yi)))
	)
	(bind ?EX (/ ?EX ?i))
	(bind ?EY (/ ?EY ?i))
	(bind ?EX2 (/ ?EX2 ?i))
	(bind ?EY2 (/ ?EY2 ?i))
	(bind ?EXY (/ ?EXY ?i))
	
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?VY (- ?EY2 (* ?EY ?EY)))
	(bind ?CovXY (- ?EXY (* ?EX ?EY)))
	(bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
	(bind ?a (/ ?CovXY ?VX))
	(bind ?b (- ?EY (* ?a ?EX)))
	(printout t "EX = " ?EX crlf)
	(printout t "EY = " ?EY crlf)
	(printout t "SigmaX = " (sqrt ?VX) crlf)
	(printout t "SigmaY = " (sqrt ?VY) crlf)
	(printout t "correlationXY = " ?r crlf)
	(printout t "regression Y = aX+b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "X-file")
	(close "Y-file")
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Rank functions useful for computing Spearman's correlation
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction SER-to-rank (?SER)
    (bind ?IP (integer ?SER))
    (bind ?F10P (integer (- (* 10 ?SER) (* 10 ?IP))))
    (bind ?FP10 (- 10 ?F10P))

    (+ (* 10 (- 11 ?IP)) ?FP10)
)
(deffunction test-SER-to-rank()
    (bind ?SER 12.0)
    (while (> ?SER 0)
        (bind ?SER (- ?SER 0.1))
        (printout t (SER-to-rank ?SER) crlf)
    )
)

(deffunction record-SER-ranks (?SER-file ?file-length ?rank-file)
    (open ?SER-file "SER-file" "r")
    (open ?rank-file "rank-file" "w")
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (readline "SER-file")
        (printout "rank-file" (SER-to-rank (eval (readline "SER-file"))) crlf)
    )
)


;;; useless in practice, because this is a linear transformation of the SER
(deffunction Spearman-correlation-coefficient (?X-name ?Y-name ?X-file ?Y-file ?file-length)
    ;;; computes Spearman's correlation coefficient coefficient between ?X and SER-to-rank(?Y)
    ;;; ?Y-name should be SER-rank, ?Y-file should be a file of SERs (not of SER-ranks)
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
    (close)
    (open ?X-file "X-file" "r")
    (open ?Y-file "Y-file" "r")
    
    (bind ?i 0)
    (bind ?EX 0)
    (bind ?EY 0)
    (bind ?EX2 0)
    (bind ?EY2 0)
    (bind ?EXY 0)
    
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?xline (readline "X-file"))
        (bind ?xi (eval ?xline))
        (bind ?yline (readline "Y-file"))
        ;;; only difference: SER-to-rank
        (bind ?yi (SER-to-rank (eval ?yline)))
        (bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
        (bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
        (bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
        (bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
        (bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
    )
    
    (bind ?VX (- ?EX2 (* ?EX ?EX)))
    (bind ?VY (- ?EY2 (* ?EY ?EY)))
    (bind ?CovXY (- ?EXY (* ?EX ?EY)))
    (bind ?r (/ ?CovXY (* (sqrt ?VX) (sqrt ?VY))))
    (bind ?a (/ ?CovXY ?VX))
    (bind ?b (- ?EY (* ?a ?EX)))
    ;;; only difference: log
    (printout t "E(" ?X-name ") = " ?EX crlf)
    (printout t "E(log(" ?Y-name ")) = " ?EY crlf)
    (printout t "Sigma(" ?X-name ") = " (sqrt ?VX) crlf)
    (printout t "Sigma(log(" ?Y-name ")) = " (sqrt ?VY) crlf)
    (printout t "Spearman's correlation-coefficient(" ?X-name ", " ?Y-name ") = " ?r crlf)
    (printout t "regression SER-to-rank(" ?Y-name ") = a * " ?X-name " + b" crlf)
    (printout t "a = " ?a crlf)
    (printout t "b = " ?b crlf)
    (close "X-file")
    (close "Y-file")
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Distribution of a variable with values from p to q
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction X-distribution-p-to-q (?X-file ?X-file-length ?p ?q)
    (close)
    (bind ?res (create$))
    (loop-for-count (?val ?p ?q)
        (open ?X-file "X-file" "r")
        (bind ?count 0)
        (bind ?i 0)
        (while (< ?i ?X-file-length)
            (bind ?i (+ ?i 1))
            (bind ?xline (string-to-field (readline "X-file")))
            (if (eq ?xline ?val) then (bind ?count (+ ?count 1)))
        )
        (bind ?res (create$ ?res ?count))
        (printout t ?val ": " ?count crlf)
        (close "X-file")
    )
    (bind ?res-percent (create$))
    (foreach ?x ?res (bind ?res-percent (create$ ?res-percent (* 100 (/ (nth$ ?x-index ?res) ?X-file-length)))))
    (printout t "% = "?res-percent crlf)
    ?res
)


(deffunction X-distribution (?X-file ?X-file-length)
    (X-distribution-p-to-q ?X-file ?X-file-length (file-min-value ?X-file) (file-min-value ?X-file))
)


;;; Mainly intended for dealing with the SER:
(deffunction X-distribution-p-to-q-with-01-step (?X-file ?X-file-length ?p ?q)
    (close)
    (bind ?res (create$))
    (loop-for-count (?val (* 10 ?p) (* 10 ?q))
        (open ?X-file "X-file" "r")
        (bind ?count 0)
        (bind ?i 0)
        (while (< ?i ?X-file-length)
            (bind ?i (+ ?i 1))
            (bind ?xline (integer (* 10 (string-to-field (readline "X-file")))))
            (if (eq ?xline ?val) then (bind ?count (+ ?count 1)))
        )
        (bind ?res (create$ ?res ?count))
        (printout t ?val ": " ?count crlf)
        (close "X-file")
    )
    (bind ?res-percent (create$))
    (foreach ?x ?res (bind ?res-percent (create$ ?res-percent (* 100 (/ (nth$ ?x-index ?res) ?X-file-length)))))
    (printout t "% = "?res-percent crlf)
    ?res
)
