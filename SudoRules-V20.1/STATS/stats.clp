
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              STATISTICS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Functions for computing the correlation coefficient between two variables
;;; written as sequences of values in two text files for a series of puzzles
;;; (one value per line)
;;; Values in the files are typically those produced by "classify-n-grids-after-first-p-from-text-file"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction correlation (?x-file ?y-file ?n)
	(close)
	(open ?x-file "x-file" "r")
	(open ?y-file "y-file" "r")
	
	(bind ?i 1)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "y-file"))
		(bind ?yi (eval ?yline))
;		(printout t ?xi " " ?yi crlf)
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
		(bind ?i (+ ?i 1))
	)
	
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
	(close "x-file")
	(close "y-file")
)



(deffunction log-correlation (?x-file ?y-file ?n)
	(close)
	(open ?x-file "x-file" "r")
	(open ?y-file "y-file" "r")
	
	(bind ?i 1)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "y-file"))
		;;; only difference: log
		(bind ?yi (log (eval ?yline)))
;		(printout t ?xi " " ?yi crlf)
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
		(bind ?i (+ ?i 1))
	)
	
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
	;;; only difference: log
	(printout t "correlationXlogY = " ?r crlf)
	(printout t "regression logY = aX+b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "x-file")
	(close "y-file")
)




(deffunction sqr-correlation (?x-file ?y-file ?n)
	(close)
	(open ?x-file "x-file" "r")
	(open ?y-file "y-file" "r")
	
	(bind ?i 1)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "y-file"))
		;;; only difference: sqrt
		(bind ?yi (sqrt (eval ?yline)))
;		(printout t ?xi " " ?yi crlf)
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
		(bind ?i (+ ?i 1))
	)
	
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
	;;; only difference: sqr
	(printout t "correlationXsqrY = " ?r crlf)
	(printout t "regression sqrY = aX+b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "x-file")
	(close "y-file")
)




(deffunction sqr4-correlation (?x-file ?y-file ?n)
	(close)
	(open ?x-file "x-file" "r")
	(open ?y-file "y-file" "r")
	
	(bind ?i 1)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "y-file"))
		;;; only difference: sqr4
		(bind ?yi (sqrt (sqrt (eval ?yline))))
;		(printout t ?xi " " ?yi crlf)
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
		(bind ?i (+ ?i 1))
	)
	
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
	;;; only difference: sqr4
	(printout t "correlationXsqr4Y = " ?r crlf)
	(printout t "regression sqr4Y = aX+b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "x-file")
	(close "y-file")
)




(deffunction sqr6-correlation (?x-file ?y-file ?n)
	(close)
	(open ?x-file "x-file" "r")
	(open ?y-file "y-file" "r")
	
	(bind ?i 1)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "y-file"))
		;;; only difference: sqr6
		(bind ?yi (** (eval ?yline) (/ 1.0 6)))
;		(printout t ?xi " " ?yi crlf)
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
		(bind ?i (+ ?i 1))
	)
	
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
	;;; only difference: sqr6
	(printout t "correlationXsqr6Y = " ?r crlf)
	(printout t "regression sqr6Y = aX+b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "x-file")
	(close "y-file")
)




(deffunction sqr8-correlation (?x-file ?y-file ?n)
	(close)
	(open ?x-file "x-file" "r")
	(open ?y-file "y-file" "r")
	
	(bind ?i 1)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "y-file"))
		;;; only difference: sqr8
		(bind ?yi (sqrt (sqrt (sqrt (eval ?yline)))))
;		(printout t ?xi " " ?yi crlf)
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
		(bind ?i (+ ?i 1))
	)
	
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
	;;; only difference: sqr8
	(printout t "correlationXsqr8Y = " ?r crlf)
	(printout t "regression sqr8Y = aX+b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "x-file")
	(close "y-file")
)




(deffunction sqr16-correlation (?x-file ?y-file ?n)
	(close)
	(open ?x-file "x-file" "r")
	(open ?y-file "y-file" "r")
	
	(bind ?i 1)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "y-file"))
		;;; only difference: sqr16
		(bind ?yi (sqrt (sqrt (sqrt (sqrt (eval ?yline))))))
;		(printout t ?xi " " ?yi crlf)
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EY (+ ?EY (/ (- ?yi  ?EY) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?EY2 (+ ?EY2 (/ (- (* ?yi ?yi)  ?EY2) ?i)))
		(bind ?EXY (+ ?EXY (/ (- (* ?xi ?yi)  ?EXY) ?i)))
		(bind ?i (+ ?i 1))
	)
	
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
	;;; only difference: sqr16
	(printout t "correlationXsqr16Y = " ?r crlf)
	(printout t "regression sqr16Y = aX+b" crlf)
	(printout t "a = " ?a crlf)
	(printout t "b = " ?b crlf)
	(close "x-file")
	(close "y-file")
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
;;;
;;; Functions for classifying puzzles according to some criterion
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction number-by-level (?level ?levels-file ?n)
	(close)
	(open ?levels-file "levels-file" "r")
	(bind ?i 1)
	(bind ?nb 0)
	(while (< ?i (+ ?n 1))
		(bind ?levels-line (readline "levels-file"))
		(bind ?li (eval ?levels-line))
		(if (eq ?li ?level) then
			(bind ?nb (+ ?nb 1))
		)
		(bind ?i (+ ?i 1))
	)
	(printout t ?level "   " ?nb crlf)
	(close "levels-file")
)



