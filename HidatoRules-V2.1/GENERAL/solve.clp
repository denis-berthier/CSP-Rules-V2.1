
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / HIDATORULES
;;;                              SOLVE
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
;;;
;;; functions for initializing an instance 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; BEWARE: ALL THIS IS HIGHLY NON-OPTIMISED
;;; MORE LABELS THAN NECESSARY ARE CREATED 


;;; max-number and grid-size can be redefined by each instance
;;; global variables must therefore be redefined by each instance

(deffunction redefine-globals (?n ?N)
    (if (> ?n 30) then (printout t "grids of size ≥ 30 are not managed by this version of HidatoRules" crlf) (halt))
    (bind ?*max-number* ?N)
    (bind ?*numbers* (subseq$ ?*potential-numbers* 1 ?N))
    (bind ?*numerals* (subseq$ ?*potential-numerals* 1 ?N))

    (bind ?*grid-size* ?n)
    (bind ?*rows* (subseq$ ?*potential-rows* 1 ?n))
    (bind ?*columns* (subseq$ ?*potential-columns* 1 ?n))

    (bind ?*internal-factor* (if (< ?n 10) then 10 else 100))
    (bind ?*internal-factor-1* ?*internal-factor*)
    (bind ?*internal-factor-2* (* ?*internal-factor-1* ?*internal-factor*))
    (bind ?*internal-factor-3* (* ?*internal-factor-2* ?*internal-factor*))
    (bind ?*internal-factor-4* (* ?*internal-factor-3* ?*internal-factor*))
    (bind ?*internal-factor-5* (* ?*internal-factor-4* ?*internal-factor*))
    (bind ?*internal-factor-6* (* ?*internal-factor-5* ?*internal-factor*))
)


	
(deffunction init-variables-ranges ()
	;;; this function creates facts depending only on general grid structure
	;;; create facts for numbers, rows and columns
	(foreach ?nb ?*numbers* (assert (number ?nb)))
	(foreach ?row ?*rows* (assert (row ?row)))
    (foreach ?col ?*columns* (assert (column ?col)))
)



(deffunction parse-data-from-list (?n ?N $?givens)
	(foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?Xrc-csp-var (row-col-to-Xrc-csp-var ?row ?col))
            (bind ?data-index (+ (* ?n (- ?row 1)) ?col))
            (bind ?data (nth$ ?data-index $?givens))
            (if (and (neq ?data .) (neq ?data B) (not (member$ ?data ?*numbers*))) then
                (printout t "ERROR IN DATA FOR CELL r" ?row "c" ?col crlf) (return)
            )
            
            (if (eq ?data B) then (bind ?*black-cells* (create$ ?*black-cells* Xrc-csp-var)))
            
            (if (eq ?data .) then 
                (bind ?*undecided-cells* (create$ ?*undecided-cells* ?Xrc-csp-var))
                (assert (data (value ?data) (row ?row) (column ?col)))
            )

            ;;; givens (do not effectively create csp-variables)
            (if (member$ ?data ?*numbers*) then
                (bind ?*decided-numbers* (create$ ?*decided-numbers* ?data))
                (bind ?lab (nrc-to-label ?data ?row ?col))
                ;;; assert the decided value
                (assert (candidate (context 0) (status c-value) (label ?lab) (number ?data) (row ?row) (column ?col)))
            )
        )
    )
    (bind ?*undecided-numbers* (complement$ ?*decided-numbers* ?*numbers*))
    (printout t "undecided numbers: " ?*undecided-numbers* crlf)
)



(deffunction excluded-by-the-givens (?nb ?row ?col ?n ?N $?givens)
	(foreach ?rowx ?*rows*
        (foreach ?colx ?*columns*
            (bind ?data-index (+ (* ?n (- ?rowx 1)) ?colx))
            (bind ?nbx (nth$ ?data-index $?givens))
            (if (and (member$ ?nbx ?*numbers*) (excluded-by-given ?nb ?row ?col ?nbx ?rowx ?colx)) then (return TRUE))
        )
    )
    FALSE
)



