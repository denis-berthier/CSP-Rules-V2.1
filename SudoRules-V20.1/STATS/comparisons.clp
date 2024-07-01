
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                               STATS / COMPARISONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; Notice that "while" is used everywhere instead of more advanced control structures.
;;; This is not very elegant.
;;; But "while" is the only iterative control structure common to CLIPS and JESS.

;;; The contents of the compared files must be integers or reals


(deffunction compare-files (?file1 ?file2 ?file-length)
	(close)
	(bind ?plus 0)
	(bind ?minus 0)
    (bind ?diff 0)
	(open ?file1 "file1" "r")
	(open ?file2 "file2" "r")
	(bind ?i 0)
	(while (< ?i ?file-length)
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



(deffunction compare-ratings-in-files (?r1 ?r2 ?file1 ?file2 ?file-length)
    ;;; ?r1 and ?r2 are the names of the ratings, e.g. W and B
    ;;; ?file1 and ?file2 are the full paths to the files of the two ratings
    ;;; ?file-length is the common length of the files of the two ratings
    (open ?file1 "file1" "r")
    (open ?file2 "file2" "r")
    (bind ?nb-diff 0)
    (bind ?nb-pos-diff 0)
    (bind ?nb-neg-diff 0)
    (bind ?i 1)
    (while (<= ?i ?file-length)
        (bind ?rating1 (read-number "file1"))
        (bind ?rating2 (read-number "file2") )
        (if (neq ?rating1 ?rating2) then
            (bind ?nb-diff (+ ?nb-diff 1))
            (printout t "#" ?i ": " ?r1 " = " ?rating1 "; " ?r2 " = " ?rating2 "; diff = " (- ?rating1 ?rating2) crlf)
            (if (> ?rating1 ?rating2)
                then (bind ?nb-pos-diff (+ ?nb-pos-diff 1))
                else (bind ?nb-neg-diff (+ ?nb-neg-diff 1))
            )
        )
        (bind ?i (+ ?i 1))
    )
    (printout t ?nb-diff " differences" crlf)
    (printout t ?nb-pos-diff " positive differences" crlf)
    (printout t ?nb-neg-diff " negative differences" crlf)
    (close "file2")
    (close "file1")
)



(deffunction compare-diff-ratings-in-files (?r1 ?r2 ?toler ?file1 ?file2 ?file-length)
    ;;; ?r1 and ?r2 are the names of the ratings, e.g. W and B
    ;;; ?toler is the tolerance between the ratings for being considered as equivalent (e.g. 0.1 in SER)
    ;;; ?file1 and ?file2 are the full paths to the files of the two ratings
    ;;; ?file-length is the common length of the files of the two ratings
    (open ?file1 "file1" "r")
    (open ?file2 "file2" "r")
    (bind ?nb-diff 0)
    (bind ?nb-pos-diff 0)
    (bind ?nb-neg-diff 0)
    (bind ?i 1)
    (while (<= ?i ?file-length)
        (bind ?rating1 (read-number "file1"))
        (bind ?rating2 (read-number "file2"))
        (if (> (abs (- ?rating1 ?rating2)) ?toler) then
            (bind ?nb-diff (+ ?nb-diff 1))
            (printout t "#" ?i ": " ?r1 " = " ?rating1 "; " ?r2 " = " ?rating2 "; diff = " (- ?rating1 ?rating2) crlf)
            (if (> ?rating1 ?rating2)
                then (bind ?nb-pos-diff (+ ?nb-pos-diff 1))
                else (bind ?nb-neg-diff (+ ?nb-neg-diff 1))
            )
        )
        (bind ?i (+ ?i 1))
    )
    (printout t ?nb-diff " meaningful (i.e. > " ?toler ") differences" crlf)
    (printout t ?nb-pos-diff " meaningful (i.e. > " ?toler ") positive differences" crlf)
    (printout t ?nb-neg-diff " meaningful (i.e. > " ?toler ") negative differences" crlf)
    (close "file2")
    (close "file1")
)

