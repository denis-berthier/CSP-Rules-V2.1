
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / HIDATORULES
;;;                              MANAGE
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
;;; DETECT CONTRADICTION AND HALT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Detection of a contradiction.

;;; replace the generic version
(defrule no-solution-at-all =>)

(defrule no-solution-at-all-rc
	(declare (salience ?*contradiction-salience*))
    (context (name 0))
    (technique 0 BRT)
	;;; if there is an undecided cell with no c-value and no candidate
    (row ?row)
    (column ?col)
    (test (member$ (row-col-to-Xrc-csp-var ?row ?col) ?*undecided-cells*))
	(not (candidate (context 0) (row ?row) (column ?col)))
=>
	(printout t crlf "GRID HAS NO SOLUTION : NO CANDIDATE FOR RC CELL " (row-name ?row) (column-name ?col) crlf)
	(printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(halt)
)



(defrule no-solution-at-all-n
	(declare (salience ?*contradiction-salience*))
    (context (name 0))
	(technique 0 BRT)
	;;; if there is an undecided number with no c-value and no candidate
	(number ?nb&:(member$ ?nb ?*undecided-numbers*))
	(not (candidate (context 0) (number ?nb)))
=>
	(printout t crlf "GRID HAS NO SOLUTION : NO PLACE FOR NUMBER " (number-name ?nb) crlf)
	(printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(halt)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT AND PRINT SOLUTION 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-solution-in-initial-context
	(declare (salience ?*solution-found-salience*))
    (context (name ?cont&0))
	?pl <- (technique ?cont BRT)
	;;; the presence of a c-value for every cell means that a solution has been found
	(forall (row ?row)
        (forall (column ?col)
            (or 
                (test (not (member$ (row-col-to-Xrc-csp-var ?row ?col) ?*undecided-cells*)))
                (exists  (candidate (context ?cont) (status c-value) (row ?row) (column ?col)))
            )
		)
	)
=>
	(retract ?pl)
	(printout t "GRID SOLVED.")
	(printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(assert (solution-found ?cont))
)


(defrule record-number-of-facts
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	?sol <- (solution-found ?cont)
=>
	(bind ?*nb-facts* ?sol)
	(if (or ?*print-solution* ?*save-solutions*)
		then (assert (fill-gaps ?cont ?*grid-size*))
		else (halt)
	)
)	


(defrule complete-black-cells
	(declare (salience ?*solution-found-salience*))
    (fill-gaps ?cont ?x)
    (row ?row)
    (column ?col)
    (not (candidate (context ?cont) (status c-value) (row ?row) (column ?col)))
=>
    (assert (candidate (context ?cont) (status c-value) (label 0) (number 0) (row ?row) (column ?col)))
    ; (printout t "filling r" ?row "c" ?col crlf)
)


(defrule complete-black-cells-end
	(declare (salience ?*solution-found-salience*))
    ?fill <- (fill-gaps ?cont ?x)
    (forall (row ?row)
        (forall (column ?col)
            (exists (candidate (context ?cont) (status c-value) (row ?row) (column ?col) ))
        )
    )
=>
    (retract ?fill)
    (assert (print-solution ?cont ?x))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; UTILITIES FOR PRINTING THE SOLUTION 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; When the solution has been found, a fact (print-solution ?cont ?*grid-size*) is asserted.
;;; The following template and rules are then used for printing the solution.


(deftemplate c-row
	(slot row)
	(multislot values)
)

(deffunction print-solution-row (?output ?vals)
	(bind ?i 1)
	(while (<= ?i ?*grid-size*) 
        (bind ?v (nth$ ?i ?vals))
        (if (<= ?*max-number* 9)
            then (if (neq ?v 0) then (printout ?output ?v) else (printout ?output "-"))
            else
                (if (neq ?v 0) 
                    then (if (<= ?v 9) then (printout ?output " " ?v " ") else (printout ?output ?v " "))
                    else (printout ?output " - ")
                )
        )
        (bind ?i (+ ?i 1))
    )
)



;;; For 4x4 grids


(defrule build-solution-row-4
    (declare (salience ?*solution-found-salience*))
    (print-solution ?cont 4)
    (row ?row)
    (candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
    (candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
    (candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
    (candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
=>
    (bind $?vals (create$ ?n1 ?n2 ?n3 ?n4))
    (assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-4
    (declare (salience ?*solution-found-salience*))
    (print-solution ?cont 4)
    (c-row (row 1) (values $?vA))
    (c-row (row 2) (values $?vB))
    (c-row (row 3) (values $?vC))
    (c-row (row 4) (values $?vD))
=>
    (if ?*print-solution* then
        (print-solution-row t $?vA) (printout t crlf)
        (print-solution-row t $?vB) (printout t crlf)
        (print-solution-row t $?vC) (printout t crlf)
        (print-solution-row t $?vD) (printout t crlf)
    )
    (if ?*save-solutions* then
        (print-solution-row ?*solutions-file* $?vA)
        (print-solution-row ?*solutions-file* $?vB)
        (print-solution-row ?*solutions-file* $?vC)
        (print-solution-row ?*solutions-file* $?vD)
    )
    (halt)
)



;;; For 5x5 grids


(defrule build-solution-row-5
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 5)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-5
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 5)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
=>
	(if ?*print-solution* then
		(print-solution-row t $?vA) (printout t crlf)
		(print-solution-row t $?vB) (printout t crlf)
		(print-solution-row t $?vC) (printout t crlf)
		(print-solution-row t $?vD) (printout t crlf)
		(print-solution-row t $?vE) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row ?*solutions-file* $?vA)
		(print-solution-row ?*solutions-file* $?vB)
		(print-solution-row ?*solutions-file* $?vC)
		(print-solution-row ?*solutions-file* $?vD)
		(print-solution-row ?*solutions-file* $?vE)
	)
	(halt)
)



;;; For 6x6 grids


(defrule build-solution-row-6
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 6)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-6
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 6)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
=>
	(if ?*print-solution* then
		(print-solution-row t $?vA) (printout t crlf)
		(print-solution-row t $?vB) (printout t crlf)
		(print-solution-row t $?vC) (printout t crlf)
		(print-solution-row t $?vD) (printout t crlf)
		(print-solution-row t $?vE) (printout t crlf)
		(print-solution-row t $?vF) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row ?*solutions-file* $?vA)
		(print-solution-row ?*solutions-file* $?vB)
		(print-solution-row ?*solutions-file* $?vC)
		(print-solution-row ?*solutions-file* $?vD)
		(print-solution-row ?*solutions-file* $?vE)
		(print-solution-row ?*solutions-file* $?vF)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)



;;; For 7x7 grids


(defrule build-solution-row-7
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 7)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-7
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 7)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
=>
	(if ?*print-solution* then
		(print-solution-row t $?vA) (printout t crlf)
		(print-solution-row t $?vB) (printout t crlf)
		(print-solution-row t $?vC) (printout t crlf)
		(print-solution-row t $?vD) (printout t crlf)
		(print-solution-row t $?vE) (printout t crlf)
		(print-solution-row t $?vF) (printout t crlf)
		(print-solution-row t $?vG) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row ?*solutions-file* $?vA)
		(print-solution-row ?*solutions-file* $?vB)
		(print-solution-row ?*solutions-file* $?vC)
		(print-solution-row ?*solutions-file* $?vD)
		(print-solution-row ?*solutions-file* $?vE)
		(print-solution-row ?*solutions-file* $?vF)
		(print-solution-row ?*solutions-file* $?vG)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)



;;; For 8x8 grids


(defrule build-solution-row-8
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 8)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-8
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 8)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
=>
	(if ?*print-solution* then
		(print-solution-row t $?vA) (printout t crlf)
		(print-solution-row t $?vB) (printout t crlf)
		(print-solution-row t $?vC) (printout t crlf)
		(print-solution-row t $?vD) (printout t crlf)
		(print-solution-row t $?vE) (printout t crlf)
		(print-solution-row t $?vF) (printout t crlf)
		(print-solution-row t $?vG) (printout t crlf)
		(print-solution-row t $?vH) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row ?*solutions-file* $?vA)
		(print-solution-row ?*solutions-file* $?vB)
		(print-solution-row ?*solutions-file* $?vC)
		(print-solution-row ?*solutions-file* $?vD)
		(print-solution-row ?*solutions-file* $?vE)
		(print-solution-row ?*solutions-file* $?vF)
		(print-solution-row ?*solutions-file* $?vG)
		(print-solution-row ?*solutions-file* $?vH)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)