(deffunction mean-by-level (?level ?levels-file ?times-file ?facts-file ?n)
	(close)
	(open ?levels-file "levels-file" "r")
	(open ?times-file "times-file" "r")
	(open ?facts-file "facts-file" "r")
	
	(bind ?i 1)
	(bind ?nb 0)
	(bind ?ETimes 0)
	(bind ?ETimes2 0)
	(bind ?EFacts 0)
	(bind ?EFacts2 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?levels-line (readline "levels-file"))
		(bind ?li (eval ?levels-line))
		(bind ?times-line (readline "times-file"))
		(bind ?ti (eval ?times-line))
		(bind ?facts-line (readline "facts-file"))
		(bind ?fi (eval ?facts-line))
		(if (eq ?li ?level) then
			(bind ?nb (+ ?nb 1))
			(bind ?ETimes (+ ?ETimes (/ (- ?ti  ?ETimes) ?nb)))
			(bind ?ETimes2 (+ ?ETimes2 (/ (- (* ?ti ?ti) ?ETimes2) ?nb)))
			(bind ?EFacts (+ ?EFacts (/ (- ?fi  ?EFacts) ?nb)))
			(bind ?EFacts2 (+ ?EFacts2 (/ (- (* ?fi ?fi) ?EFacts2) ?nb)))
		)
		(bind ?i (+ ?i 1))
	)
	(bind ?SigmaTimes (sqrt (- ?ETimes2 (* ?ETimes ?ETimes))))
	(bind ?SigmaFacts (sqrt (- ?EFacts2 (* ?EFacts ?EFacts))))
	(printout t ?level "   " ?nb "   " ?ETimes "   " ?SigmaTimes "   " ?EFacts "   " ?SigmaFacts crlf)
	(close "levels-file")
	(close "times-file")
	(close "facts-file")
)



(deffunction mean-by-level-with-SER (?level ?levels-file ?times-file ?facts-file ?SER-file ?n)
	(close)
	(open ?levels-file "levels-file" "r")
	(open ?times-file "times-file" "r")
	(open ?facts-file "facts-file" "r")
	(open ?SER-file "SER-file" "r")
	
	(bind ?i 1)
	(bind ?nb 0)
	(bind ?ETimes 0)
	(bind ?ETimes2 0)
	(bind ?EFacts 0)
	(bind ?EFacts2 0)
	(bind ?ESER 0)
	(bind ?ESER2 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?levels-line (readline "levels-file"))
		(bind ?li (eval ?levels-line))
		(bind ?times-line (readline "times-file"))
		(bind ?ti (eval ?times-line))
		(bind ?facts-line (readline "facts-file"))
		(bind ?fi (eval ?facts-line))
		(bind ?SER-line (readline "SER-file"))
		(bind ?si (eval ?SER-line))
		(if (eq ?li ?level) then
			(bind ?nb (+ ?nb 1))
			(bind ?ETimes (+ ?ETimes (/ (- ?ti  ?ETimes) ?nb)))
			(bind ?ETimes2 (+ ?ETimes2 (/ (- (* ?ti ?ti) ?ETimes2) ?nb)))
			(bind ?EFacts (+ ?EFacts (/ (- ?fi  ?EFacts) ?nb)))
			(bind ?EFacts2 (+ ?EFacts2 (/ (- (* ?fi ?fi) ?EFacts2) ?nb)))
			(bind ?ESER (+ ?ESER (/ (- ?si  ?ESER) ?nb)))
			(bind ?ESER2 (+ ?ESER2 (/ (- (* ?si ?si) ?ESER2) ?nb)))
		)
		(bind ?i (+ ?i 1))
	)
	(bind ?SigmaTimes (sqrt (- ?ETimes2 (* ?ETimes ?ETimes))))
	(bind ?SigmaFacts (sqrt (- ?EFacts2 (* ?EFacts ?EFacts))))
	(bind ?SigmaSER (sqrt (- ?ESER2 (* ?ESER ?ESER))))
	(printout t ?level "     " ?nb "     " ?ETimes "   " ?SigmaTimes "     " ?EFacts "   " ?SigmaFacts "     " ?ESER "   " ?SigmaSER crlf)
	(close "levels-file")
	(close "times-file")
	(close "facts-file")
	(close "SER-file")
)



