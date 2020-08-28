
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              COMPARISONS
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





;;; Notice that "while" is used everywhere instead of more advanced control structures.
;;; This is not very elegant.
;;; But "while" is the only iterative control structure common to CLIPS and JESS.




(deffunction compare-files (?file1 ?file2 ?n)
	(close)
	(bind ?plus 0)
	(bind ?minus 0)
	(open ?file1 "file1" "r")
	(open ?file2 "file2" "r")
	(bind ?i 0)
	(while (< ?i ?n)
		(bind ?i (+ ?i 1))
		(bind ?x1 (eval (readline "file1")))
		(bind ?x2 (eval (readline "file2")))
		(if (> ?x1 ?x2) then (bind ?plus (+ ?plus 1)) (printout t ?x1 "  " ?x2 "  " ?i  "   +" (- ?x1 ?x2) crlf))
		(if (< ?x1 ?x2) then (bind ?minus (+ ?minus 1)) (printout t ?x1 "  " ?x2 "  " ?i  "   " (- ?x1 ?x2) crlf))
	)
	(close "file1")
	(close "file2")
	(printout t "file1 greater " ?plus " times." crlf)
	(printout t "file1 smaller " ?minus " times." crlf)
)




(deffunction compare-files-plus (?puzzles-file ?file1 ?file2 ?n)
	(close)
	(bind ?plus 0)
	(bind ?minus 0)
	(open ?puzzles-file "puzzles-file" "r")
	(open ?file1 "file1" "r")
	(open ?file2 "file2" "r")
	(bind ?i 0)
	(while (< ?i ?n)
		(bind ?i (+ ?i 1))
		(bind ?p (readline "puzzles-file"))
		(bind ?Sudo (eval (readline "file1")))
		(bind ?Paul (eval (readline "file2")))
		(if (> ?Sudo ?Paul) then (bind ?plus (+ ?plus 1)) (printout t ?p "  " ?Sudo "  " ?Paul "  " ?i  "   +" (- ?Sudo ?Paul) crlf))
	)
	(close "puzzles-file")
	(close "file1")
	(close "file2")
	(printout t "SudoRules greater " ?plus " times." crlf)
)



(deffunction compare-files-minus (?puzzles-file ?file1 ?file2 ?n)
	(close)
	(bind ?plus 0)
	(bind ?minus 0)
	(open ?puzzles-file "puzzles-file" "r")
	(open ?file1 "file1" "r")
	(open ?file2 "file2" "r")
	(bind ?i 0)
	(while (< ?i ?n)
		(bind ?i (+ ?i 1))
		(bind ?p (readline "puzzles-file"))
		(bind ?Sudo (eval (readline "file1")))
		(bind ?Paul (eval (readline "file2")))
		(if (< ?Sudo ?Paul) then (bind ?minus (+ ?minus 1)) (printout t ?p "  " ?Sudo "  " ?Paul "  " ?i  "   " (- ?Sudo ?Paul) crlf))
	)
	(close "puzzles-file")
	(close "file1")
	(close "file2")
	(printout t "SudoRules smaller " ?minus " times." crlf)
)