;;; For 9x9 grids


(defrule build-solution-row-9
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 9)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-9
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 9)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
=>
	(if ?*print-solution* then
		(print-solution-row t $?vA) (printout t crlf)
		(print-solution-row t $?vB) (printout t crlf)
		(print-solution-row t $?vC) (printout t crlf)
		(print-solution-row t $?vD) (printout t crlf)
		(print-solution-row t $?vE) (printout t crlf)
		(print-solution-row t $?vF) (printout t crlf)
		(print-solution-row t $?vG) (printout t crlf)
		(print-solution-row t $?vH) (printout t crlf)
		(print-solution-row t $?vI) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row ?*solutions-file* $?vA)
		(print-solution-row ?*solutions-file* $?vB)
		(print-solution-row ?*solutions-file* $?vC)
		(print-solution-row ?*solutions-file* $?vD)
		(print-solution-row ?*solutions-file* $?vE)
		(print-solution-row ?*solutions-file* $?vF)
		(print-solution-row ?*solutions-file* $?vG)
		(print-solution-row ?*solutions-file* $?vH)
		(print-solution-row ?*solutions-file* $?vI)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)







;;; For 10x10 grids

(defrule build-solution-row-10
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 10)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-10
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 10)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)


;;; For 11x11 grids


(defrule build-solution-row-11
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 11)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-11
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 11)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)