(deffunction mean-by-level-with-SER-and-nb-clues (?level ?levels-file ?times-file ?facts-file ?SER-file ?nb-clues-file ?n)
	(close)
	(open ?levels-file "levels-file" "r")
	(open ?times-file "times-file" "r")
	(open ?facts-file "facts-file" "r")
	(open ?SER-file "SER-file" "r")
	(open ?nb-clues-file "nb-clues-file" "r")
	
	(bind ?nb 0)
	(bind ?ETimes 0)
	(bind ?ETimes2 0)
	(bind ?EFacts 0)
	(bind ?EFacts2 0)
	(bind ?ESER 0)
	(bind ?ESER2 0)
	(bind ?ENbClues 0)
	(bind ?ENbClues2 0)
	
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
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
		(if (eq ?li ?level) then
			(bind ?nb (+ ?nb 1))
			(bind ?ETimes (+ ?ETimes (/ (- ?ti  ?ETimes) ?nb)))
			(bind ?ETimes2 (+ ?ETimes2 (/ (- (* ?ti ?ti) ?ETimes2) ?nb)))
			(bind ?EFacts (+ ?EFacts (/ (- ?fi  ?EFacts) ?nb)))
			(bind ?EFacts2 (+ ?EFacts2 (/ (- (* ?fi ?fi) ?EFacts2) ?nb)))
			(bind ?ESER (+ ?ESER (/ (- ?si  ?ESER) ?nb)))
			(bind ?ESER2 (+ ?ESER2 (/ (- (* ?si ?si) ?ESER2) ?nb)))
			(bind ?ENbClues (+ ?ENbClues (/ (- ?ni  ?ENbClues) ?nb)))
			(bind ?ENbClues2 (+ ?ENbClues2 (/ (- (* ?ni ?ni) ?ENbClues2) ?nb)))
		)
		(bind ?i (+ ?i 1))
	)
	(bind ?SigmaTimes (sqrt (- ?ETimes2 (* ?ETimes ?ETimes))))
	(bind ?SigmaFacts (sqrt (- ?EFacts2 (* ?EFacts ?EFacts))))
	(bind ?SigmaSER (sqrt (- ?ESER2 (* ?ESER ?ESER))))
	(bind ?SigmaNbClues (sqrt (- ?ENbClues2 (* ?ENbClues ?ENbClues))))
	(printout t ?level "     " ?nb "     " ?ETimes "   " ?SigmaTimes "     " ?EFacts "   " ?SigmaFacts "     " ?ESER "   " ?SigmaSER "     " ?ENbClues "   " ?SigmaNbClues crlf)
	(close "levels-file")
	(close "times-file")
	(close "facts-file")
	(close "SER-file")
	(close "nb-clues-file")
)



(deffunction mean-by-nb-clues-with-SER (?nb-clues ?nb-clues-file ?levels-file ?times-file ?facts-file ?SER-file ?n)
	(close)
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?levels-file "levels-file" "r")
	(open ?times-file "times-file" "r")
	(open ?facts-file "facts-file" "r")
	(open ?SER-file "SER-file" "r")
	
	(bind ?nb 0)
	(bind ?ELevels 0)
	(bind ?ELevels2 0)
	(bind ?ETimes 0)
	(bind ?ETimes2 0)
	(bind ?EFacts 0)
	(bind ?EFacts2 0)
	(bind ?ESER 0)
	(bind ?ESER2 0)
	
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
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
		(if (eq ?ni ?nb-clues) then
			(bind ?nb (+ ?nb 1))
			(bind ?ELevels (+ ?ELevels (/ (- ?li  ?ELevels) ?nb)))
			(bind ?ELevels2 (+ ?ELevels2 (/ (- (* ?li ?li) ?ELevels2) ?nb)))
			(bind ?ETimes (+ ?ETimes (/ (- ?ti  ?ETimes) ?nb)))
			(bind ?ETimes2 (+ ?ETimes2 (/ (- (* ?ti ?ti) ?ETimes2) ?nb)))
			(bind ?EFacts (+ ?EFacts (/ (- ?fi  ?EFacts) ?nb)))
			(bind ?EFacts2 (+ ?EFacts2 (/ (- (* ?fi ?fi) ?EFacts2) ?nb)))
			(bind ?ESER (+ ?ESER (/ (- ?si  ?ESER) ?nb)))
			(bind ?ESER2 (+ ?ESER2 (/ (- (* ?si ?si) ?ESER2) ?nb)))
		)
		(bind ?i (+ ?i 1))
	)
	(bind ?SigmaLevels (sqrt (- ?ELevels2 (* ?ELevels ?ELevels))))
	(bind ?SigmaTimes (sqrt (- ?ETimes2 (* ?ETimes ?ETimes))))
	(bind ?SigmaFacts (sqrt (- ?EFacts2 (* ?EFacts ?EFacts))))
	(bind ?SigmaSER (sqrt (- ?ESER2 (* ?ESER ?ESER))))
	(printout t ?nb-clues "     " ?nb "     " ?ELevels "     " ?SigmaLevels "     " ?ETimes "   " ?SigmaTimes "     " ?EFacts "   " ?SigmaFacts "     " ?ESER "   " ?SigmaSER crlf)
	(close "nb-clues-file")
	(close "levels-file")
	(close "times-file")
	(close "facts-file")
	(close "SER-file")
)



