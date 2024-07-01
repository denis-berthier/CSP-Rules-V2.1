
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              RECORD RESULTS FOR FILES OF PUZZLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;            January 2006 - June 2024                ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; General utility functions for recording numbers of clues, candidates, density, mdel
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction compute-nb-clues (?puzzle-string)
    (bind ?nb-clues 0)
    (bind ?i 0)
    (while (< ?i 81)
        (bind ?i (+ ?i 1))
        (bind ?ni (nth$ 1 (explode$ (sub-string ?i ?i ?puzzle-string))))
        (if (member$ ?ni ?*numbers*) then (bind ?nb-clues (+ ?nb-clues 1)))
    )
    ?nb-clues
)


(deffunction nb-clues (?puzzles-file ?file-length)
    (close)
    (open ?puzzles-file "puzzles-file" "r")
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (bind ?puzzles-line (readline "puzzles-file"))
        (bind ?li (eval ?puzzles-line))
        (printout t ?i "  " (compute-nb-clues ?li) crlf)
    )
    (close "puzzles-file")
)



(deffunction record-nb-clues (?puzzles-file ?file-length ?nb-clues-file)
    ;;; Computes the number of clues for all the puzzles in the file
    (close)
    (open ?puzzles-file "puzzles-file" "r")
    (open ?nb-clues-file "nb-clues-file" "w")
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (printout t ?i crlf)
        (bind ?puzzles-line (readline "puzzles-file"))
        ;(bind ?li (eval ?puzzles-line))
        (printout "nb-clues-file" (compute-nb-clues ?puzzles-line) crlf)
    )
    (close "puzzles-file")
    (close "nb-clues-file")
)


;;; same function, other name, for compatibility with the next one:
(deffunction record-nb-clues-at-start (?puzzles-file ?file-length ?nb-clues-file)
    (record-nb-clues ?puzzles-file ?file-length ?nb-clues-file)
)


(deffunction record-nb-cands-at-start (?puzzles-file ?file-length ?nb-cands-file)
    ;;; Computes the number of candidates just after initialisation for all the puzzles in the file
    (close)
    (open ?puzzles-file "puzzles-file" "r")
    (open ?nb-cands-file "nb-cands-file" "w")
    
    (mute-print-options)
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (printout t ?i crlf)
        (bind ?puzzles-line (readline "puzzles-file"))
        (init ?puzzles-line)
        (printout "nb-cands-file" ?*nb-candidates* crlf)
    )
    (restore-print-options)
    (close "puzzles-file")
    (close "nb-cands-file")
)



(deffunction record-nb-cands-after-T (?puzzles-file ?file-length ?nb-cands-file)
    ;;; Computes the number of candidates remaining after the current set of rules T has been applied.
    ;;; Generally applied after Singles or after whips[1].
    (close)
    (open ?puzzles-file "puzzles-file" "r")
    (open ?nb-cands-file "nb-cands-file" "w")
    
    (mute-print-options)
    (bind ?i 0)
    (while (< ?i ?file-length)
        (bind ?i (+ ?i 1))
        (printout t "#" ?i crlf)
        (bind ?puzzles-line (readline "puzzles-file"))
        (init ?puzzles-line)
        (run)
        (printout "nb-cands-file" ?*nb-candidates* crlf)
    )
    (restore-print-options)
    (close "puzzles-file")
    (close "nb-cands-file")
)