;;; For 12x12 grids

(defrule build-solution-row-12
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 12)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-12
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 12)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)





;;; For 13x13 grids

(defrule build-solution-row-13
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 13)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-13
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 13)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)





;;; For 14x14 grids

(defrule build-solution-row-14
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 14)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-14
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 14)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)





;;; For 15x15 grids

(defrule build-solution-row-15
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 15)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
	(candidate (context ?cont) (status c-value) (row ?row) (column 15) (number ?n15))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-15
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 15)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
	(c-row (row 15) (values $?vO))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
		(print-solution-row  t $?vO) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)





;;; For 16x16 grids

(defrule build-solution-row-16
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 16)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
	(candidate (context ?cont) (status c-value) (row ?row) (column 15) (number ?n15))
	(candidate (context ?cont) (status c-value) (row ?row) (column 16) (number ?n16))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15 ?n16))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-16
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 16)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
	(c-row (row 15) (values $?vO))
	(c-row (row 16) (values $?vP))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
		(print-solution-row  t $?vO) (printout t crlf)
		(print-solution-row  t $?vP) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)






;;; For 17x17 grids


(defrule build-solution-row-17
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 17)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
	(candidate (context ?cont) (status c-value) (row ?row) (column 15) (number ?n15))
	(candidate (context ?cont) (status c-value) (row ?row) (column 16) (number ?n16))
	(candidate (context ?cont) (status c-value) (row ?row) (column 17) (number ?n17))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15 ?n16 ?n17))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-17
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	(print-solution ?cont 17)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
	(c-row (row 15) (values $?vO))
	(c-row (row 16) (values $?vP))
	(c-row (row 17) (values $?vQ))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
		(print-solution-row  t $?vO) (printout t crlf)
		(print-solution-row  t $?vP) (printout t crlf)
		(print-solution-row  t $?vQ) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vQ) (printout ?*solutions-file* crlf)
	)
	(halt)
)






;;; For 18x18 grids


(defrule build-solution-row-18
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 18)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
	(candidate (context ?cont) (status c-value) (row ?row) (column 15) (number ?n15))
	(candidate (context ?cont) (status c-value) (row ?row) (column 16) (number ?n16))
	(candidate (context ?cont) (status c-value) (row ?row) (column 17) (number ?n17))
	(candidate (context ?cont) (status c-value) (row ?row) (column 18) (number ?n18))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15 ?n16 ?n17 ?n18))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-18
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	(print-solution ?cont 18)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
	(c-row (row 15) (values $?vO))
	(c-row (row 16) (values $?vP))
	(c-row (row 17) (values $?vQ))
	(c-row (row 18) (values $?vR))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
		(print-solution-row  t $?vO) (printout t crlf)
		(print-solution-row  t $?vP) (printout t crlf)
		(print-solution-row  t $?vQ) (printout t crlf)
		(print-solution-row  t $?vR) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vQ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vR) (printout ?*solutions-file* crlf)
	)
	(halt)
)






