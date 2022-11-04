
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              SOLVE-FILES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - July 2021               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; additional functions for initializing and solving puzzles
;;; and series of puzzles written as a text file
;;; (one line per puzzle)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-grid-from-text-file (?file-symb)
    ;;; read line containing the grid entries
    (bind ?givens (readline ?file-symb))
    (if ?*print-actions* then (printout t ?givens crlf))
    ;;; This function could be simplified (and initialization time shortened)
    ;;; by combining the following two calls into a single function,
    ;;; but, for easier navigation in the facts base, I prefer asserting all the c-values first and then all the candidates.
    ;;; Assert the values and the associated c-values for cells with given entries
    (init-values-from-string ?givens)
    ;;; Initialize candidates for cells with no entry
    (init-candidates-from-string ?givens)
)


(deffunction solve-grid-from-text-file (?file-symb ?i)
    (reset) (reset)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    (bind ?*nb-csp-variables-solved* 0)
    ;;; puzzle entries are taken into account here
    (init-grid-from-text-file ?file-symb)
    (assert (context (name 0)))
    (assert (grid ?i))
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    (bind ?n (run)) ;;; the grid is solved here
    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
    (bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
    (bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t "init-time = " ?*init-instance-time* ", solve-time = " ?*solve-instance-time* ", total-time = " ?*total-instance-time*  crlf)
        (printout t "nb-facts=" ?*nb-facts* crlf)
        ;(printout t "nb rules " ?nb-rules crlf)
        ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (printout t crlf)
    )
    (if ?*print-actions* then
        (print-banner)
        (printout t crlf)
    )
)


(deffunction solve-nth-grid-from-text-file (?file-name ?nb)
    (if ?*print-actions* then (print-banner))
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (open ?file-name "file-symb" "r")
    (bind ?i 1)
    (while (< ?i ?nb) (readline "file-symb") (bind ?i (+ ?i 1)))
    (solve-grid-from-text-file "file-symb" ?nb)
    (close "file-symb")
)



(deffunction solve-n-grids-after-first-p-from-text-file (?file-name ?p ?n)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*multi-sol-list* (create$))
    (bind ?*special-list1* (create$))
    (bind ?*special-list2* (create$))
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (open ?file-name "file-symb" "r")
    (bind ?i 1)
    (while (<= ?i ?p) (readline "file-symb") (bind ?i (+ ?i 1)))
    (bind ?i (+ ?p 1))
    (while (<= ?i (+ ?p ?n))
        (solve-grid-from-text-file "file-symb" ?i)
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)




(deffunction count-grids-in-text-file (?file-name ?nb)
    (open ?file-name "file-symb" "r")
    (bind ?i 1)
    (while (< ?i ?nb)
        (bind ?givens (readline "file-symb"))
        (printout t ?i " " ?givens crlf)
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for displaying a puzzle from a text file
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction display-grid-from-text (?file-symb)
	(bind ?givens (readline ?file-symb))
	(printout t crlf)
	(bind ?ir 1)
	(while (< ?ir  (+ ?*grid-size* 1))
		(bind ?row (nth$ ?ir ?*rows*))
		(bind ?jc 1)
		(while (< ?jc  (+ ?*grid-size* 1))
			(bind ?col (nth$ ?jc ?*columns*)) 
			(bind ?i (cell-index ?row ?col))
			(bind ?nb (nth$ 1 (explode$ (sub-string ?i ?i ?givens))))
			(if (member$ ?nb ?*numbers*) then (printout t ?nb) else (printout t "."))
			(bind ?jc (+ ?jc 1))
		)
		(printout t crlf)
	(bind ?ir (+ ?ir 1))
	)
)


(deffunction display-nth-grid-from-text-file (?file-name ?nb)
	(open ?file-name "file-symb" "r")
	(bind ?i 1)
	(while (< ?i ?nb) (readline "file-symb") (bind ?i (+ ?i 1)))
	(display-grid-from-text "file-symb")
	(close "file-symb")
)


(deffunction display-nth-line-from-text-file (?file-name ?nb)
	(open ?file-name "file-symb" "r")
	(bind ?i 1)
	(while (< ?i ?nb) (readline "file-symb") (bind ?i (+ ?i 1)))
	(bind ?line (readline "file-symb"))
	(printout t ?line crlf)
	(close "file-symb")
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; functions for computing statistics
;;; on a series of puzzles written as a text file
;;; (one line per puzzle)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction stats-n-grids-after-first-p-from-text-file (?file-name ?p ?n ?levels-file ?times-file ?nb-facts-file)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*multi-sol-list* (create$))
    (bind ?*special-list* (create$))
    (bind ?*special-list1* (create$))
    (bind ?*special-list2* (create$))
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
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
        (solve-grid-from-text-file "file-symb" ?i)
        (printout "levels-file" ?*technique* crlf)
        (printout "times-file" ?*total-instance-time* crlf)
        (printout "nb-facts-file" ?*nb-facts* crlf)
        (printout t ?i " " ?*technique* " " ?*total-instance-time* " " ?*nb-facts* crlf crlf)
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    (close "levels-file")
    (close "times-file")
    (close "nb-facts-file")
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " ?*total-outer-time* crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " ?*total-time* crlf)
    (printout t ";;; MAX TIME = " ?*max-time* crlf)
)