(deffunction record-nb-clues-after-T (?puzzles-file ?file-length ?nb-clues-file)
    ;;; Computes the number of clues after the current set of rules T has been applied.
    ;;; Generally applied after Singles or after whips[1].
    (close)
    (open ?puzzles-file "puzzles-file" "r")
    (open ?nb-clues-file "nb-clues-file" "w")
    
    (mute-print-options)
    (bind ?i 0)
    (while TRUE
        (bind ?i (+ ?i 1))
        (printout t "#" ?i crlf)
        (bind ?puzzles-line (readline "puzzles-file"))
        (bind ?li (eval ?puzzles-line))
        (bind ?fixed-nb-clues (compute-nb-clues ?puzzles-line))
        (printout "nb-clues-file" ?fixed-nb-clues crlf)
    )
    (restore-print-options)
    (close "puzzles-file")
    (close "nb-clues-file")
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Density of puzzles (considered as graphs)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; No rule other than BRT is supposed to be loaded

(deffunction record-density-n-grids-after-first-p-from-text-file (?puzzles-file ?p ?n ?density-file)
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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Mean number of candidates deleted by a clue
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction record-mean-cands-deleted-n-grids-after-first-p-from-text-file (?nb-clues-file ?nb-cands-file ?p ?n ?mdel-file)
    (bind ?nb-clues 0)
    (bind ?nb-cands 0)
    (bind ?mdel 0)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (close)
    (open ?nb-clues-file "nb-clues-file-symb" "r")
    (open ?nb-cands-file "nb-cands-file-symb" "r")
    (open ?mdel-file "mdel-file-symb" "w")
    (bind ?i 0)
    (while (< ?i ?p)
        (bind ?i (+ ?i 1))
        (readline "nb-clues-file-symb")
        (readline "nb-cands-file-symb")
    )
    (bind ?i ?p)
    (while (< ?i (+ ?p ?n))
        (bind ?i (+ ?i 1))
        (bind ?nb-clues (string-to-field (readline "nb-clues-file-symb")))
        (bind ?nb-cands (string-to-field (readline "nb-cands-file-symb")))
        (bind ?mdel (/ (- 729 ?nb-cands) ?nb-clues))
        (printout "mdel-file-symb" ?mdel crlf)
    )
        
    (close "nb-cands-file-symb")
    (close "nb-clues-file-symb")
    (close "mdel-file-symb")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for recording various results
;;; for a series of puzzles written as a text file
;;; (one line per puzzle)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for recording 
;;; - the levels reached during resolution
;;; - the solutions (e.g. for use with DFS)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for computing the BRT-expansions of puzzles
;;; (to be used with only BRT loaded).
;;; Could also be used with other resolution theories T with the confluence property,
;;; but no application of this possibility is currently available.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction compute-partial-solution-string-in-context (?cont)
    ;;; when this function is called, a partial solution is supposed to have been reached in context ?cont
    (if (> ?*segment-size* 5) then
        (printout t "compute-partial-solution-string-in-context works only for grid size ≤ 25" crlf)
        (return FALSE)
    )
    (bind ?sol-str "")
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?rc-content "")
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb) (eq ?cand:status c-value))
                    (bind ?nb2 ?nb)
                    ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
                    (if (eq ?*grid-size* 16) then (bind ?nb2 (transform-nb-to-hexa ?nb)))
                    (if (eq ?*grid-size* 25) then (bind ?nb2 (transform-nb-to-25letters ?nb)))
                    
                    (bind ?rc-content (str-cat ?rc-content ?nb2)) ; this should apply at most once for each (row, col)
                )
                (if (= ?nb ?*grid-size*) then
                    (if (eq ?rc-content "") then (bind ?rc-content "."))
                    (bind ?sol-str (str-cat ?sol-str ?rc-content))
                )
            )
        )
    )
    ?sol-str
)


(deffunction compute-partial-solution-string ()
    ;;; when this function is called,
    ;;; either DFS is used and a solution has been stored in variable ?*solution-string*,
    ;;; or DFS is not used and only a partial solution is reached in context 0.
    (if ?*DFS*
        then ?*solution-string* ; at this point, this has been computed by DFS
        else (compute-partial-solution-string-in-context 0)
    )
)


(deffunction record-nb-clues-expand-n-grids-after-first-p-from-text-file (?puzzles-file ?p ?n ?nb-clues-expand-file)
    ;;; Computes the number of clues after the current set of rules T has been applied, for n puzzles after the first p
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (init-lists-for-files)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (close)
    (open ?puzzles-file "puzles-file-symb" "r")
    (open ?nb-clues-expand-file "nb-clues-expand-file-symb" "w")
    (mute-print-options)
    (bind ?i 0)
    (while (< ?i ?p) (bind ?i (+ ?i 1)) (readline "puzles-file-symb"))

    (bind ?i ?p)
    (while (< ?i (+ ?p ?n))
        (bind ?i (+ ?i 1))
        (printout t "Expanding puzzle #" ?i crlf)
        (solve-grid-from-text-file "puzles-file-symb" ?i)
        (printout "nb-clues-expand-file-symb" (compute-nb-clues (compute-partial-solution-string)) crlf)
        
        (printout t crlf crlf)
    )
    (restore-print-options)
    (close "puzles-file-symb")
    (close "nb-clues-expand-file-symb")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)



