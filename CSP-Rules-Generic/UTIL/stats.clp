
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                                  UTIL / STATS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;            January 2006 - November 2024            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Basic stats: mean and stan drad deviation
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction file-mean-and-sd (?X-file)
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




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; General functions for computing Pearson's linear correlation coefficient
;;; between two integer or real random variables X and Y (or some function of Y)
;;; written as sequences of values in two text files for a series of instances (one value per line).
;;; Values in the files are typically those produced by functions that rate/classify instances,
;;; but this is not necessary.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction correlation-coefficient (?X-name ?Y-name ?X-file ?Y-file ?file-length)
    ;;; computes Pearson's correlation coefficient between ?X and ?Y
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
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


;;; same function, restricted to the cases where a third variable ?Z is ≠ 0

(deffunction nonZ0-correlation-coefficient (?X-name ?Y-name ?Z-name ?X-file ?Y-file ?Z-file ?file-length)
    ;;; computes Pearson's correlation coefficient coefficient between ?X and ?Y, excluding data with  ?Z = 0
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Correlation coefficient between X and a function of Y
;;; This may be useful to deal with some non-linear correlations, e.g. when:
;;; - Y is the number of facts used in the CLIPS computations,
;;; - Y is the computation time.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction log-correlation-coefficient (?X-name ?Y-name ?X-file ?Y-file ?file-length)
    ;;; computes Pearson's correlation coefficient coefficient between ?X and log(?Y)
    ;;; ?file-length must be <= to the lengths of ?X-file and ?Y-file
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Distribution of an integer variable with values from p to q
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction X-distribution-p-to-q (?X-file ?X-file-length ?p ?q)
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
    ;;; same, with automatic selection  of the range
    (X-distribution-p-to-q ?X-file ?X-file-length (file-min-value ?X-file) (file-max-value ?X-file))
)


;;; Mainly intended for dealing with non-integer variables (like the SER in Sudoku):
(deffunction X-distribution-p-to-q-with-01-step (?X-file ?X-file-length ?p ?q)
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


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Distribution of the absolute difference between two integer variables with values from p to q
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction diff-X-Y-distribution-p-to-q (?X-file ?Y-file ?file-length ?p ?q)
    (bind ?res (create$))
    (loop-for-count (?val 0 ?q)
        (open ?X-file "X-file" "r")
        (open ?Y-file "Y-file" "r")
        (bind ?count 0)
        (bind ?i 0)
        (while (< ?i ?file-length)
            (bind ?i (+ ?i 1))
            (bind ?xline (string-to-field (readline "X-file")))
            (bind ?yline (string-to-field (readline "Y-file")))
            (if (eq (abs (- ?yline ?xline)) ?val) then (bind ?count (+ ?count 1)))
        )
        (bind ?res (create$ ?res ?count))
        (printout t ?val ": " ?count crlf)
        (close "X-file")
        (close "Y-file")
    )
    (bind ?res-percent (create$))
    (foreach ?x ?res (bind ?res-percent (create$ ?res-percent (* 100 (/ (nth$ ?x-index ?res) ?file-length)))))
    (printout t "% = "?res-percent crlf)
    ?res
)


(deffunction diff-X-Y-distribution (?X-file ?Y-file ?file-length)
    ;;; same, with automatic selection  of the range
    (diff-X-Y-distribution-p-to-q ?X-file ?Y-file ?file-length 0 (max (file-max-value ?X-file) (file-max-value ?Y-file)))
)