;;; For 19x19 grids


(defrule build-solution-row-19
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 19)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
	(candidate (context ?cont) (status c-value) (row ?row) (column 15) (number ?n15))
	(candidate (context ?cont) (status c-value) (row ?row) (column 16) (number ?n16))
	(candidate (context ?cont) (status c-value) (row ?row) (column 17) (number ?n17))
	(candidate (context ?cont) (status c-value) (row ?row) (column 18) (number ?n18))
	(candidate (context ?cont) (status c-value) (row ?row) (column 19) (number ?n19))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15 ?n16 ?n17 ?n18 ?n19))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-19
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	(print-solution ?cont 19)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
	(c-row (row 15) (values $?vO))
	(c-row (row 16) (values $?vP))
	(c-row (row 17) (values $?vQ))
	(c-row (row 18) (values $?vR))
	(c-row (row 19) (values $?vS))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
		(print-solution-row  t $?vO) (printout t crlf)
		(print-solution-row  t $?vP) (printout t crlf)
		(print-solution-row  t $?vQ) (printout t crlf)
		(print-solution-row  t $?vR) (printout t crlf)
		(print-solution-row  t $?vS) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vQ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vR) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vS) (printout ?*solutions-file* crlf)
	)
	(halt)
)






;;; For 20x20 grids


(defrule build-solution-row-20
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 20)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
	(candidate (context ?cont) (status c-value) (row ?row) (column 15) (number ?n15))
	(candidate (context ?cont) (status c-value) (row ?row) (column 16) (number ?n16))
	(candidate (context ?cont) (status c-value) (row ?row) (column 17) (number ?n17))
	(candidate (context ?cont) (status c-value) (row ?row) (column 18) (number ?n18))
	(candidate (context ?cont) (status c-value) (row ?row) (column 19) (number ?n19))
	(candidate (context ?cont) (status c-value) (row ?row) (column 20) (number ?n20))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15 ?n16 ?n17 ?n18 ?n19 ?n20))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-20
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	(print-solution ?cont 20)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
	(c-row (row 15) (values $?vO))
	(c-row (row 16) (values $?vP))
	(c-row (row 17) (values $?vQ))
	(c-row (row 18) (values $?vR))
	(c-row (row 19) (values $?vS))
	(c-row (row 20) (values $?vT))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
		(print-solution-row  t $?vO) (printout t crlf)
		(print-solution-row  t $?vP) (printout t crlf)
		(print-solution-row  t $?vQ) (printout t crlf)
		(print-solution-row  t $?vR) (printout t crlf)
		(print-solution-row  t $?vS) (printout t crlf)
		(print-solution-row  t $?vT) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vQ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vR) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vS) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vT) (printout ?*solutions-file* crlf)
	)
	(halt)
)






;;; For 21x21 grids


(defrule build-solution-row-21
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 21)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
	(candidate (context ?cont) (status c-value) (row ?row) (column 15) (number ?n15))
	(candidate (context ?cont) (status c-value) (row ?row) (column 16) (number ?n16))
	(candidate (context ?cont) (status c-value) (row ?row) (column 17) (number ?n17))
	(candidate (context ?cont) (status c-value) (row ?row) (column 18) (number ?n18))
	(candidate (context ?cont) (status c-value) (row ?row) (column 19) (number ?n19))
	(candidate (context ?cont) (status c-value) (row ?row) (column 20) (number ?n20))
	(candidate (context ?cont) (status c-value) (row ?row) (column 21) (number ?n21))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15 ?n16 ?n17 ?n18 ?n19 ?n20 ?n21))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-21
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	(print-solution ?cont 21)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
	(c-row (row 15) (values $?vO))
	(c-row (row 16) (values $?vP))
	(c-row (row 17) (values $?vQ))
	(c-row (row 18) (values $?vR))
	(c-row (row 19) (values $?vS))
	(c-row (row 20) (values $?vT))
	(c-row (row 21) (values $?vU))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
		(print-solution-row  t $?vO) (printout t crlf)
		(print-solution-row  t $?vP) (printout t crlf)
		(print-solution-row  t $?vQ) (printout t crlf)
		(print-solution-row  t $?vR) (printout t crlf)
		(print-solution-row  t $?vS) (printout t crlf)
		(print-solution-row  t $?vT) (printout t crlf)
		(print-solution-row  t $?vU) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vQ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vR) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vS) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vT) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vU) (printout ?*solutions-file* crlf)
	)
	(halt)
)






