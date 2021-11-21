
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              MANAGE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - May 2021               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT CONTRADICTION AND HALT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Detection of a contradiction.

(defrule no-solution-at-all
	(declare (salience ?*contradiction-salience*))
	(context (name 0))
    (grid ?g)
	?pl <- (technique ?cont&0 BRT)
	;;; if there is csp-variable with no c-value and no candidate
    (csp-variable (name ?csp-var) (type ?type&H|V|N|I))
    (forall (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab))
        (not (candidate (context ?cont) (label ?lab)))
    )
=>
	(printout t crlf "GRID " ?g " HAS NO SOLUTION : NO CANDIDATE FOR CSP-VARIABLE " (type-of-csp-var ?csp-var) (row-name (row-of-csp-var ?csp-var)) (column-name (column-of-csp-var ?csp-var)) crlf)
	(printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
    (printout t crlf "BEWARE: before concluding that the grid has indeed no solution, consider the following." crlf)
    (printout t "For efficiency reasons, the a priori upper bound on the lengths of the loops is 300, " crlf)
    (printout t "independently of the real upper bound for the given puzzle." crlf)
    (printout t "Check the value of the largest loop found in the above resolution path, say L." crlf)
    (printout t "This loop is probably the solution." crlf)
    (printout t "Set the value of ?*loops-max-length* (in the configuration file) to L-1 and try again." crlf)
	(halt)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; UTILITIES FOR PRINTING THE RESOLUTION STATE AND THE SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; PRINT CURRENT RESOLUTION STATE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; print the IO representation

(deffunction print-nth-IO-row (?row)
    (bind ?col 1)
    (while (<= ?col ?*nb-columns*)
        ;;; compute the number of candidates
        (bind ?nb-IO 0)
        (do-for-all-facts
            ((?cand candidate))
            (and (eq ?cand:context 0) (eq ?cand:type I) (eq ?cand:status c-value) (eq ?cand:row ?row) (eq ?cand:column ?col))
            (bind ?nb-IO (+ ?nb-IO 1))
        )
        (if (neq ?nb-IO 1) then (printout t "-") else
            (do-for-all-facts
                ((?cand candidate))
                (and (eq ?cand:context 0) (eq ?cand:type I) (eq ?cand:status c-value) (eq ?cand:row ?row) (eq ?cand:column ?col))
                (bind ?val ?cand:value)
                (if (eq ?val 2) then (printout t "-")
                    else (if (eq ?val 0)
                            then (printout t "O")
                            else (printout t "X")
                        )
                )
            )
        )
        (bind ?col (+ ?col 1))
    )
    (printout t crlf)
)

(deffunction print-RS-IO ()
    (bind ?row 1)
    (while (<= ?row ?*nb-rows*)
        (print-nth-IO-row ?row)
        (bind ?row (+ ?row 1))
    )
    (printout t crlf)
)


;;; print the HV representation

(deffunction print-nth-H-row (?n-hrow)
    (printout t ?*point-sign*)
    (bind ?col 1)
    (while (<= ?col ?*nb-columns*)
        ;;; count the number of decided H candidates at this place
        (bind ?nb-vals 0)
        (do-for-all-facts
            ((?cand candidate))
            (and (eq ?cand:context 0) (eq ?cand:type H) (eq ?cand:status c-value) (eq ?cand:row ?n-hrow) (eq ?cand:column ?col))
            (bind ?nb-vals (+ ?nb-vals 1))
        )
        (if (eq ?nb-vals 0) then (printout t ?*UNDECIDED-horizontal-sign*) else
            (do-for-all-facts
                ((?cand candidate))
                (and (eq ?cand:context 0) (eq ?cand:type H) (eq ?cand:status c-value) (eq ?cand:row ?n-hrow) (eq ?cand:column ?col))
                (bind ?val ?cand:value)
                (if (eq ?val 0) then (printout t ?*FALSE-horizontal-sign*))
                (if (eq ?val 1) then (printout t ?*TRUE-horizontal-sign*))
            )
        )
        (printout t ?*point-sign*)
        (bind ?col (+ ?col 1))
    )
    (printout t crlf)
)


(deffunction print-nth-V-row (?n-vrow)
    (bind ?col 1)
    (while (<= ?col (+ ?*nb-columns* 1))
        ;;; count the number of decided V candidates at this place
        (bind ?nb-vals 0)
        (do-for-all-facts
            ((?cand candidate))
            (and (eq ?cand:context 0) (eq ?cand:type V) (eq ?cand:status c-value) (eq ?cand:row ?n-vrow) (eq ?cand:column ?col))
            (bind ?nb-vals (+ ?nb-vals 1))
        )
        (if (eq ?nb-vals 0) then (printout t ?*UNDECIDED-vertical-sign*) else
            (do-for-all-facts
                ((?cand candidate))
                (and (eq ?cand:context 0) (eq ?cand:type V) (eq ?cand:status c-value) (eq ?cand:row ?n-vrow) (eq ?cand:column ?col))
                (bind ?val ?cand:value)
                (if (eq ?val 0) then (printout t ?*FALSE-vertical-sign*))
                (if (eq ?val 1) then (printout t ?*TRUE-vertical-sign*))
            )
        )
        ;;; print the decided N values
        (if (<= ?col ?*nb-columns*) then
            (bind ?nb-vals 0)
            (do-for-all-facts
                ((?cand candidate))
                (and (eq ?cand:context 0) (eq ?cand:type N) (eq ?cand:status c-value) (eq ?cand:row ?n-vrow) (eq ?cand:column ?col))
                (bind ?nb-vals (+ ?nb-vals 1))
            )
            (if (eq ?nb-vals 0) then (printout t ?*no-given-sign*) else
                (do-for-all-facts
                    ((?cand candidate))
                    (and (eq ?cand:context 0) (eq ?cand:type N) (eq ?cand:status c-value) (eq ?cand:row ?n-vrow) (eq ?cand:column ?col))
                    (bind ?val ?cand:value)
                    (printout t ?*pre-given-sign* ?val ?*post-given-sign*)
                )
            )
        )
        (bind ?col (+ ?col 1))
    )
    (printout t crlf)
)


(deffunction print-RS-HV ()
    (bind ?row 1)
    (while (<= ?row (+ ?*nb-rows* 1))
        (print-nth-H-row ?row)
        (if (<= ?row ?*nb-rows*) then
            (print-nth-V-row ?row)
        )
        (bind ?row (+ ?row 1))
    )
    (printout t crlf)
)


;;; print both representations

(deffunction print-current-resolution-state ()
    (printout t crlf)
    (if ?*print-IO-solution* then (print-RS-IO))
    (printout t crlf)
    (if ?*print-HV-solution* then (print-RS-HV))
)

(deffunction print-RS ()
    (print-current-resolution-state)
)


    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; PRINT SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-solution-nth-V-row (?n-vrow)
    ;;; we shall need to print the givens for this row:
    (bind ?first-given-in-row (+ 1 (* (- ?n-vrow 1) ?*nb-columns*)))
    (bind ?last-given-in-row (* ?n-vrow ?*nb-columns*))
    (bind ?row-givens (subseq$ ?*givens* ?first-given-in-row ?last-given-in-row))
    
    (bind ?col 1)
    (while (<= ?col (+ ?*nb-columns* 1))
        ;;; count the number of decided V candidates at this place
        (bind ?nb-vals 0)
        (do-for-all-facts
            ((?cand candidate))
            (and (eq ?cand:context 0) (eq ?cand:type V) (eq ?cand:status c-value) (eq ?cand:row ?n-vrow) (eq ?cand:column ?col))
            (bind ?nb-vals (+ ?nb-vals 1))
        )
        (if (eq ?nb-vals 0) then (printout t ?*UNDECIDED-vertical-sign*) else
            (do-for-all-facts
                ((?cand candidate))
                (and (eq ?cand:context 0) (eq ?cand:type V) (eq ?cand:status c-value) (eq ?cand:row ?n-vrow) (eq ?cand:column ?col))
                (bind ?val ?cand:value)
                (if (eq ?val 0) then (printout t ?*FALSE-vertical-sign*))
                (if (eq ?val 1) then (printout t ?*TRUE-vertical-sign*))
            )
        )
        ;;; print the givens
        (if (<= ?col ?*nb-columns*) then
            (bind ?given (nth$ ?col ?row-givens))
            (if (eq ?given .)
                then (printout t ?*no-given-sign*)
                else (printout t ?*pre-given-sign* ?given ?*post-given-sign*)
            )
        )
        (bind ?col (+ ?col 1))
    )
    (printout t crlf)
)


