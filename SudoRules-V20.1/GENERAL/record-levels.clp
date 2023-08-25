
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              RECORD LEVELS OF PUZZLES
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Functions for recording various results
;;; for a series of puzzles written as a text file
;;; (one line per puzzle)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction classify-n-grids-after-first-p-from-text-file (?file-name ?p ?n ?levels-file ?times-file ?nb-facts-file)
	(if ?*print-actions* then (print-banner))
	(bind ?*add-instance-to-solved-list* TRUE)
	(bind ?*total-time* 0)
	(bind ?*max-time* 0)
	(bind ?*total-outer-time* (time))
    (init-globals-for-files)
	(close)
	(open ?file-name "file-symb" "r")
	(open ?levels-file "levels-file" "w")
	(open ?times-file "times-file" "w")
	(open ?nb-facts-file "nb-facts-file" "w")
	(bind ?i 1)
	(while (< ?i (+ ?p 1))
		(readline "file-symb") 
		(bind ?i (+ ?i 1))
	)
	(bind ?i (+ ?p 1))
	(while (< ?i (+ ?p ?n 1))
        (printout t "Solving puzzle #" ?i crlf)
		(solve-grid-from-text-file "file-symb" ?i)
		(printout "levels-file" ?*technique* crlf)
		(printout "times-file" ?*total-instance-time* crlf)
		(printout "nb-facts-file" ?*nb-facts* crlf)
        (bind ?*all-ORk-relations-used-in-list* (create$ ?*all-ORk-relations-used-in-list* ?*ORk-relations-used*))
        (if ?*solution-found* then
            (bind ?*all-ORk-relations-used-in-solved-list* (create$ ?*all-ORk-relations-used-in-solved-list* ?*ORk-relations-used*))
        )
        (printout t "#" ?i " " ?*technique* " " ?*total-instance-time* " " ?*nb-facts* crlf crlf)
        (if (neq (length$ ?*ORk-relations-used*) 0) then
            (printout t "#" ?i " ORk relations used in this puzzle: " ?*ORk-relations-used* crlf)
            (if (not (member$ Trid ?*ORk-relations-used*))
                then (printout t "#" ?i " No Tridagon used" crlf)
            )
        )
        (printout t crlf crlf)
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
	)
	(close "file-symb")
	(close "levels-file")
	(close "times-file")
	(close "nb-facts-file")
	(bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
	(printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
	(printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
	(printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)



(deffunction classify-n-grids-after-first-p-from-text-file-keeping-solutions (?file-name ?p ?n ?levels-file ?times-file ?nb-facts-file ?solns-file)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (init-globals-for-files)
    (close)
	(open ?file-name "file-symb" "r")
	(open ?levels-file "levels-file" "w")
	(open ?times-file "times-file" "w")
	(open ?nb-facts-file "nb-facts-file" "w")
	(open ?solns-file "solns-file" "w")
	(bind ?i 1)
	(while (< ?i (+ ?p 1))
		(readline "file-symb") (bind ?i (+ ?i 1))
	)
	(bind ?i (+ ?p 1))
	(while (< ?i (+ ?p ?n 1))
        (printout t "Solving puzzle #" ?i crlf)
		(solve-grid-from-text-file "file-symb" ?i)
		(printout "levels-file" ?*technique* crlf)
		(printout "times-file" ?*total-instance-time* crlf)
        (printout "nb-facts-file" ?*nb-facts* crlf)
        (printout "solns-file" (compute-solution-string) crlf)
        
        (bind ?*all-ORk-relations-used-in-list* (create$ ?*all-ORk-relations-used-in-list* ?*ORk-relations-used*))
        (if ?*solution-found* then
            (bind ?*all-ORk-relations-used-in-solved-list* (create$ ?*all-ORk-relations-used-in-solved-list* ?*ORk-relations-used*))
        )
        (printout t "#" ?i " " ?*technique* " " ?*total-instance-time* " " ?*nb-facts* crlf crlf)
        (if (neq (length$ ?*ORk-relations-used*) 0) then
            (printout t "#" ?i " ORk relations used in this puzzle: " ?*ORk-relations-used* crlf)
            (if (not (member$ Trid ?*ORk-relations-used*))
                then (printout t "#" ?i " No Tridagon used" crlf)
            )
        )
        (printout t crlf crlf)
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
    )
	(close "file-symb")
	(close "levels-file")
	(close "times-file")
	(close "nb-facts-file")
	(close "solns-file")
	(bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)


;;; same, but keeping only the solutions (e.g. for use with DFS)
(deffunction record-solutions-n-grids-after-first-p-from-text-file (?file-name ?p ?n ?solns-file)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (init-globals-for-files)
    (close)
    (open ?file-name "file-symb" "r")
    (open ?solns-file "solns-file" "w")
    (bind ?i 1)
    (while (< ?i (+ ?p 1))
        (readline "file-symb") (bind ?i (+ ?i 1))
    )
    (bind ?i (+ ?p 1))
    (while (< ?i (+ ?p ?n 1))
        (printout t "Solving puzzle #" ?i crlf)
        (solve-grid-from-text-file "file-symb" ?i)
        (printout "solns-file" (compute-solution-string) crlf)
        
        (bind ?*all-ORk-relations-used-in-list* (create$ ?*all-ORk-relations-used-in-list* ?*ORk-relations-used*))
        (if ?*solution-found* then
            (bind ?*all-ORk-relations-used-in-solved-list* (create$ ?*all-ORk-relations-used-in-solved-list* ?*ORk-relations-used*))
        )
        (printout t "#" ?i " " ?*technique* " " ?*total-instance-time* " " ?*nb-facts* crlf crlf)
        (if (neq (length$ ?*ORk-relations-used*) 0) then
            (printout t "#" ?i " ORk relations used in this puzzle: " ?*ORk-relations-used* crlf)
            (if (not (member$ Trid ?*ORk-relations-used*))
                then (printout t "#" ?i " No Tridagon used" crlf)
            )
        )
        (printout t crlf crlf)
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    (close "solns-file")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)



(deffunction record-levels-n-grids-after-first-p-from-text-file (?file-name ?p ?n ?levels-file)
    ;;; instead of recording the hardest technique used, record only the main level reached
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (init-globals-for-files)
    (close)
    (open ?file-name "file-symb" "r")
    (open ?levels-file "levels-file" "w")
    (bind ?i 1)
    (while (< ?i (+ ?p 1))
        (readline "file-symb")
        (bind ?i (+ ?i 1))
    )
    (bind ?i (+ ?p 1))
    (while (< ?i (+ ?p ?n 1))
        (printout t "Solving puzzle #" ?i crlf)
        (solve-grid-from-text-file "file-symb" ?i)
        (printout "levels-file" ?*main-level* crlf)
        (bind ?*all-ORk-relations-used-in-list* (create$ ?*all-ORk-relations-used-in-list* ?*ORk-relations-used*))
        (if ?*solution-found* then
            (bind ?*all-ORk-relations-used-in-solved-list* (create$ ?*all-ORk-relations-used-in-solved-list* ?*ORk-relations-used*))
        )
        (printout t "#" ?i " " ?*technique* " " ?*total-instance-time* " " ?*nb-facts* crlf crlf)
        (if (neq (length$ ?*ORk-relations-used*) 0) then
            (printout t "#" ?i " ORk relations used in this puzzle: " ?*ORk-relations-used* crlf)
            (if (not (member$ Trid ?*ORk-relations-used*))
                then (printout t "#" ?i " No Tridagon used" crlf)
            )
        )
        (printout t crlf crlf)
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    (close "levels-file")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Functions for computing the density
;;; of a series of puzzles written as a text file
;;; (one line per puzzle)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; No rule other than BRT is supposed to be loaded

(deffunction density-of-n-grids-after-first-p-from-text-file (?puzzles-file ?p ?n ?density-file)
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))
    (load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "play.clp"))
    (load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "init-links.clp"))
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (init-globals-for-files)
    (close)
	(open ?puzzles-file "puzzles-file" "r")
	(open ?density-file "density-file" "w")
	(bind ?i 1)
	(while (<= ?i ?p) (readline "puzzles-file") (bind ?i (+ ?i 1)))
	(bind ?i (+ ?p 1))
	(while (<= ?i (+ ?p ?n))
		(solve-grid-from-text-file "puzzles-file" ?i)
        (bind ?*density* (density ?*nb-candidates* ?*links-count*))
		(printout "density-file" ?*density* crlf)
		(bind ?i (+ ?i 1))
	)
	(close "puzzles-file")
	(close "density-file")
	(bind ?*total-outer-time* (- (time) ?*total-outer-time*))
	(printout t ";;; TOTAL OUTER TIME = " ?*total-outer-time* crlf)
	(printout t ";;; TOTAL RESOLUTION TIME = " ?*total-time* crlf)
	(printout t ";;; MAX TIME = " ?*max-time* crlf)
)


;;;; Compare the results for 2 files

(deffunction compare-level-files (?file1 ?file2 ?n)
    ;;; each line of the two files must be a real number
    (bind ?different-lines (create$))
    (open ?file1 "file1" "r")
    (open ?file2 "file2" "r")
    (bind ?i 0)
    (while (< ?i ?n)
        (bind ?i (+ ?i 1))
        (bind ?L1 (string-to-field (readline "file1")))
        (bind ?L2 (string-to-field (readline "file2")))
        (if (neq ?L1 ?L2) then
            (if (> ?L1 ?L2) then (printout t ?i "   " ?L1 " > " ?L2 crlf))
            (if (< ?L1 ?L2) then (printout t ?i "   " ?L1 " < " ?L2 crlf))
            (bind ?different-lines (create$ ?different-lines ?i))
        )
    )
    (close "file1")
    (close "file2")
    (printout t "Different lines: " ?different-lines crlf)
    (length$ ?different-lines)
)
