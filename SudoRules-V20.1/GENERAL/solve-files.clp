
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              SOLVE-FILES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - May 2022               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; Functions for initializing and solving series of Sudoku puzzles written in a text file
;;; Do not forget to check all the files have have the correct CR/LF ending for your file system



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1) Sudoku puzzles given in string format (one per line)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-grid-from-text-file (?file-symb)
	;;; read line containing the grid entries
	(bind ?givens (readline ?file-symb))
	(if ?*print-actions* then (printout t ?givens crlf))
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    (bind ?*nb-csp-variables-solved* 0)
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
        (printout t
            "computer = " ?*Computer-description* crlf
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts = " ?*nb-facts* crlf)
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
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
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
        (printout t "#" ?i crlf)
        (bind ?*has-exotic-pattern* FALSE)
        (bind ?*has-belt* FALSE)
        (bind ?*has-J-exocet* FALSE)
        (bind ?*has-oddagon* FALSE)
        (bind ?*has-tridagon* FALSE)

        (solve-grid-from-text-file "file-symb" ?i)
        (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
        (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
        (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
        (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
        (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
		(bind ?i (+ ?i 1))
	)
	(close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
	(bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
	(printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
	(printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
	(printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)


(deffunction solve-n-grids-after-first-p-from-text-file-excluding (?file-name ?p ?n $?l-out)
	(if ?*print-actions* then (print-banner))
	(bind ?*add-instance-to-solved-list* TRUE)
	(bind ?*solved-list* (create$))
	(bind ?*not-solved-list* (create$))
	(bind ?*no-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
    (bind ?*special-list* (create$))
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
		(if (member$ ?i ?l-out)
			then (readline "file-symb")
				 ;(printout t "#" ?i " in already solved lists" crlf)
				 (printout t "#" ?i " " )
			else
                (printout t "#" ?i crlf)
                (bind ?*has-exotic-pattern* FALSE)
                (bind ?*has-belt* FALSE)
                (bind ?*has-J-exocet* FALSE)
                (bind ?*has-oddagon* FALSE)
                (bind ?*has-tridagon* FALSE)

                (solve-grid-from-text-file "file-symb" ?i)
                (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
                (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
                (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
                (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
                (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
		)
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
		(bind ?i (+ ?i 1))
	)
	(close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
	(bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)



(deffunction solve-n-grids-after-first-p-from-text-file-restricted-to-and-excluding (?file-name ?p ?n ?l-in $?l-out)
	(if ?*print-actions* then (print-banner))
	(bind ?*add-instance-to-solved-list* TRUE)
	(bind ?*solved-list* (create$))
	(bind ?*not-solved-list* (create$))
	(bind ?*no-sol-list* (create$))
	(bind ?*multi-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
    (bind ?*special-list* (create$))
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
		(if (not (member$ ?i ?l-in))
			then (readline "file-symb")
				 ; (printout t ?i " not in selected list" crlf)
		    else (if (member$ ?i ?l-out)
                    then (readline "file-symb")
                        ; (printout t ?i " in already solved lists" crlf)
                    else
                        (printout t "#" ?i crlf)
                        (bind ?*has-exotic-pattern* FALSE)
                        (bind ?*has-belt* FALSE)
                        (bind ?*has-J-exocet* FALSE)
                        (bind ?*has-oddagon* FALSE)
                        (bind ?*has-tridagon* FALSE)

                        (solve-grid-from-text-file "file-symb" ?i)
                        (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
                        (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
                        (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
                        (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
                        (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
				)
		)
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
		(bind ?i (+ ?i 1))
	)
	(close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
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
;;; same functions when the solutions are already known
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction solve-grid-from-text-file-knowing-solutions (?file-symb ?solns-file ?i)
    (reset) (reset)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; puzzle entries are taken into account here:
    (init-grid-from-text-file ?file-symb)
    (assert (context (name 0)))
    (assert (grid ?i))
    ;;; solution entries are taken into account here:
    (assert (deactivate 0 t-whip))
    (bind ?sol-string (readline ?solns-file))
    (bind ?*known-to-be-in-solution* (sol-string-to-list ?sol-string))

    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    (bind ?n (run)) ;;; the grid is solved here
    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
    (bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
    (bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t
            "computer = " ?*Computer-description* crlf
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts = " ?*nb-facts* crlf)
        ;(printout t "nb rules " ?nb-rules crlf)
        ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (printout t crlf)
    )
    (if ?*print-actions* then
        (print-banner)
        (printout t crlf)
    )
)


(deffunction solve-n-grids-after-first-p-from-text-file-knowing-solutions (?file-name ?solns-file ?p ?n)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*multi-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
    (bind ?*special-list1* (create$))
    (bind ?*special-list2* (create$))
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (open ?file-name "file-symb" "r")
    (open ?solns-file "solns-file" "r")
    (bind ?i 1)
    (while (<= ?i ?p) (readline "file-symb") (readline "solns-file") (bind ?i (+ ?i 1)))
    (bind ?i (+ ?p 1))
    (while (<= ?i (+ ?p ?n))
        (printout t "#" ?i crlf)
        (bind ?*has-exotic-pattern* FALSE)
        (bind ?*has-belt* FALSE)
        (bind ?*has-J-exocet* FALSE)
        (bind ?*has-oddagon* FALSE)
        (bind ?*has-tridagon* FALSE)

        (solve-grid-from-text-file-knowing-solutions "file-symb" "solns-file" ?i)
        (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
        (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
        (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
        (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
        (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "solns-file")
    (close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)


(deffunction solve-n-grids-after-first-p-from-text-file-knowing-solutions-excluding (?file-name ?solns-file ?p ?n $?l-out)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
    (bind ?*special-list* (create$))
    (bind ?*special-list1* (create$))
    (bind ?*special-list2* (create$))
    (bind ?*total-time* 0)
    (bind ?*max-time* 0)
    (bind ?*total-outer-time* (time))
    (open ?file-name "file-symb" "r")
    (open solns-file "solns-file" "w")
    (bind ?i 1)
    (while (<= ?i ?p) (readline "file-symb") (readline "solns-file") (bind ?i (+ ?i 1)))
    (bind ?i (+ ?p 1))
    (while (<= ?i (+ ?p ?n))
        (if (member$ ?i ?l-out)
            then (readline "file-symb")
                 ;(printout t "#" ?i " in already solved lists" crlf)
                 (printout t "#" ?i " " )
            else
                (printout t "#" ?i crlf)
                (bind ?*has-exotic-pattern* FALSE)
                (bind ?*has-belt* FALSE)
                (bind ?*has-J-exocet* FALSE)
                (bind ?*has-oddagon* FALSE)
                (bind ?*has-tridagon* FALSE)

                (solve-grid-from-text-file-knowing-solutions "file-symb" "solns-file" ?i)
                (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
                (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
                (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
                (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
                (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
        )
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "solns-file")
    (close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for displaying a Sudoku puzzle from a text file
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



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for solving a Sudoku puzzle written as an sdk file
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction read-grid-from-sdk-file (?sdk-file-name)
	(open ?sdk-file-name "file-symb" "r")
	(bind ?str "")
	(bind ?new-line "")
	(bind ?i 1)
	(while (<= ?i ?*grid-size*)
		(bind ?new-line (readline "file-symb"))
		(printout t ?new-line crlf)
		(bind ?str (str-cat ?str ?new-line))
		(bind ?i (+ ?i 1))
	)
	(close "file-symb")
;	(printout t ?str crlf)
	?str
)


(deffunction init-grid-from-sdk-file (?sdk-file-name)
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
	;;; read line containing the grid entries
	(bind ?givens (read-grid-from-sdk-file ?sdk-file-name))
	;;; This function could be simplified (and initialization time shortened)
	;;; by combining the following two calls into a single function,
	;;; but, for easier navigation in the facts base, I prefer asserting all the c-values first and then all the candidates.
	;;; Assert the values and the associated c-values for cells with given entries
	(init-values-from-string ?givens)
	;;; Initialize candidates for cells with no entry
	(init-candidates-from-string ?givens)
)



(deffunction solve-sdk-grid (?sdk-file-name)
	(if ?*print-actions* then (print-banner))
	(reset) (reset)
	(bind ?time0 (time))
    ;;; puzzle entries are taken into account here
	(init-grid-from-sdk-file ?sdk-file-name)
    (assert (context (name 0)))
	(assert (grid ?sdk-file-name))
	(bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
	(bind ?n (run)) ;;; the grid is solved here
	(bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
	(bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
	(bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t
            "computer = " ?*Computer-description* crlf
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts = " ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
		(printout t crlf)
	)
    (if ?*print-actions* then
		(printout t crlf)
        (print-banner)
		(printout t crlf)
	)
)



(deffunction solve-sdk-puzzle (?sdk-file-name)
    (solve-sdk-grid ?sdk-file-name)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for dealing with titled files of Sudoku puzzles
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Note that, for simplicity, gsf's original file is first transformed by adding a space after each comma.


(deffunction display-nth-effective-line-from-titled-text-file (?file-name ?nb)
	(display-nth-line-from-text-file ?file-name (+ ?nb 1))
)


(deffunction extract-puzzle-from-titled-text-file (?file-symb)
	(bind ?Q1 (read ?file-symb) )
	(bind ?SER (read ?file-symb))
	(bind ?XR (read ?file-symb))
	(if ?*print-actions* then (printout t "Q1 = " ?Q1 ", SER = " ?SER ", XR = " ?XR crlf))
	(bind ?givens (read ?file-symb))
	(read ?file-symb) (read ?file-symb) (read ?file-symb) (read ?file-symb) (read ?file-symb)
	(sub-string 1 81 ?givens)
)


(deffunction init-grid-from-titled-text-file (?file-symb)
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
	;;; read line containing the grid entries
	(bind ?givens (extract-puzzle-from-titled-text-file ?file-symb))
	(if ?*print-actions* then (printout t ?givens crlf))
	;;; This function could be simplified (and initialization time shortened)
	;;; by combining the following two calls into a single function,
	;;; but, for easier navigation in the facts base, I prefer asserting all the c-values first and then all the candidates.
	;;; Assert the values and the associated c-values for cells with given entries
	(init-values-from-string ?givens)
	;;; Initialize candidates for cells with no entry
	(init-candidates-from-string ?givens)
)


(deffunction solve-grid-from-titled-text-file (?file-symb ?i)
	(reset) (reset)  
	(if ?*print-actions* then (print-banner))
	(bind ?time0 (time))
	;;; puzzle entries are taken into account here
    (init-grid-from-titled-text-file ?file-symb)
    (assert (context (name 0)))
	(assert (grid ?i))
	(bind ?time0 (time))
	(bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
	;;; the grid is solved here
    (bind ?n (run))
	(bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
	(bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
	(bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t
            "computer = " ?*Computer-description* crlf
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts = " ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
		(printout t crlf)
	)
    (if ?*print-actions* then
		(printout t crlf)
        (print-banner)
		(printout t crlf)
	)
)


(deffunction solve-nth-grid-from-titled-text-file (?file-name ?nb)
	(if ?*print-actions* then (print-banner))
	(bind ?*total-time* 0)
	(bind ?*max-time* 0)
	(open ?file-name "file-symb" "r")
	(readline "file-symb") ; read the first non-puzzle line
	(bind ?i 1)
	(while (< ?i ?nb) (readline "file-symb") (bind ?i (+ ?i 1)))
	(solve-grid-from-titled-text-file "file-symb" ?nb) ; puzzle on line ?nb + 1, i.e. puzzle ?nb
	(close "file-symb")
    (if ?*print-actions* then
		(printout t crlf)
        (print-banner)
		(printout t crlf)
	)
)



(deffunction solve-n-grids-after-first-p-from-titled-text-file (?file-name ?p ?n)
	(if ?*print-actions* then (print-banner))
	(bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*multi-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
    (bind ?*special-list1* (create$))
    (bind ?*special-list2* (create$))
	(bind ?*total-time* 0)
	(bind ?*max-time* 0)
	(bind ?*total-outer-time* (time))
	(open ?file-name "file-symb" "r")
	(readline "file-symb") ; read the first non-puzzle line
	(bind ?i 1)
	(while (<= ?i ?p) (readline "file-symb") (bind ?i (+ ?i 1)))
	(bind ?i (+ ?p 1))
	(while (<= ?i (+ ?p ?n))
        (printout t "#" ?i crlf)
        (bind ?*has-exotic-pattern* FALSE)
        (bind ?*has-belt* FALSE)
        (bind ?*has-J-exocet* FALSE)
        (bind ?*has-oddagon* FALSE)
        (bind ?*has-tridagon* FALSE)
        
        (solve-grid-from-titled-text-file "file-symb" ?i)
        (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
        (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
        (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
        (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
        (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
	)
	(close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
	(bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
    (if ?*print-actions* then
		(printout t crlf)
        (print-banner)
		(printout t crlf)
	)
)



(deffunction solve-n-titled-grids-after-first-p-excluding (?file-name ?p ?n ?l-out)
	(if ?*print-actions* then (print-banner))
	(bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*multi-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
    (bind ?*special-list1* (create$))
    (bind ?*special-list2* (create$))
	(bind ?*total-time* 0)
	(bind ?*max-time* 0)
	(bind ?*total-outer-time* (time))
	(open ?file-name "file-symb" "r")
	(readline "file-symb") ; read the first non-puzzle line
	(bind ?i 1)
	(while (<= ?i ?p) (readline "file-symb") (bind ?i (+ ?i 1)))
	(bind ?i (+ ?p 1))
	(while (<= ?i (+ ?p ?n))
        (printout t "#" ?i crlf)
		(if (member$ ?i ?l-out)
			then (readline "file-symb")
				 ;(printout t ?i " in already solved lists" crlf)
				 (printout t ?i " " )
			else
                (printout t "#" ?i crlf)
                (bind ?*has-exotic-pattern* FALSE)
                (bind ?*has-belt* FALSE)
                (bind ?*has-J-exocet* FALSE)
                (bind ?*has-oddagon* FALSE)
                (bind ?*has-tridagon* FALSE)

                (solve-grid-from-titled-text-file "file-symb" ?i)
                (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
                (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
                (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
                (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
                (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
		)
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
		(bind ?i (+ ?i 1))
	)
	(close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
	(bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
    (if ?*print-actions* then
		(printout t crlf)
        (print-banner)
		(printout t crlf)
	)
)




(deffunction extract-lines-from-titled-text-file (?file-in ?n ?list ?file-out)
	"make a new titled text file with members of ?list"
	(open ?file-in "file-in" "r")
	(open ?file-out "file-out" "w")
	(bind ?line (readline "file-in")) ; read the first non-puzzle line
	(printout "file-out" ?line crlf)
	(bind ?i 1)
	(while (<= ?i ?n)
		(bind ?line (readline "file-in"))
		(if (member$ ?i ?list) then (printout "file-out" ?line crlf))
		(bind ?i (+ ?i 1))
	)
	(close "file-in")
	(close "file-out")
)



(deffunction extract-grids-belonging-to-list-from-titled-text-file (?file-in ?n ?list ?file-out) ;;; bugggy ?????
	"this is used to produce sequences of puzzles in standard text format"
	(open ?file-in "file-in" "r")
	(open ?file-out "file-out" "w")
	(readline "file-in") ; read the first non-puzzle line
	(bind ?i 1)
	(while (<= ?i ?n)
		(if (not (member$ ?i ?list))
			then (readline "file-in")
			else
				(bind ?Q1 (read "file-in"))
				(bind ?SER (read "file-in"))
				(bind ?XR (read "file-in"))
				(bind ?givens (read "file-in"))
				(bind ?givens (sub-string 1 81 ?givens))
				(printout "file-out" ?givens crlf)
				(read "file-in") (read "file-in") (read "file-in") (read "file-in") (read "file-in") 
		)
		
		(bind ?i (+ ?i 1))
	)
	(close "file-in")
	(close "file-out")
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2) Sudoku puzzles given in list format (one per line)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-grid-from-list-file (?file-symb)
    ;;; read line containing the grid entries
    (open ?file-symb "file-symb" "r")
    (bind ?lgrid (explode$ (readline "file-symb")))
    (close "file-symb")
    (if ?*print-actions* then (printout t ?lgrid crlf))
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    ;;; This function could be simplified (and initialization time shortened)
    ;;; by combining the following two calls into a single function,
    ;;; but, for easier navigation in the facts base, I prefer asserting all c-values first and then all the candidates.
    ;;; Assert the values and the associated c-values for cells with given entries
    (init-values-from-list ?lgrid)
    ;;; Initialize candidates for cells with no entry
    (init-candidates-from-list ?lgrid)
)



(deffunction solve-grid-from-list-file (?file-symb)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; puzzle entries are taken into account here
    (init-grid-from-list-file ?file-symb)
    (assert (context (name 0)))
    (assert (grid 0))
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    ;;; the grid is solved here
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
    (bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
    (bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t
            "computer = " ?*Computer-description* crlf
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts = " ?*nb-facts* crlf)
        ;(printout t "nb rules " ?nb-rules crlf)
        ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (printout t crlf)
    )
    (if ?*print-actions* then
        (print-banner)
        (printout t crlf)
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3) Sukaku puzzles given in string format (one per line)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction init-sukaku-from-string-file (?file-symb)
    ;;; read line containing the sukaku data in list form
    (bind ?lgrid (readline "file-symb"))
    (if ?*print-actions* then (printout t ?lgrid crlf))
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    (bind ?*nb-csp-variables-solved* 0)
    ;;; initialize candidates as in the data
    (init-sukaku-string ?lgrid)
)


(deffunction solve-sukaku-from-string-file (?file-symb ?i)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; puzzle entries are taken into account here
    (init-sukaku-from-string-file ?file-symb)
    (assert (context (name 0)))
    (assert (grid ?i))
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    ;;; the grid is solved here
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
    (bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
    (bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t
            "computer = " ?*Computer-description* crlf
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts = " ?*nb-facts* crlf)
        ;(printout t "nb rules " ?nb-rules crlf)
        ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (printout t crlf)
    )
    (if ?*print-actions* then
        (print-banner)
        (printout t crlf)
    )
)



(deffunction solve-n-sukakus-after-first-p-from-string-file (?file-name ?p ?n)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*multi-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
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
        (printout t "#" ?i crlf)
        (bind ?*has-exotic-pattern* FALSE)
        (bind ?*has-belt* FALSE)
        (bind ?*has-J-exocet* FALSE)
        (bind ?*has-oddagon* FALSE)
        (bind ?*has-tridagon* FALSE)

        (solve-sukaku-from-string-file "file-symb" ?i)
        (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
        (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
        (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
        (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
        (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)


(deffunction solve-n-sukakus-after-first-p-from-string-file-excluding (?file-name ?p ?n ?l-out)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
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
        (if (member$ ?i ?l-out)
            then (readline "file-symb")
                 ;(printout t "#" ?i " in already solved lists" crlf)
                 (printout t "#" ?i " " )
            else
                (printout t "#" ?i crlf)
                (bind ?*has-exotic-pattern* FALSE)
                (bind ?*has-belt* FALSE)
                (bind ?*has-J-exocet* FALSE)
                (bind ?*has-oddagon* FALSE)
                (bind ?*has-tridagon* FALSE)

                (solve-sukaku-from-string-file "file-symb" ?i)
                (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
                (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
                (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
                (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
                (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
        )
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)



(deffunction solve-n-sukakus-after-first-p-from-string-file-restricted-to-and-excluding (?file-name ?p ?n ?l-in ?l-out)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*multi-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
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
        (if (not (member$ ?i ?l-in))
            then (readline "file-symb")
                 ; (printout t ?i " not in selected list" crlf)
            else (if (member$ ?i ?l-out)
                    then (readline "file-symb")
                        ; (printout t ?i " in already solved lists" crlf)
                    else
                        (printout t "#" ?i crlf)
                        (bind ?*has-exotic-pattern* FALSE)
                        (bind ?*has-belt* FALSE)
                        (bind ?*has-J-exocet* FALSE)
                        (bind ?*has-oddagon* FALSE)
                        (bind ?*has-tridagon* FALSE)

                        (solve-sukaku-from-string-file "file-symb" ?i)
                        (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
                        (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
                        (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
                        (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
                        (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
                )
        )
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 4) Sukaku puzzles given in list format (one per line)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction init-sukaku-from-list-file (?file-symb)
    ;;; read line containing the sukaku data in list form
    (bind ?lgrid (explode$ (readline "file-symb")))
    (if ?*print-actions* then (printout t ?lgrid crlf))
    ;;; fixed facts and structures common to all the instances are defined here
    (init-general-application-structures)
    (bind ?*nb-csp-variables-solved* 0)
    ;;; initialize candidates as in the data
    (init-sukaku-list ?lgrid)
)


(deffunction solve-sukaku-from-list-file (?file-symb ?i)
    (if ?*print-actions* then (print-banner))
    (bind ?time0 (time))
    ;;; puzzle entries are taken into account here
    (init-sukaku-from-list-file ?file-symb)
    (assert (context (name 0)))
    (assert (grid ?i))
    (bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    ;;; the grid is solved here
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (bind ?*total-instance-time* (- ?time2 ?time0))
    (bind ?*total-time* (+ ?*total-time* ?*total-instance-time*))
    (bind ?*max-time* (max ?*max-time* ?*total-instance-time*))
    (if ?*print-time* then
        (printout t
            "computer = " ?*Computer-description* crlf
            "init-time = " (seconds-to-hours ?*init-instance-time*)
            ", solve-time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts = " ?*nb-facts* crlf)
        ;(printout t "nb rules " ?nb-rules crlf)
        ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (printout t crlf)
    )
    (if ?*print-actions* then
        (print-banner)
        (printout t crlf)
    )
)



(deffunction solve-n-sukakus-after-first-p-from-list-file (?file-name ?p ?n)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*multi-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
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
        (printout t "#" ?i crlf)
        (bind ?*has-exotic-pattern* FALSE)
        (bind ?*has-belt* FALSE)
        (bind ?*has-J-exocet* FALSE)
        (bind ?*has-oddagon* FALSE)
        (bind ?*has-tridagon* FALSE)

        (solve-sukaku-from-list-file "file-symb" ?i)
        (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
        (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
        (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
        (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
        (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)


(deffunction solve-n-sukakus-after-first-p-from-list-file-excluding (?file-name ?p ?n ?l-out)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
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
        (if (member$ ?i ?l-out)
            then (readline "file-symb")
                 ;(printout t "#" ?i " in already solved lists" crlf)
                 (printout t "#" ?i " " )
            else
                (printout t "#" ?i crlf)
                (bind ?*has-exotic-pattern* FALSE)
                (bind ?*has-belt* FALSE)
                (bind ?*has-J-exocet* FALSE)
                (bind ?*has-oddagon* FALSE)
                (bind ?*has-tridagon* FALSE)

                (solve-sukaku-from-list-file "file-symb" ?i)
                (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
                (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
                (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
                (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
                (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
        )
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)



(deffunction solve-n-sukakus-after-first-p-from-list-file-restricted-to-and-excluding (?file-name ?p ?n ?l-in ?l-out)
    (if ?*print-actions* then (print-banner))
    (bind ?*add-instance-to-solved-list* TRUE)
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*multi-sol-list* (create$))
    (bind ?*exotic-list* (create$))
    (bind ?*belt-list* (create$))
    (bind ?*J-exocet-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*tridagon-list* (create$))
    (bind ?*special-list* (create$))
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
        (if (not (member$ ?i ?l-in))
            then (readline "file-symb")
                 ; (printout t ?i " not in selected list" crlf)
            else (if (member$ ?i ?l-out)
                    then (readline "file-symb")
                        ; (printout t ?i " in already solved lists" crlf)
                    else
                        (printout t "#" ?i crlf)
                        (bind ?*has-exotic-pattern* FALSE)
                        (bind ?*has-belt* FALSE)
                        (bind ?*has-J-exocet* FALSE)
                        (bind ?*has-oddagon* FALSE)
                        (bind ?*has-tridagon* FALSE)

                        (solve-sukaku-from-list-file "file-symb" ?i)
                        (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* (create$ ?i))))
                        (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* (create$ ?i))))
                        (if ?*has-belt* then (bind ?*belt-list* (create$ ?*belt-list* (create$ ?i))))
                        (if ?*has-J-exocet* then (bind ?*J-exocet-list* (create$ ?*J-exocet-list* (create$ ?i))))
                        (if ?*has-tridagon* then (bind ?*tridagon-list* (create$ ?*tridagon-list* (create$ ?i))))
                )
        )
        (if (eq (mod ?i 100) 0) then (release-mem)) ; to deal with memory overload problems
        (bind ?i (+ ?i 1))
    )
    (close "file-symb")
    ;;; cancel the simulated eliminations:
    (bind ?*simulated-eliminations* (create$))
    (bind ?*total-outer-time* (- (time) ?*total-outer-time*))
    (printout t ";;; computer = " ?*Computer-description* crlf)
    (printout t ";;; TOTAL OUTER TIME = " (seconds-to-hours ?*total-outer-time*) crlf)
    (printout t ";;; TOTAL RESOLUTION TIME = " (seconds-to-hours ?*total-time*) crlf)
    (printout t ";;; MAX TIME = " (seconds-to-hours ?*max-time*) crlf)
)


