
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              PUZZLE FILTER
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





(deffunction truncate-file (?file-in ?file-out ?n)
	(open ?file-in "file-in" "r")
	(open ?file-out "file-out" "w")
	(bind ?i 1)
	(while (< ?i (+ ?n 1))
		(bind ?y (eval (readline "file-in")))
		(printout "file-out" ?y crlf)
		(bind ?i (+ ?i 1))
	)
	(close "file-in")
	(close "file-out")
)





(deffunction print-puzzles-with-nb-clues (?puzzles-file ?clues-file ?nb-clues ?n)
	(open ?puzzles-file "puzzles-file" "r")
	(open ?clues-file "clues-file" "r")
	(bind ?i 0)
	(while (< ?i ?n)
		(bind ?i (+ ?i 1))
		(bind ?x (eval (readline "puzzles-file")))
		(bind ?c (eval (readline "clues-file")))
		(if (eq ?c ?nb-clues) 
			then (printout t ?x "    " ?c "    " ?i  "    " crlf))
	)
	(close "puzzles-file")
	(close "clues-file")
)




(deffunction print-puzzles-with-SER (?puzzles-file ?SER-file ?SER ?n)
	(open ?puzzles-file "puzzles-file" "r")
	(open ?SER-file "SER-file" "r")
	(bind ?i 0)
	(while (< ?i ?n)
		(bind ?i (+ ?i 1))
		(bind ?x (readline "puzzles-file"))
		(bind ?y (eval (readline "SER-file")))
		(if (> ?y ?SER) then (printout t ?i  "  " ?x "  " ?y crlf))
	)
	(close "puzzles-file")
	(close "SER-file")
)

(print-puzzles-with-SER "/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/Puzzles/Sudogen/Sudogen0-1M.txt" 
						"/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/Results/Sudogen0/M7wbis-correlations-Clips630BetaR2-1-1M/SE-ratings-1-1M.txt" 
						9 1000000)


(deffunction print-puzzles-with-SER-NRCZT (?puzzles-file ?SER-file ?NRCZT-file ?SER ?n)
	(open ?puzzles-file "puzzles-file" "r")
	(open ?SER-file "SER-file" "r")
	(open ?NRCZT-file "NRCZT-file" "r")
	(bind ?i 0)
	(while (< ?i ?n)
		(bind ?i (+ ?i 1))
		(bind ?x (eval (readline "puzzles-file")))
		(bind ?y (eval (readline "SER-file")))
		(bind ?z (eval (readline "NRCZT-file")))
		(if (> ?y ?SER) then (printout t ?i  "  " ?x "  " ?y "  " ?z crlf))
	)
	(close "puzzles-file")
	(close "SER-file")
	(close "NRCZT-file")
)

;(print-puzzles-with-SER-NRCZT
;	"/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/Puzzles/Sudogen/Sudogen0-1M.txt" 
;	"/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/Results/Sudogen0/M7wbis-correlations-Clips630BetaR2-1-1M/SE-ratings-1-1M.txt"
;	"/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/Results/Sudogen0/M7wbis-correlations-Clips630BetaR2-1-1M/nrczt-levels-1-1M.txt"
;	 9 1000000)




(deffunction print-puzzles-with-high-score (?puzzles-file ?score-file ?other-score-file ?min-score ?n)
	(open ?puzzles-file "puzzles-file" "r")
	(open ?score-file "score-file" "r")
	(open ?other-score-file "other-score-file" "r")
	(bind ?i 0)
	(while (< ?i ?n)
		(bind ?i (+ ?i 1))
		(bind ?x (eval (readline "puzzles-file")))
		(bind ?z (eval (readline "score-file")))
		(bind ?w (eval (readline "other-score-file")))
		(if (>= ?z ?min-score) 
            ;then (printout t ?x "   " ?z "   " ?w crlf)
            then (printout t ?z crlf)
        )
	)
	(close "puzzles-file")
	(close "score-file")
	(close "other-score-file")
)



(deffunction print-puzzles-with-high-SER-or-NRCZT (?puzzles-file ?SER-file ?NRCZT-file ?SER ?NRCZT ?n)
	(open ?puzzles-file "puzzles-file" "r")
	(open ?SER-file "SER-file" "r")
	(open ?NRCZT-file "NRCZT-file" "r")
	(bind ?i 0)
	(while (< ?i ?n)
		(bind ?i (+ ?i 1))
		(bind ?x (eval (readline "puzzles-file")))
		(bind ?y (eval (readline "SER-file")))
		(bind ?z (eval (readline "NRCZT-file")))
		(if (or (>= ?y ?SER) (>= ?z ?NRCZT)) then (printout t ?x "  " ?y  "  " ?z crlf))
	)
	(close "puzzles-file")
	(close "NRCZT-file")
)





(deffunction print-puzzles-with-high-SER-NRCZT-time-facts-clues (?puzzles-file ?SER-file ?NRCZT-file ?time-file ?facts-file ?clues-file ?SER ?NRCZT ?time ?facts ?n)
	(open ?puzzles-file "puzzles-file" "r")
	(open ?SER-file "SER-file" "r")
	(open ?NRCZT-file "NRCZT-file" "r")
	(open ?time-file "time-file" "r")
	(open ?facts-file "facts-file" "r")
	(open ?clues-file "clues-file" "r")
	(bind ?i 0)
	(while (< ?i ?n)
		(bind ?i (+ ?i 1))
		(bind ?x (eval (readline "puzzles-file")))
		(bind ?y (eval (readline "SER-file")))
		(bind ?z (eval (readline "NRCZT-file")))
		(bind ?u (eval (readline "time-file")))
		(bind ?v (eval (readline "facts-file")))
		(bind ?c (eval (readline "clues-file")))
		(if (or (> ?y ?SER) 
				(> ?z ?NRCZT) 
				(> ?u ?time) 
				(> ?v ?facts)
			)
			then (printout t ?i  "    " ?x "    " ?y "    " ?z "    " 
			?u "    " ?v "    " 
			?c crlf))
	)
	(close "puzzles-file")
	(close "SER-file")
	(close "NRCZT-file")
	(close "time-file")
	(close "facts-file")
	(close "clues-file")
)


;(print-puzzles-with-high-SER-NRCZT-time-facts-clues
;	"/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/Puzzles/Sudogen/sudogen0_1M.txt" 
;	"/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/Results/Sudogen0/M7wbis-correlations-Clips630BetaR2-1-1M/SE-ratings-1-1M.txt"
;	"/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/Results/Sudogen0/M7wbis-correlations-Clips630BetaR2-1-1M/nrczt-levels-1-1M.txt"
;	"/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/Results/Sudogen0/M7wbis-correlations-Clips630BetaR2-1-1M/nrczt-times-1-1M.txt"
;	"/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/Results/Sudogen0/M7wbis-correlations-Clips630BetaR2-1-1M/nrczt-facts-1-1M.txt"
	"/Users/berthier/Documents/INT-Projets/SudoRules/SudoRules13/Results/Sudogen0/M7wbis-correlations-Clips630BetaR2-1-1M/nb-clues-1-1M.txt"
;	 9
;	 9
;	 3600
;	 350000
;	 1000000)

	 
	 