;;; For 22x22 grids


(defrule build-solution-row-22
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 22)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
	(candidate (context ?cont) (status c-value) (row ?row) (column 15) (number ?n15))
	(candidate (context ?cont) (status c-value) (row ?row) (column 16) (number ?n16))
	(candidate (context ?cont) (status c-value) (row ?row) (column 17) (number ?n17))
	(candidate (context ?cont) (status c-value) (row ?row) (column 18) (number ?n18))
	(candidate (context ?cont) (status c-value) (row ?row) (column 19) (number ?n19))
	(candidate (context ?cont) (status c-value) (row ?row) (column 20) (number ?n20))
	(candidate (context ?cont) (status c-value) (row ?row) (column 21) (number ?n21))
	(candidate (context ?cont) (status c-value) (row ?row) (column 22) (number ?n22))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15 ?n16 ?n17 ?n18 ?n19 ?n20 ?n21 ?n22))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-22
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	(print-solution ?cont 22)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
	(c-row (row 15) (values $?vO))
	(c-row (row 16) (values $?vP))
	(c-row (row 17) (values $?vQ))
	(c-row (row 18) (values $?vR))
	(c-row (row 19) (values $?vS))
	(c-row (row 20) (values $?vT))
	(c-row (row 21) (values $?vU))
	(c-row (row 22) (values $?vV))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
		(print-solution-row  t $?vO) (printout t crlf)
		(print-solution-row  t $?vP) (printout t crlf)
		(print-solution-row  t $?vQ) (printout t crlf)
		(print-solution-row  t $?vR) (printout t crlf)
		(print-solution-row  t $?vS) (printout t crlf)
		(print-solution-row  t $?vT) (printout t crlf)
		(print-solution-row  t $?vU) (printout t crlf)
		(print-solution-row  t $?vV) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vQ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vR) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vS) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vT) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vU) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vV) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)






;;; For 23x23 grids


(defrule build-solution-row-23
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 23)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
	(candidate (context ?cont) (status c-value) (row ?row) (column 15) (number ?n15))
	(candidate (context ?cont) (status c-value) (row ?row) (column 16) (number ?n16))
	(candidate (context ?cont) (status c-value) (row ?row) (column 17) (number ?n17))
	(candidate (context ?cont) (status c-value) (row ?row) (column 18) (number ?n18))
	(candidate (context ?cont) (status c-value) (row ?row) (column 19) (number ?n19))
	(candidate (context ?cont) (status c-value) (row ?row) (column 20) (number ?n20))
	(candidate (context ?cont) (status c-value) (row ?row) (column 21) (number ?n21))
	(candidate (context ?cont) (status c-value) (row ?row) (column 22) (number ?n22))
	(candidate (context ?cont) (status c-value) (row ?row) (column 23) (number ?n23))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15 ?n16 ?n17 ?n18 ?n19 ?n20 ?n21 ?n22 ?n23))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-23
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	(print-solution ?cont 23)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
	(c-row (row 15) (values $?vO))
	(c-row (row 16) (values $?vP))
	(c-row (row 17) (values $?vQ))
	(c-row (row 18) (values $?vR))
	(c-row (row 19) (values $?vS))
	(c-row (row 20) (values $?vT))
	(c-row (row 21) (values $?vU))
	(c-row (row 22) (values $?vV))
	(c-row (row 23) (values $?vW))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
		(print-solution-row  t $?vO) (printout t crlf)
		(print-solution-row  t $?vP) (printout t crlf)
		(print-solution-row  t $?vQ) (printout t crlf)
		(print-solution-row  t $?vR) (printout t crlf)
		(print-solution-row  t $?vS) (printout t crlf)
		(print-solution-row  t $?vT) (printout t crlf)
		(print-solution-row  t $?vU) (printout t crlf)
		(print-solution-row  t $?vV) (printout t crlf)
		(print-solution-row  t $?vW) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vQ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vR) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vS) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vT) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vU) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vV) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vW) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)