(deffunction print-solution-HV ()
    (bind ?row 1)
    (while (<= ?row (+ ?*nb-rows* 1))
        (print-nth-H-row ?row)
        (if (<= ?row ?*nb-rows*) then
            (print-solution-nth-V-row ?row)
        )
        (bind ?row (+ ?row 1))
    )
    (printout t crlf)
)


(deffunction print-solution ()
    (printout t crlf)
    (if (and ?*Colours* ?*print-IO-solution*) then (print-RS-IO))
    (printout t crlf)
    (if ?*print-HV-solution* then (print-solution-HV))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT AND PRINT FINAL STATE IF NO SOLUTION FOUND
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule detetct-and-print-unsolved-final-state
    (declare (salience ?*print-unsolved-final-state-salience*))
    (context (name ?cont&0))
    (grid ?g)
    (technique ?cont BRT)
    (not (solution-found ?cont))
=>
    (printout t "PUZZLE " ?g " IS NOT SOLVED. " (- ?*nb-csp-variables*  ?*nb-csp-variables-solved*) " VALUES MISSING." crlf)
    (if ?*add-instance-to-solved-list* then
        (bind ?*not-solved-list* (union$ ?*not-solved-list* (create$ ?g)))
    )
    (if ?*print-final-RS* then
        (if (and ?*Colours* ?*print-IO-solution*) then (print-RS-IO))
        (if ?*print-HV-solution* then (print-RS-HV))
    )
    (bind ?*solution-found* FALSE)
    (halt)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT AND PRINT SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-solution-in-initial-context
    (declare (salience ?*solution-found-salience*))
    (logical (context (name ?cont&0)))
    (grid ?g)
    ?brt <- (technique ?cont BRT)
    ;;; the presence of H and V c-values for every cell means that a solution has been found
    (forall (csp-variable (name ?csp-var) (type ?type&H|V))
        (exists (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab))
            (candidate (context ?cont) (status c-value) (label ?lab))
        )
    )
    ;;; however, if in-out grid must also be output, we need all the I c-values
    (or
        (test (not (and ?*Colours* ?*print-IO-solution*)))
        (forall (csp-variable (name ?csp-var) (type I))
            (exists (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab))
                (candidate (context ?cont) (status c-value) (label ?lab))
            )
        )
    )
=>
    (retract ?brt)
    (printout t crlf "PUZZLE " ?g " IS SOLVED.")
    (printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    (if ?*add-instance-to-solved-list* then
        (bind ?*solved-list* (union$ ?*solved-list* (create$ ?g)))
    )
    (assert (solution-found ?cont))
)


;;; printing will work only in context 0

(defrule prepare-printing-of-solution
    (declare (salience ?*solution-found-salience*))
    ?sol <- (solution-found ?cont)
    (not (play))
    (not (technique ?cont BRT))
=>
    (bind ?*nb-facts* ?sol)
    (if (or ?*print-solution* ?*save-solutions*)
        then (assert (print-solution)) else (halt)
    )
)


(defrule print-solution
    (declare (salience ?*solution-found-salience*))
    ?sol <- (solution-found ?cont)
    (print-solution)
=>
    (if (or ?*print-solution* ?*save-solutions*) then
        (print-solution)
        (printout t "nb-facts = " ?sol crlf)
    )
    (halt)
)