(deffunction record-expansions-n-grids-after-first-p-from-text-file (?puzzles-file ?p ?n ?expansions-file)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (init-lists-for-files)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (close)
    (open ?puzzles-file "puzles-file-symb" "r")
    (open ?expansions-file "expansions-file-symb" "w")
    (bind ?i 1)
    (while (< ?i (+ ?p 1)) (readline "puzles-file-symb") (bind ?i (+ ?i 1)))

    (bind ?i (+ ?p 1))
    (while (<= ?i (+ ?p ?n))
        (printout t "Expanding puzzle #" ?i crlf)
        (solve-grid-from-text-file "puzles-file-symb" ?i)
        (printout "expansions-file-symb" (compute-partial-solution-string) crlf)
        
        (bind ?*all-ORk-relations-used-in-list* (create$ ?*all-ORk-relations-used-in-list* ?*ORk-relations-used*))
        (if ?*solution-found* then
            (bind ?*all-ORk-relations-used-in-solved-list* (create$ ?*all-ORk-relations-used-in-solved-list* ?*ORk-relations-used*))
        )
        (printout t "#" ?i " " ?*technique* " " ?*total-instance-time* " " ?*nb-facts* crlf crlf)
        (if (neq (length$ ?*ORk-relations-used*) 0) then
            (printout t "#" ?i " ORk relations used in this puzzle: " ?*ORk-relations-used* crlf)
            (if (not (member$ Trid ?*ORk-relations-used*)) then (printout t "#" ?i " No Tridagon used" crlf))
        )
        (printout t crlf crlf)
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with potential memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "expansions-file-symb")
    (close "puzles-file-symb")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Function for recording the 1-expansions of puzzles
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction sudoku-strings-minus (?string2 ?string1)
    ;;; Only for 9x9 puzzles
    ;;; ?string1 and ?string2 are supposed to be Sudoku-strings, with ?string2 an expansion of ?string1
    ;;; They are supposed to have the same "." or "0" for no clue.
    ;;; Typically, ?string2 will be a solution of ?string1
    (bind ?minus "")
    (loop-for-count (?i 1 81)
        (bind ?nth1 (sub-string ?i ?i ?string1))
        (bind ?nth2 (sub-string ?i ?i ?string2))
        (if (eq ?nth1 ?nth2)
            then (bind ?minus (str-cat ?minus "."))
            else (bind ?minus (str-cat ?minus ?nth2))
        )
    )
    ?minus
)


(deffunction record-1-expand-puzzles-n-grids-after-first-p-from-text-file (?puzzles-file ?solns-file ?p ?n ?expands-file)
    (if ?*print-actions* then (print-banner))
    (init-lists-for-files)
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (open ?puzzles-file "puzzles-file-symb" "r")
    (open ?solns-file "solns-file-symb" "r")
    (open ?expands-file "expands-file-symb" "w")
    (bind ?i 0)
    (while (< ?i ?p) (bind ?i (+ ?i 1)) (readline "puzzles-file-symb") (readline "solns-file-symb"))
    (bind ?i ?p )
    (while (< ?i (+ ?p ?n))
        (bind ?i (+ ?i 1))
        (printout t "expand puzzle # " ?i crlf)
        (bind ?puzzle (readline "puzzles-file-symb"))
        (bind ?soln (readline "solns-file-symb"))
        (bind ?poss-add-clues (sudoku-strings-minus ?soln ?puzzle))
        (loop-for-count (?j 1 81)
            (bind ?exp-puzzle ?puzzle)
            (bind ?jth-add (sub-string ?j ?j ?poss-add-clues))
            (if (neq ?jth-add ".") then
                (printout "expands-file-symb"
                    (str-cat (sub-string 1 (- ?j 1) ?puzzle)
                        ?jth-add
                        (sub-string (+ ?j 1) 81 ?puzzle)
                    )
                    " orig#" ; added
                    ?i ; added
                    crlf
                )
            )
        )
    )
    (close "puzzles-file-symb")
    (close "solns-file-symb")
    (close "expands-file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)