;;; For 24x24 grids


(defrule build-solution-row-24
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 24)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
	(candidate (context ?cont) (status c-value) (row ?row) (column 15) (number ?n15))
	(candidate (context ?cont) (status c-value) (row ?row) (column 16) (number ?n16))
	(candidate (context ?cont) (status c-value) (row ?row) (column 17) (number ?n17))
	(candidate (context ?cont) (status c-value) (row ?row) (column 18) (number ?n18))
	(candidate (context ?cont) (status c-value) (row ?row) (column 19) (number ?n19))
	(candidate (context ?cont) (status c-value) (row ?row) (column 20) (number ?n20))
	(candidate (context ?cont) (status c-value) (row ?row) (column 21) (number ?n21))
	(candidate (context ?cont) (status c-value) (row ?row) (column 22) (number ?n22))
	(candidate (context ?cont) (status c-value) (row ?row) (column 23) (number ?n23))
	(candidate (context ?cont) (status c-value) (row ?row) (column 24) (number ?n24))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15 ?n16 ?n17 ?n18 ?n19 ?n20 ?n21 ?n22 ?n23 ?n24))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-24
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	(print-solution ?cont 24)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
	(c-row (row 15) (values $?vO))
	(c-row (row 16) (values $?vP))
	(c-row (row 17) (values $?vQ))
	(c-row (row 18) (values $?vR))
	(c-row (row 19) (values $?vS))
	(c-row (row 20) (values $?vT))
	(c-row (row 21) (values $?vU))
	(c-row (row 22) (values $?vV))
	(c-row (row 23) (values $?vW))
	(c-row (row 24) (values $?vX))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
		(print-solution-row  t $?vO) (printout t crlf)
		(print-solution-row  t $?vP) (printout t crlf)
		(print-solution-row  t $?vQ) (printout t crlf)
		(print-solution-row  t $?vR) (printout t crlf)
		(print-solution-row  t $?vS) (printout t crlf)
		(print-solution-row  t $?vT) (printout t crlf)
		(print-solution-row  t $?vU) (printout t crlf)
		(print-solution-row  t $?vV) (printout t crlf)
		(print-solution-row  t $?vW) (printout t crlf)
		(print-solution-row  t $?vX) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vQ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vR) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vS) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vT) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vU) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vV) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vW) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vX) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)






;;; For 25x25 grids