(deffunction mean-SER-by-nb-clues (?nb-clues ?nb-clues-file ?SER-file ?n)
	(close)
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?SER-file "SER-file" "r")
	
	(bind ?nb 0)
	(bind ?ESER 0)
	(bind ?ESER2 0)
	
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(bind ?SER-line (readline "SER-file"))
		(bind ?si (eval ?SER-line))
		(if (eq ?ni ?nb-clues) then
			(bind ?nb (+ ?nb 1))
			(bind ?ESER (+ ?ESER (/ (- ?si  ?ESER) ?nb)))
			(bind ?ESER2 (+ ?ESER2 (/ (- (** ?si 2) ?ESER2) ?nb)))
		)
		(bind ?i (+ ?i 1))
	)
	(bind ?SigmaSER (sqrt (- ?ESER2 (** ?ESER 2))))
	(printout t ?nb-clues "     " ?nb "     " ?ESER "   " ?SigmaSER crlf)
	(close "nb-clues-file")
	(close "SER-file")
	(return (create$ ?nb-clues ?nb ?ESER ?SigmaSER))
)




;;; valid for any random variable X, hence renamed:

(deffunction mean-X-by-nb-clues (?nb-clues ?nb-clues-file ?X-file ?n)
	(close)
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?X-file "X-file" "r")
	
	(bind ?nb 0)
	(bind ?EX 0)
	(bind ?EX2 0)
	
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(bind ?X-line (readline "X-file"))
		(bind ?si (eval ?X-line))
		(if (eq ?ni ?nb-clues) then
			(bind ?nb (+ ?nb 1))
			(bind ?EX (+ ?EX (/ (- ?si  ?EX) ?nb)))
			(bind ?EX2 (+ ?EX2 (/ (- (** ?si 2) ?EX2) ?nb)))
		)
		(bind ?i (+ ?i 1))
	)
	(bind ?SigmaX (sqrt (- ?EX2 (** ?EX 2))))
	(printout t ?nb-clues "     " ?nb "     " ?EX "   " ?SigmaX crlf)
	(close "nb-clues-file")
	(close "X-file")
	(return (create$ ?nb-clues ?nb ?EX ?SigmaX))
)




(deffunction mean-sd-kurtosis-X-by-nb-clues (?nb-clues ?nb-clues-file ?X-file ?n)
	(bind ?l (mean-X-by-nb-clues ?nb-clues ?nb-clues-file ?X-file ?n))
	(bind ?E (nth$ 3 ?l))
	(bind ?Sigma (nth$ 4 ?l))
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?X-file "X-file" "r")
	
	(bind ?nb 0)
	(bind ?S4 0)
	
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(bind ?X-line (readline "X-file"))
		(bind ?xi (eval ?X-line))
		(if (eq ?ni ?nb-clues) then
			(bind ?nb (+ ?nb 1))
			(bind ?S4 (+ ?S4 (** (- ?xi ?E) 4)))
		)
		(bind ?i (+ ?i 1))
	)
	(if (eq ?nb 0) 
		then (bind ?Kurt 0) 
		else (bind ?Kurt (- (/ ?S4 (* ?nb (** ?Sigma 4))) 3))
	)
	(printout t ?nb-clues "     " ?nb "     " ?E "   " ?Sigma "   " ?Kurt crlf)
	(close "nb-clues-file")
	(close "X-file")
	(return (create$ ?nb-clues ?nb ?E ?Sigma ?Kurt))
)





(deffunction mean-sd-skewness-kurtosis-X-by-nb-clues (?nb-clues ?nb-clues-file ?X-file ?n)
	(bind ?l (mean-X-by-nb-clues ?nb-clues ?nb-clues-file ?X-file ?n))
	(bind ?E (nth$ 3 ?l))
	(bind ?Sigma (nth$ 4 ?l))
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?X-file "X-file" "r")
	
	(bind ?nb 0)
	(bind ?S3 0)
	(bind ?S4 0)
	
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(bind ?X-line (readline "X-file"))
		(bind ?xi (eval ?X-line))
		(if (eq ?ni ?nb-clues) then
			(bind ?nb (+ ?nb 1))
			(bind ?S3 (+ ?S3 (** (- ?xi ?E) 3)))
 			(bind ?S4 (+ ?S4 (** (- ?xi ?E) 4)))
		)
		(bind ?i (+ ?i 1))
	)
	(if (eq ?nb 0) 
		then (bind ?Skewness 0) 
			(bind ?Kurt 0) 
		else 
			(bind ?Skewness (/ ?S3 (* ?i (** ?Sigma 3))))
			(bind ?Kurt (- (/ ?S4 (* ?nb (** ?Sigma 4))) 3))
	)
	(printout t ?nb-clues "     " ?nb "     " ?E "   " ?Sigma "   " ?Skewness "   " ?Kurt crlf)
	(close "nb-clues-file")
	(close "X-file")
	(return (create$ ?nb-clues ?nb ?E ?Sigma ?Skewness ?Kurt))
)