(deffunction init-csp-variables-and-candidates (?n ?N $?givens)
    (foreach ?nb ?*undecided-numbers*
        (bind ?Xn-csp-var (number-to-Xn-csp-var ?nb))
        (assert (csp-variable (name ?Xn-csp-var) (type n)))
        (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))
        (foreach ?row ?*rows*
            (foreach ?col ?*columns*
                (bind ?Xrc-csp-var (row-col-to-Xrc-csp-var ?row ?col))
                (if (member$ ?Xrc-csp-var ?*undecided-cells*) then
                    (bind ?lab (nrc-to-label ?nb ?row ?col))
                    (assert (is-csp-variable-for-label (csp-var ?Xn-csp-var) (label ?lab)))
                )
            )
        )
    )
	(foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?Xrc-csp-var (row-col-to-Xrc-csp-var ?row ?col))
            (if (member$ ?Xrc-csp-var ?*undecided-cells*) then
                (assert (csp-variable (name ?Xrc-csp-var) (type rc)))
                (bind ?*nb-csp-variables* (+ ?*nb-csp-variables* 1))
                (foreach ?nb ?*undecided-numbers*
                    (if (not (excluded-by-the-givens ?nb ?row ?col ?n ?N $?givens)) then
                        (bind ?lab (nrc-to-label ?nb ?row ?col))
                        (assert (is-csp-variable-for-label (csp-var ?Xrc-csp-var) (label ?lab)))
                    
                        ;;; assert the candidate
                        (assert (candidate (context 0) (status cand) (label ?lab) (number ?nb) (row ?row) (column ?col)))
                        (bind ?*nb-candidates* (+ ?*nb-candidates* 1))
                    )
                )
            )
        )
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for solving a puzzle given as a list
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction init-instance (?game ?constraint-model ?n ?N $?givens)
    (reset) (reset)
    (if (and (neq ?game Numbrix) (neq ?game Hidato)) then
        (printout t "This program can only deal with Numbrix or Hidato" crlf) (return)
    )
    (if (and (neq ?constraint-model topological) (neq ?constraint-model geometric)) then
        (printout t "This program can only deal with topological or geometric constraint models" crlf) (return)
    )
    (bind ?*game* ?game)
    (bind ?*constraint-model*  ?constraint-model)

    (init-universal-globals)
    (redefine-globals ?n ?N)
    (init-variables-ranges)
    (bind ?*decided-numbers* (create$))
    (bind ?*undecided-numbers* (create$))
    (bind ?*undecided-cells* (create$))
    (bind ?*black-cells* (create$))

    (parse-data-from-list ?n ?N $?givens)
    (init-csp-variables-and-candidates ?n ?N $?givens)
)




(deffunction solve (?game ?constraint-model ?n ?N $?givens)
	(if ?*print-actions* then 
        (print-banner)
		(printout t "*****  " ?game "-Rules " ?constraint-model "-model   *****" crlf)
	)
    
	(bind ?time0 (time))
    ;;; puzzle entries are taken into account here
	(init-instance ?game ?constraint-model ?n ?N $?givens)
    (assert (context (name 0)))
	(assert (grid 0))
	(bind ?time1 (time))
    (bind ?*init-instance-time* (- ?time1 ?time0))
    
    ;;; the puzzle is solved here
    (if ?*print-actions* then (printout t "start solution " (time) crlf))
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
            ", solve time = " (seconds-to-hours ?*solve-instance-time*)
            ", total-time = " (seconds-to-hours ?*total-instance-time*)  crlf
        )
        (printout t "nb-facts=" ?*nb-facts* crlf)
		;(printout t "nb rules " ?nb-rules crlf)
		;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
        (print-banner)
		(printout t crlf)
	)
)