(defrule build-solution-row-25
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 25)
	(row ?row)
	(candidate (context ?cont) (status c-value) (row ?row) (column 1) (number ?n1))
	(candidate (context ?cont) (status c-value) (row ?row) (column 2) (number ?n2))
	(candidate (context ?cont) (status c-value) (row ?row) (column 3) (number ?n3))
	(candidate (context ?cont) (status c-value) (row ?row) (column 4) (number ?n4))
	(candidate (context ?cont) (status c-value) (row ?row) (column 5) (number ?n5))
	(candidate (context ?cont) (status c-value) (row ?row) (column 6) (number ?n6))
	(candidate (context ?cont) (status c-value) (row ?row) (column 7) (number ?n7))
	(candidate (context ?cont) (status c-value) (row ?row) (column 8) (number ?n8))
	(candidate (context ?cont) (status c-value) (row ?row) (column 9) (number ?n9))
	(candidate (context ?cont) (status c-value) (row ?row) (column 10) (number ?n10))
	(candidate (context ?cont) (status c-value) (row ?row) (column 11) (number ?n11))
	(candidate (context ?cont) (status c-value) (row ?row) (column 12) (number ?n12))
	(candidate (context ?cont) (status c-value) (row ?row) (column 13) (number ?n13))
	(candidate (context ?cont) (status c-value) (row ?row) (column 14) (number ?n14))
	(candidate (context ?cont) (status c-value) (row ?row) (column 15) (number ?n15))
	(candidate (context ?cont) (status c-value) (row ?row) (column 16) (number ?n16))
	(candidate (context ?cont) (status c-value) (row ?row) (column 17) (number ?n17))
	(candidate (context ?cont) (status c-value) (row ?row) (column 18) (number ?n18))
	(candidate (context ?cont) (status c-value) (row ?row) (column 19) (number ?n19))
	(candidate (context ?cont) (status c-value) (row ?row) (column 20) (number ?n20))
	(candidate (context ?cont) (status c-value) (row ?row) (column 21) (number ?n21))
	(candidate (context ?cont) (status c-value) (row ?row) (column 22) (number ?n22))
	(candidate (context ?cont) (status c-value) (row ?row) (column 23) (number ?n23))
	(candidate (context ?cont) (status c-value) (row ?row) (column 24) (number ?n24))
	(candidate (context ?cont) (status c-value) (row ?row) (column 25) (number ?n25))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15 ?n16 ?n17 ?n18 ?n19 ?n20 ?n21 ?n22 ?n23 ?n24 ?n25))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-25
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	(print-solution ?cont 25)
	(c-row (row 1) (values $?vA))
	(c-row (row 2) (values $?vB))
	(c-row (row 3) (values $?vC))
	(c-row (row 4) (values $?vD))
	(c-row (row 5) (values $?vE))
	(c-row (row 6) (values $?vF))
	(c-row (row 7) (values $?vG))
	(c-row (row 8) (values $?vH))
	(c-row (row 9) (values $?vI))
	(c-row (row 10) (values $?vJ))
	(c-row (row 11) (values $?vK))
	(c-row (row 12) (values $?vL))
	(c-row (row 13) (values $?vM))
	(c-row (row 14) (values $?vN))
	(c-row (row 15) (values $?vO))
	(c-row (row 16) (values $?vP))
	(c-row (row 17) (values $?vQ))
	(c-row (row 18) (values $?vR))
	(c-row (row 19) (values $?vS))
	(c-row (row 20) (values $?vT))
	(c-row (row 21) (values $?vU))
	(c-row (row 22) (values $?vV))
	(c-row (row 23) (values $?vW))
	(c-row (row 24) (values $?vX))
	(c-row (row 25) (values $?vY))
=>
	(if ?*print-solution* then
		(printout t crlf)
		(print-solution-row  t $?vA) (printout t crlf)
		(print-solution-row  t $?vB) (printout t crlf)
		(print-solution-row  t $?vC) (printout t crlf)
		(print-solution-row  t $?vD) (printout t crlf)
		(print-solution-row  t $?vE) (printout t crlf)
		(print-solution-row  t $?vF) (printout t crlf)
		(print-solution-row  t $?vG) (printout t crlf)
		(print-solution-row  t $?vH) (printout t crlf)
		(print-solution-row  t $?vI) (printout t crlf)
		(print-solution-row  t $?vJ) (printout t crlf)
		(print-solution-row  t $?vK) (printout t crlf)
		(print-solution-row  t $?vL) (printout t crlf)
		(print-solution-row  t $?vM) (printout t crlf)
		(print-solution-row  t $?vN) (printout t crlf)
		(print-solution-row  t $?vO) (printout t crlf)
		(print-solution-row  t $?vP) (printout t crlf)
		(print-solution-row  t $?vQ) (printout t crlf)
		(print-solution-row  t $?vR) (printout t crlf)
		(print-solution-row  t $?vS) (printout t crlf)
		(print-solution-row  t $?vT) (printout t crlf)
		(print-solution-row  t $?vU) (printout t crlf)
		(print-solution-row  t $?vV) (printout t crlf)
		(print-solution-row  t $?vW) (printout t crlf)
		(print-solution-row  t $?vX) (printout t crlf)
		(print-solution-row  t $?vY) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row  ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vQ) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vR) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vS) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vT) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vU) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vV) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vW) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vX) (printout ?*solutions-file* crlf)
		(print-solution-row  ?*solutions-file* $?vY) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)