(deffunction mean-SER-by-nb-clues-excluding-levels (?nb-clues ?nb-clues-file ?SER-file ?levels-file ?level ?n)
	(close)
	(open ?nb-clues-file "nb-clues-file" "r")
	(open ?SER-file "SER-file" "r")
	(open ?levels-file "levels-file" "r")
	
	(bind ?nb 0)
	(bind ?ESER 0)
	(bind ?ESER2 0)
	
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?nb-clues-line (readline "nb-clues-file"))
		(bind ?ni (eval ?nb-clues-line))
		(bind ?SER-line (readline "SER-file"))
		(bind ?si (eval ?SER-line))
		(bind ?levels-line (readline "levels-file"))
		(bind ?li (eval ?levels-line))
		(if (and (eq ?ni ?nb-clues) (> ?li ?level)) then
			(bind ?nb (+ ?nb 1))
			(bind ?ESER (+ ?ESER (/ (- ?si  ?ESER) ?nb)))
			(bind ?ESER2 (+ ?ESER2 (/ (- (* ?si ?si) ?ESER2) ?nb)))
		)
		(bind ?i (+ ?i 1))
	)
	(bind ?SigmaSER (sqrt (- ?ESER2 (* ?ESER ?ESER))))
	(printout t ?nb-clues "     " ?nb "     " ?ESER "   " ?SigmaSER crlf)
	(close "nb-clues-file")
	(close "SER-file")
	(close "levels-file")
)



(deffunction distribution-of-clues (?nb-clues-file ?n)
	(close)
	(bind ?E 0.0)
	(bind ?E2 0.0)
	(bind ?distrib (create$))
	(printout t "nb-clues   nb-instances" crlf)
	(bind ?nb-clues 19)
	(while (< ?nb-clues 36)	
		(open ?nb-clues-file "nb-clues-file" "r")
		(bind ?nb-instances 0)
		(bind ?i 1)
		(while (< ?i (+ ?n 1))
			(bind ?nb-clues-line (readline "nb-clues-file"))
			(bind ?ni (eval ?nb-clues-line))
			(if (eq ?ni ?nb-clues) then (bind ?nb-instances (+ ?nb-instances 1)))
			(bind ?i (+ ?i 1))
		)
		(close "nb-clues-file")
		(printout t ?nb-clues "         " ?nb-instances crlf)
		(bind ?distrib (union$ ?distrib (create$ ?nb-instances)))
		(bind ?E (+ ?E (* ?nb-instances ?nb-clues)))
		(bind ?E2 (+ ?E2 (* ?nb-instances ?nb-clues ?nb-clues)))
		(bind ?nb-clues (+ ?nb-clues 1))
	)
	(bind ?E (/ ?E ?n))
	(bind ?E2 (/ ?E2 ?n))
	(bind ?sd (sqrt (- ?E2 (* ?E ?E))))
	(printout t "mean= " ?E crlf)
	(printout t "standard-deviation= " ?sd crlf)
	(return ?distrib)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction max-value (?x-file ?n)
	(close)
	(open ?x-file "x-file" "r")
	(bind ?i 1)
	(bind ?max 0)
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?max (max ?max ?xi))
		(bind ?i (+ ?i 1))
	)
	(printout t "max = " ?max crlf)
	(close "x-file")
)



(deffunction min-value (?x-file ?n)
	(close)
	(open ?x-file "x-file" "r")
	(bind ?i 1)
	(bind ?min 100000)
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?min (min ?min ?xi))
		(bind ?i (+ ?i 1))
	)
	(printout t "min = " ?min crlf)
	(close "x-file")
)




(deffunction length-of-file (?file ?n)
	(close)
	(open ?file "file" "r")
	(bind ?i 1)	
	(while (< ?i (+ ?n 1))
		(bind ?line (readline "file"))
		(bind ?li (eval ?line))
		(printout t ?i " " ?li crlf)
		(bind ?i (+ ?i 1))
	)
	(close "file")
)




(deffunction compute-nb-clues (?p)
	(bind ?nb 0)
	(bind ?i 1)
	(while (< ?i 82)
		(bind ?ni (nth$ 1 (explode$ (sub-string ?i ?i ?p))))
		(if (member$ ?ni ?*numbers*) then (bind ?nb (+ ?nb 1)))
		(bind ?i (+ ?i 1))
	)
	?nb
)


(deffunction nb-clues (?puzzles-file ?n)
	(close)
	(open ?puzzles-file "puzzles-file" "r")
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?puzzles-line (readline "puzzles-file"))
		(bind ?li (eval ?puzzles-line))
		(printout t ?i "  " (compute-nb-clues ?li) crlf)
		(bind ?i (+ ?i 1))
	)
	(close "puzzles-file")
)


