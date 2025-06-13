
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





;;; Many of the functions in this file could be raised to generic
;;; (possibly after changing "nb-clues" to "key-factor")
;;; but at this point, it wouldn't be very useful

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Old functions for classifying instances according to some criterion
;;; (used in SudoRules in the first old uses of the controlled-bias generator)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction number-by-level (?fixed-level ?levels-file ?file-length)
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
    (close "facts-file")
	(close "times-file")
    (close "levels-file")
)



(deffunction mean-sd-by-level-with-SER (?fixed-level ?levels-file ?times-file ?facts-file ?SER-file ?file-length)
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
    (close "SER-file")
    (close "facts-file")
    (close "times-file")
	(close "levels-file")
)



(deffunction mean-sd-by-level-with-SER-and-nb-clues (?fixed-level ?levels-file ?times-file ?facts-file ?SER-file ?nb-clues-file ?file-length)
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
	(close "nb-clues-file")
    (close "SER-file")
    (close "facts-file")
    (close "times-file")
    (close "levels-file")
)



(deffunction mean-sd-by-nb-clues-with-SER (?fixed-nb-clues ?nb-clues-file ?levels-file ?times-file ?facts-file ?SER-file ?file-length)
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
    (close "SER-file")
    (close "facts-file")
    (close "times-file")
    (close "levels-file")
	(close "nb-clues-file")
)



(deffunction mean-SER-by-nb-clues (?fixed-nb-clues ?nb-clues-file ?SER-file ?file-length)
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
	(close "SER-file")
    (close "nb-clues-file")
	(return (create$ ?fixed-nb-clues ?nb-puzzles ?ESER ?SigmaSER))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; The following functions are valid for any random variable X, hence they have been renamed
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction X-mean-sd-for-nb-clues (?X-file ?nb-clues-file ?file-length ?fixed-nb-clues)
    ;;; computes the mean and standard deviation of ?X, restricted to cases with value ?fixed-nb-clues of ?nb-clues
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
    (close "X-file")
	(close "nb-clues-file")
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
    (close "X-file")
	(close "nb-clues-file")
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
    (close "X-file")
	(close "nb-clues-file")
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
    (close "levels-file")
    (close "X-file")
	(close "nb-clues-file")
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



(deffunction file-test-repetitions (?file-name)
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
    (close "Y-file")
	(close "X-file")
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
    (close "Y-file")
    (close "X-file")
)



