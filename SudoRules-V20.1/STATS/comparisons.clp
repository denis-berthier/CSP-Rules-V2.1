
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

;;; The contents of the compared files must be intergers or reals


(deffunction compare-files (?file1 ?file2 ?n)
	(close)
	(bind ?plus 0)
	(bind ?minus 0)
    (bind ?diff 0)
	(open ?file1 "file1" "r")
	(open ?file2 "file2" "r")
	(bind ?i 0)
	(while (< ?i ?n)
		(bind ?i (+ ?i 1))
		(bind ?x1 (string-to-field (readline "file1")))
		(bind ?x2 (string-to-field (readline "file2")))
		(if (> ?x1 ?x2) then (bind ?plus (+ ?plus 1)) (printout t ?x1 "  " ?x2 "  " ?i  "   +" (- ?x1 ?x2) crlf))
		(if (< ?x1 ?x2) then (bind ?minus (+ ?minus 1)) (printout t ?x1 "  " ?x2 "  " ?i  "   " (- ?x1 ?x2) crlf))
        (if (<> ?x1 ?x2) then (bind ?diff (+ ?diff 1)))
	)
	(close "file1")
	(close "file2")
    (printout t ?diff " different values." crlf)
	(printout t "file1 greater " ?plus " times." crlf)
	(printout t "file1 smaller " ?minus " times." crlf)
)