(deffunction store-nb-clues (?puzzles-file ?nb-clues-file ?n)
	(close)
	(open ?puzzles-file "puzzles-file" "r")
	(open ?nb-clues-file "nb-clues-file" "w")
	(bind ?i 1)	
	(while (< ?i (+ ?n 1))
		(bind ?puzzles-line (readline "puzzles-file"))
		;(bind ?li (eval ?puzzles-line))
		(printout "nb-clues-file" (compute-nb-clues ?puzzles-line) crlf)
		(bind ?i (+ ?i 1))
	)
	(close "puzzles-file")
	(close "nb-clues-file")
)



(deffunction store-nb-cands (?puzzles-file ?nb-cands-file ?n)
    ;;; Computes the number of candidates remaining after the current set of rules has been applied.
    ;;; Generally applied after Singles or after whips[1].
    (close)
    (open ?puzzles-file "puzzles-file" "r")
    (open ?nb-cands-file "nb-cands-file" "w")
    
    (mute-print-options)
    (bind ?i 1)
    (while (<= ?i ?n)
        (printout t ?i crlf)
        (bind ?puzzles-line (readline "puzzles-file"))
        (init ?puzzles-line)
        (run)
        (printout "nb-cands-file" ?*nb-candidates* crlf)
        (bind ?i (+ ?i 1))
    )
    (close "puzzles-file")
    (close "nb-cands-file")
    (restore-print-options)
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; functions for studying the independence of values in a sequence
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction center-reduce (?x-file ?out-file ?n)
	(close)
	;;; read the data and compute EX and SigmaX
	(open ?x-file "x-file" "r")
	(bind ?i 1)
	(bind ?EX 0)	
	(bind ?EX2 0)	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?i (+ ?i 1))
	)
	(close "x-file")
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?SigmaX (sqrt ?VX))
	(printout t "EX = " ?EX crlf)
	(printout t "SigmaX = " ?SigmaX crlf)
	
	;;; print the reduced centered variable ?l0
	(open ?x-file "x-file" "r")
	(open ?out-file "out-file" "w")
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(printout "out-file" (/ (- ?xi ?EX) ?SigmaX) crlf)
		(bind ?i (+ ?i 1))
	)
	(close "x-file")
	(close "out-file")
)



(deffunction auto-correlation (?x-file ?n ?k)
	(close)
	;;; read the data and compute EX and SigmaX
	(open ?x-file "x-file" "r")
	(bind ?l (create$))
	(bind ?i 1)
	(bind ?EX 0)	
	(bind ?EX2 0)	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?l (create$ ?l ?xi))
		(bind ?EX (+ ?EX (/ (- ?xi  ?EX) ?i)))
		(bind ?EX2 (+ ?EX2 (/ (- (* ?xi ?xi)  ?EX2) ?i)))
		(bind ?i (+ ?i 1))
	)
	(close "x-file")
	(bind ?VX (- ?EX2 (* ?EX ?EX)))
	(bind ?SigmaX (sqrt ?VX))
	(printout t "EX = " ?EX crlf)
	(printout t "SigmaX = " ?SigmaX crlf)
	
	;;; create the reduced centered variable ?l0
	(bind ?l0 (create$))
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?l0 (create$ ?l0 (/ (- (nth$ ?i ?l) ?EX) ?SigmaX)))
		(bind ?i (+ ?i 1))
	)
	; (printout t "centered reduced sequence OK" crlf)
	
	(bind ?EX2X2k 0)
	(bind ?i 1)
	(while (< ?i (- (+ ?n 1) ?k))
		(bind ?X2 (nth$ ?i ?l0)) 
		(bind ?X2k (nth$ (+ ?i ?k) ?l0)) 
		(bind ?EX2X2k (+ ?EX2X2k (* ?X2 ?X2k)))
		(bind ?i (+ ?i 1))
	)
	(bind ?EX2X2k (/ ?EX2X2k (- ?n ?k)))
	(printout t "EX2X2+k = " ?EX2X2k crlf)
)



(deffunction cr-auto-correlation (?cr-x-file ?n ?k)
	"autocorrelation for a sequence of centered reduced instances; 
	may introduce errors if computed on a subsequence while mean and sigma have been computed on the full sequence"
	(close)
	;;; read the data
	(open ?cr-x-file "cr-x-file" "r")
	(bind ?l0 (create$))
	(bind ?i 1)
	(bind ?EX 0)	
	(bind ?EX2 0)	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "cr-x-file"))
		(bind ?xi (eval ?xline))
		(bind ?l0 (create$ ?l0 ?xi))
		(bind ?i (+ ?i 1))
	)
	(close "cr-x-file")
	
	(bind ?EX2X2k 0)
	(bind ?i 1)
	(while (< ?i (- (+ ?n 1) ?k))
		(bind ?X2 (nth$ ?i ?l0)) 
		(bind ?X2k (nth$ (+ ?i ?k) ?l0)) 
		(bind ?EX2X2k (+ ?EX2X2k (* ?X2 ?X2k)))
		(bind ?i (+ ?i 1))
	)
	(bind ?EX2X2k (/ ?EX2X2k (- ?n ?k)))
	(printout t ?EX2X2k crlf)
)



