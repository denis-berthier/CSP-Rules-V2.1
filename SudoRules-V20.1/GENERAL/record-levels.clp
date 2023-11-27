
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


(deffunction classify-n-grids-after-first-p-from-text-file (?puzzles-file ?p ?n ?levels-file ?times-file ?nb-facts-file)
	(if ?*print-actions* then (print-banner))
	(bind ?*add-instance-to-solved-list* TRUE)
    (init-lists-for-files)
	(bind ?*total-time* 0)
	(bind ?*max-time* 0)
	(bind ?*total-outer-time* (time))
	(close)
	(open ?puzzles-file "puzles-file-symb" "r")
	(open ?levels-file "levels-file-symb" "w")
	(open ?times-file "times-file-symb" "w")
	(open ?nb-facts-file "nb-facts-file-symb" "w")
	(bind ?i 1)
	(while (< ?i (+ ?p 1))
		(readline "puzles-file-symb")
		(bind ?i (+ ?i 1))
	)
	(bind ?i (+ ?p 1))
	(while (< ?i (+ ?p ?n 1))
        (printout t "Solving puzzle #" ?i crlf)
		(solve-grid-from-text-file "puzles-file-symb" ?i)
		(printout "levels-file-symb" ?*technique* crlf)
		(printout "times-file-symb" ?*total-instance-time* crlf)
		(printout "nb-facts-file-symb" ?*nb-facts* crlf)
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
	(close "puzles-file-symb")
	(close "levels-file-symb")
	(close "times-file-symb")
	(close "nb-facts-file-symb")
	(bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
	(printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
	(printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
	(printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)



(deffunction classify-n-grids-after-first-p-from-text-file-keeping-solutions (?puzzles-file ?p ?n ?levels-file ?times-file ?nb-facts-file ?solns-file)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (init-lists-for-files)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (close)
	(open ?puzzles-file "puzles-file-symb" "r")
	(open ?levels-file "levels-file-symb" "w")
	(open ?times-file "times-file-symb" "w")
	(open ?nb-facts-file "nb-facts-file-symb" "w")
	(open ?solns-file "solns-file-symb" "w")
	(bind ?i 1)
	(while (< ?i (+ ?p 1))
		(readline "puzles-file-symb") (bind ?i (+ ?i 1))
	)
	(bind ?i (+ ?p 1))
	(while (< ?i (+ ?p ?n 1))
        (printout t "Solving puzzle #" ?i crlf)
		(solve-grid-from-text-file "puzles-file-symb" ?i)
		(printout "levels-file-symb" ?*technique* crlf)
		(printout "times-file-symb" ?*total-instance-time* crlf)
        (printout "nb-facts-file-symb" ?*nb-facts* crlf)
        (printout "solns-file-symb" (compute-solution-string) crlf)
        
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
	(close "puzles-file-symb")
	(close "levels-file-symb")
	(close "times-file-symb")
	(close "nb-facts-file-symb")
	(close "solns-file-symb")
	(bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)



;;; same, but keeping only the solutions (e.g. for use with DFS)
(deffunction record-solutions-n-grids-after-first-p-from-text-file (?puzzles-file ?p ?n ?solns-file)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (init-lists-for-files)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (close)
    (open ?puzzles-file "puzles-file-symb" "r")
    (open ?solns-file "solns-file-symb" "w")
    (bind ?i 1)
    (while (< ?i (+ ?p 1))
        (readline "puzles-file-symb") (bind ?i (+ ?i 1))
    )
    (bind ?i (+ ?p 1))
    (while (< ?i (+ ?p ?n 1))
        (printout t "Solving puzzle #" ?i crlf)
        (solve-grid-from-text-file "puzles-file-symb" ?i)
        (printout "solns-file-symb" (compute-solution-string) crlf)
        
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
    (close "puzles-file-symb")
    (close "solns-file-symb")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)



(deffunction record-levels-n-grids-after-first-p-from-text-file (?puzzles-file ?p ?n ?levels-file)
    ;;; instead of recording the hardest technique used, record only the main level reached
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (init-lists-for-files)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (close)
    (open ?puzzles-file "puzles-file-symb" "r")
    (open ?levels-file "levels-file-symb" "w")
    (bind ?i 1)
    (while (< ?i (+ ?p 1))
        (readline "puzles-file-symb")
        (bind ?i (+ ?i 1))
    )
    (bind ?i (+ ?p 1))
    (while (< ?i (+ ?p ?n 1))
        (printout t "Solving puzzle #" ?i crlf)
        (solve-grid-from-text-file "puzles-file-symb" ?i)
        (printout "levels-file-symb" ?*main-level* crlf)
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
    (close "puzles-file-symb")
    (close "levels-file-symb")
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
    (init-lists-for-files)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (close)
	(open ?puzzles-file "puzzles-file-symb" "r")
	(open ?density-file "density-file-symb" "w")
	(bind ?i 1)
	(while (<= ?i ?p) (readline "puzzles-file-symb") (bind ?i (+ ?i 1)))
	(bind ?i (+ ?p 1))
	(while (<= ?i (+ ?p ?n))
        (printout t "puzzle #" ?i crlf)
		(solve-grid-from-text-file "puzzles-file-symb" ?i)
        (bind ?*density* (density ?*nb-candidates* ?*links-count*))
		(printout "density-file-symb" ?*density* crlf)
		(bind ?i (+ ?i 1))
	)
	(close "puzzles-file-symb")
	(close "density-file-symb")
	(bind ?*total-outer-time* (- (time) ?*total-outer-time*))
	(printout t ";;; TOTAL OUTER TIME = " ?*total-outer-time* crlf)
	(printout t ";;; TOTAL RESOLUTION TIME = " ?*total-time* crlf)
	(printout t ";;; MAX TIME = " ?*max-time* crlf)
)