;;; test whether a file contains identical puzzles

(deffunction test-repetitions (?file-name ?n)
	(close)
	(open ?file-name "file-symb" "r")
	(bind ?list (create$))
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?a (readline "file-symb"))
		(if (member$ ?a ?list) 
			then (printout t crlf ?i " already in list" crlf)
			else (bind ?list (union$ ?list (create$ ?a )))
		)
		(printout t ?i " ")
		(bind ?i (+ ?i 1))
	)
	(close "file-symb")
)
;;; test:
;;; (test-repetitions (str-cat ?*PuzzlesDir* "Sudogen/sudogen0-1M.txt") 1000000)
;;; conclusion: Sudogen0_1M has no repetitions










;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Same functions with file length computed automatically

(deffunction file-length (?file)
	(close)
	(open ?file "file" "r")
	(bind ?i 1)	
	(while TRUE
		(bind ?line (readline "file"))
		;(bind ?li (eval ?line))
		(bind ?li ?line)
		; (printout t ?i " " ?li crlf)
		(if (eq ?li EOF) 
			then 
				; (printout t ?line) 
				(return (- ?i 1))
		)
		(bind ?i (+ ?i 1))
	)
	(close "file")
)


(deffunction file-max-value (?x-file)
	(close)
	(open ?x-file "x-file" "r")
	(bind ?i 1)
	(bind ?max 0)
	(while TRUE
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(if (eq ?xi EOF) then (return ?max) (printout t "max = " ?max crlf) (close "x-file"))
		(bind ?max (max ?max ?xi))
		(bind ?i (+ ?i 1))
	)
	(close "x-file")
)



(deffunction file-min-value (?x-file)
	(close)
	(open ?x-file "x-file" "r")
	(bind ?i 1)
	(bind ?min 1000000)
	(while TRUE
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(if (eq ?xi EOF) then (printout t "min = " ?min crlf) (close "x-file") (return ?min))
		(bind ?min (min ?min ?xi))
		(bind ?i (+ ?i 1))
	)
	(close "x-file")
)


(deffunction file-last-value (?x-file)
	(close)
	(open ?x-file "x-file" "r")
	(bind ?i 1)
	(bind ?last 1000000)
	(while TRUE
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(if (eq ?xi EOF) then (close "x-file") (return ?last))
		(bind ?last ?xi)
		(bind ?i (+ ?i 1))
	)
	(close "x-file")
)


(deffunction file-mean-and-sd (?x-file)
	(close)
	(open ?x-file "x-file" "r")
	(bind ?i 0)
	(bind ?S 0)
	(bind ?S2 0)
	(while TRUE
		(bind ?xline (readline "x-file"))
		(if (eq (eval ?xline) EOF) 
			then 
				(close "x-file") 
				(return (create$ (/ ?S ?i) (sqrt (- (/ ?S2 ?i) (** (/ ?S ?i) 2)))))
			else
				(bind ?xi (eval ?xline))
				(bind ?S (+ ?S ?xi))
				(bind ?S2 (+ ?S2 (* ?xi ?xi)))
		)
		
		(bind ?i (+ ?i 1))
	)
	(close "x-file")
)


(deffunction file-mean-sd-kurtosis (?x-file)
	(bind ?l (file-mean-and-sd ?x-file))
	(bind ?E (nth$ 1 ?l))
	(bind ?Sigma (nth$ 2 ?l))
	(bind ?V (** ?Sigma 2))
	(open ?x-file "x-file" "r")
	(bind ?i 0)
	(bind ?S4 0)
	(while TRUE
		(bind ?xline (readline "x-file"))
		(if (eq (eval ?xline) EOF) 
			then 
				(close "x-file") 
				(return (create$ ?E ?Sigma (- (/ ?S4 (* ?i (** ?V 2))) 3)))
			else
				(bind ?xi (eval ?xline))
				(bind ?S4 (+ ?S4 (** (- ?xi ?E) 4)))
		)
		
		(bind ?i (+ ?i 1))
	)
	(close "x-file")
)


(deffunction file-mean-sd-skewness-kurtosis (?x-file)
	(bind ?l (file-mean-and-sd ?x-file))
	(bind ?E (nth$ 1 ?l))
	(bind ?Sigma (nth$ 2 ?l))
	(bind ?V (** ?Sigma 2))
	(open ?x-file "x-file" "r")
	(bind ?i 0)
	(bind ?S3 0)
	(bind ?S4 0)
	(while TRUE
		(bind ?xline (readline "x-file"))
		(if (eq (eval ?xline) EOF) 
			then 
				(close "x-file") 
				(return (create$ ?E ?Sigma (/ ?S3 (* ?i (** ?Sigma 3))) (- (/ ?S4 (* ?i (** ?V 2))) 3)))
			else
				(bind ?xi (eval ?xline))
				(bind ?S3 (+ ?S3 (** (- ?xi ?E) 3)))
				(bind ?S4 (+ ?S4 (** (- ?xi ?E) 4)))
		)
		
		(bind ?i (+ ?i 1))
	)
	(close "x-file")
)



(deffunction file-store-nb-clues (?puzzles-file ?nb-clues-file)
	(close)
	(open ?puzzles-file "puzzles-file" "r")
	(open ?nb-clues-file "nb-clues-file" "w")
	
	(bind ?i 1)	
	(while TRUE
		(bind ?puzzles-line (readline "puzzles-file"))
		(bind ?li (eval ?puzzles-line))
		(if (neq ?li EOF) 
			then 
				(bind ?nb-clues (compute-nb-clues ?puzzles-line))
				(printout "nb-clues-file" ?nb-clues crlf)
			else 
				(close "puzzles-file")
				(close "nb-clues-file")
				(return (- ?i 1))
		)
		(bind ?i (+ ?i 1))
	)
	(close "puzzles-file")
	(close "nb-clues-file")
)



(deffunction file-test-repetitions (?file-name)
	(close)
	(bind ?n (file-length ?file-name))
	(open ?file-name "file-symb" "r")
	(bind ?list (create$))
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?a (sub-string 1 81 (readline "file-symb")))
		(if (member$ ?a ?list) 
			then (printout t crlf ?i " already in list: " ?a crlf)
			else (bind ?list (union$ ?list (create$ ?a )))
		)
		(printout t ?i " ")
		(bind ?i (+ ?i 1))
	)
	(close "file-symb")
)




(deffunction mean-sd-of-distrib-19-35 (?list)
	"mean and standard deviation for a distribution given by the list of numbers of instances for values between 19 and 35"
	(bind ?n (length$ ?list))
	(bind ?E 0.0)
	(bind ?E2 0.0)
	(bind ?total-instances 0)
	(bind ?i 1)
	(while (< ?i 18)
		(bind ?nb-clues (+ ?i 18))
		(bind ?nb-instances (nth$ ?i ?list))
		(bind ?total-instances (+ ?total-instances ?nb-instances))
		(bind ?E (+ ?E (* ?nb-instances ?nb-clues)))
		(bind ?E2 (+ ?E2 (* ?nb-instances ?nb-clues ?nb-clues)))
		(bind ?i (+ ?i 1))
	)
	(bind ?E (/ ?E ?total-instances))
	(bind ?E2 (/ ?E2 ?total-instances))
	(bind ?sd (sqrt (- ?E2 (* ?E ?E))))
	(printout t "mean= " ?E crlf)
	(printout t "standard-deviation= " ?sd crlf)
	(return (create$ ?E ?sd))
)



(deffunction mean-sd-of-distrib-19-31 (?list)
	"mean and standard deviation for a distribution given by the list of numbers of instances for values between 19 and 31"
	(bind ?n (length$ ?list))
	(bind ?E 0.0)
	(bind ?E2 0.0)
	(bind ?total-instances 0)
	(bind ?i 1)
	(while (< ?i 14)
		(bind ?nb-clues (+ ?i 18))
		(bind ?nb-instances (nth$ ?i ?list))
		(bind ?total-instances (+ ?total-instances ?nb-instances))
		(bind ?E (+ ?E (* ?nb-instances ?nb-clues)))
		(bind ?E2 (+ ?E2 (* ?nb-instances ?nb-clues ?nb-clues)))
		(bind ?i (+ ?i 1))
	)
	(bind ?E (/ ?E ?total-instances))
	(bind ?E2 (/ ?E2 ?total-instances))
	(bind ?sd (sqrt (- ?E2 (* ?E ?E))))
	(printout t ?list crlf)
	(printout t "mean= " ?E crlf)
	(printout t "standard-deviation= " ?sd crlf)
	(return (create$ ?E ?sd))
)




(deffunction correlation-bis (?x-file ?y-file ?n)
	(close)
	(open ?x-file "x-file" "r")
	(open ?y-file "y-file" "r")
	
	(bind ?i 1)
	(bind ?EX 0)
	(bind ?EY 0)
	(bind ?EX2 0)
	(bind ?EY2 0)
	(bind ?EXY 0)
	
	(while (< ?i (+ ?n 1))
		(bind ?xline (readline "x-file"))
		(bind ?xi (eval ?xline))
		(bind ?yline (readline "y-file"))
		(bind ?yi (eval ?yline))
;		(printout t ?xi " " ?yi crlf)
		(bind ?EX (+ ?EX ?xi))
		(bind ?EY (+ ?EY ?yi))
		(bind ?EX2 (+ ?EX2 (* ?xi ?xi)))
		(bind ?EY2 (+ ?EY2 (* ?yi ?yi)))
		(bind ?EXY (+ ?EXY (* ?xi ?yi)))
		(bind ?i (+ ?i 1))
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
	(close "x-file")
	(close "y-file")
)




