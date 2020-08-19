
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
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
;;; DETECT AND PRINT SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-solution-in-initial-context
	(declare (salience ?*solution-found-salience*))
    (context (name ?cont&0))
	?pl <- (technique ?cont BRT)
	;;; the presence of a c-value for all the csp-variables (of some type) means that a solution has been found
	(forall (csp-variable (name ?csp) (type rc))
        (exists (candidate (context ?cont) (status c-value) (label ?lab))
			(is-csp-variable-for-label (csp-var ?csp) (label ?lab))
		)
        ;;; rewritten for JESS:
		;(not (not (and
        ;(candidate (context 0) (status c-value) (label ?lab))
		;	(is-csp-variable-for-label (csp-var ?csp) (label ?lab))
		;)))
	)
=>
	(printout t "PUZZLE SOLVED.")
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
		then (assert (print-solution ?cont ?*grid-size*))
		else (halt)
	)
)	



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; UTILITIES FOR PRINTING THE SOLUTION 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; When the solution has been found, a fact (solution-found) is asserted.
;;; The following global variable, structure and rules are used for printing the solution.


(deftemplate c-row
	(slot row)
	(multislot values)
)

(deffunction print-solution-row (?output ?vals)
	(bind ?i 1)
	(while (<= ?i ?*grid-size*) 
        (bind ?v (nth$ ?i ?vals)) 
        (printout ?output ?v) 
        (bind ?i (+ ?i 1))
    )
)



;;; For 5x5 grids


(defrule build-solution-row-5
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 5)
	(row ?row)
	(number ?n1)
	(candidate (context ?cont) (status c-value) (label ?x1&:(eq ?x1 (+ (* ?*internal-factor-2* ?n1) (* ?*internal-factor* ?row) 1))))
	(number ?n2)
	(candidate (context ?cont) (status c-value) (label ?x2&:(eq ?x2 (+ (* ?*internal-factor-2* ?n2) (* ?*internal-factor* ?row) 2))))
	(number ?n3)
	(candidate (context ?cont) (status c-value) (label ?x3&:(eq ?x3 (+ (* ?*internal-factor-2* ?n3) (* ?*internal-factor* ?row) 3))))
	(number ?n4)
	(candidate (context ?cont) (status c-value) (label ?x4&:(eq ?x4 (+ (* ?*internal-factor-2* ?n4) (* ?*internal-factor* ?row) 4))))
	(number ?n5)
	(candidate (context ?cont) (status c-value) (label ?x5&:(eq ?x5 (+ (* ?*internal-factor-2* ?n5) (* ?*internal-factor* ?row) 5))))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-5
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
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
		(printout ?*solutions-file* crlf)
	)
	(halt)
)



;;; For 6x6 grids


(defrule build-solution-row-6
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 6)
	(row ?row)
	(number ?n1)
	(candidate (context ?cont) (status c-value) (label ?x1&:(eq ?x1 (+ (* ?*internal-factor-2* ?n1) (* ?*internal-factor* ?row) 1))))
	(number ?n2)
	(candidate (context ?cont) (status c-value) (label ?x2&:(eq ?x2 (+ (* ?*internal-factor-2* ?n2) (* ?*internal-factor* ?row) 2))))
	(number ?n3)
	(candidate (context ?cont) (status c-value) (label ?x3&:(eq ?x3 (+ (* ?*internal-factor-2* ?n3) (* ?*internal-factor* ?row) 3))))
	(number ?n4)
	(candidate (context ?cont) (status c-value) (label ?x4&:(eq ?x4 (+ (* ?*internal-factor-2* ?n4) (* ?*internal-factor* ?row) 4))))
	(number ?n5)
	(candidate (context ?cont) (status c-value) (label ?x5&:(eq ?x5 (+ (* ?*internal-factor-2* ?n5) (* ?*internal-factor* ?row) 5))))
	(number ?n6)
	(candidate (context ?cont) (status c-value) (label ?x6&:(eq ?x6 (+ (* ?*internal-factor-2* ?n6) (* ?*internal-factor* ?row) 6))))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-6
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
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
	(number ?n1)
	(candidate (context ?cont) (status c-value) (label ?x1&:(eq ?x1 (+ (* ?*internal-factor-2* ?n1) (* ?*internal-factor* ?row) 1))))
	(number ?n2)
	(candidate (context ?cont) (status c-value) (label ?x2&:(eq ?x2 (+ (* ?*internal-factor-2* ?n2) (* ?*internal-factor* ?row) 2))))
	(number ?n3)
	(candidate (context ?cont) (status c-value) (label ?x3&:(eq ?x3 (+ (* ?*internal-factor-2* ?n3) (* ?*internal-factor* ?row) 3))))
	(number ?n4)
	(candidate (context ?cont) (status c-value) (label ?x4&:(eq ?x4 (+ (* ?*internal-factor-2* ?n4) (* ?*internal-factor* ?row) 4))))
	(number ?n5)
	(candidate (context ?cont) (status c-value) (label ?x5&:(eq ?x5 (+ (* ?*internal-factor-2* ?n5) (* ?*internal-factor* ?row) 5))))
	(number ?n6)
	(candidate (context ?cont) (status c-value) (label ?x6&:(eq ?x6 (+ (* ?*internal-factor-2* ?n6) (* ?*internal-factor* ?row) 6))))
	(number ?n7)
	(candidate (context ?cont) (status c-value) (label ?x7&:(eq ?x7 (+ (* ?*internal-factor-2* ?n7) (* ?*internal-factor* ?row) 7))))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-7
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
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
	(number ?n1)
	(candidate (context ?cont) (status c-value) (label ?x1&:(eq ?x1 (+ (* ?*internal-factor-2* ?n1) (* ?*internal-factor* ?row) 1))))
	(number ?n2)
	(candidate (context ?cont) (status c-value) (label ?x2&:(eq ?x2 (+ (* ?*internal-factor-2* ?n2) (* ?*internal-factor* ?row) 2))))
	(number ?n3)
	(candidate (context ?cont) (status c-value) (label ?x3&:(eq ?x3 (+ (* ?*internal-factor-2* ?n3) (* ?*internal-factor* ?row) 3))))
	(number ?n4)
	(candidate (context ?cont) (status c-value) (label ?x4&:(eq ?x4 (+ (* ?*internal-factor-2* ?n4) (* ?*internal-factor* ?row) 4))))
	(number ?n5)
	(candidate (context ?cont) (status c-value) (label ?x5&:(eq ?x5 (+ (* ?*internal-factor-2* ?n5) (* ?*internal-factor* ?row) 5))))
	(number ?n6)
	(candidate (context ?cont) (status c-value) (label ?x6&:(eq ?x6 (+ (* ?*internal-factor-2* ?n6) (* ?*internal-factor* ?row) 6))))
	(number ?n7)
	(candidate (context ?cont) (status c-value) (label ?x7&:(eq ?x7 (+ (* ?*internal-factor-2* ?n7) (* ?*internal-factor* ?row) 7))))
	(number ?n8)
	(candidate (context ?cont) (status c-value) (label ?x8&:(eq ?x8 (+ (* ?*internal-factor-2* ?n8) (* ?*internal-factor* ?row) 8))))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-8
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
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
	(number ?n1)
	(candidate (context ?cont) (status c-value) (label ?x1&:(eq ?x1 (+ (* ?*internal-factor-2* ?n1) (* ?*internal-factor* ?row) 1))))
	(number ?n2)
	(candidate (context ?cont) (status c-value) (label ?x2&:(eq ?x2 (+ (* ?*internal-factor-2* ?n2) (* ?*internal-factor* ?row) 2))))
	(number ?n3)
	(candidate (context ?cont) (status c-value) (label ?x3&:(eq ?x3 (+ (* ?*internal-factor-2* ?n3) (* ?*internal-factor* ?row) 3))))
	(number ?n4)
	(candidate (context ?cont) (status c-value) (label ?x4&:(eq ?x4 (+ (* ?*internal-factor-2* ?n4) (* ?*internal-factor* ?row) 4))))
	(number ?n5)
	(candidate (context ?cont) (status c-value) (label ?x5&:(eq ?x5 (+ (* ?*internal-factor-2* ?n5) (* ?*internal-factor* ?row) 5))))
	(number ?n6)
	(candidate (context ?cont) (status c-value) (label ?x6&:(eq ?x6 (+ (* ?*internal-factor-2* ?n6) (* ?*internal-factor* ?row) 6))))
	(number ?n7)
	(candidate (context ?cont) (status c-value) (label ?x7&:(eq ?x7 (+ (* ?*internal-factor-2* ?n7) (* ?*internal-factor* ?row) 7))))
	(number ?n8)
	(candidate (context ?cont) (status c-value) (label ?x8&:(eq ?x8 (+ (* ?*internal-factor-2* ?n8) (* ?*internal-factor* ?row) 8))))
	(number ?n9)
	(candidate (context ?cont) (status c-value) (label ?x9&:(eq ?x9 (+ (* ?*internal-factor-2* ?n9) (* ?*internal-factor* ?row) 9))))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-9
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
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




;;; For 16x16 grids

(deffunction print-solution-row-big(?output ?vals)
	(bind ?i 1)
	(while (<= ?i ?*grid-size*) 
		(bind ?v (nth$ ?i ?vals)) 
		(if (< ?v 10) then (printout ?output 0)) 
		(printout ?output ?v " ") 
		(bind ?i (+ ?i 1))
	)
)

(defrule build-solution-row-16
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 16)
	(row ?row)
	(number ?n1)
	(candidate (context ?cont) (status c-value) (label ?x1&:(eq ?x1 (+ (* ?*internal-factor-2* ?n1) (* ?*internal-factor* ?row) 1))))
	(number ?n2)
	(candidate (context ?cont) (status c-value) (label ?x2&:(eq ?x2 (+ (* ?*internal-factor-2* ?n2) (* ?*internal-factor* ?row) 2))))
	(number ?n3)
	(candidate (context ?cont) (status c-value) (label ?x3&:(eq ?x3 (+ (* ?*internal-factor-2* ?n3) (* ?*internal-factor* ?row) 3))))
	(number ?n4)
	(candidate (context ?cont) (status c-value) (label ?x4&:(eq ?x4 (+ (* ?*internal-factor-2* ?n4) (* ?*internal-factor* ?row) 4))))
	(number ?n5)
	(candidate (context ?cont) (status c-value) (label ?x5&:(eq ?x5 (+ (* ?*internal-factor-2* ?n5) (* ?*internal-factor* ?row) 5))))
	(number ?n6)
	(candidate (context ?cont) (status c-value) (label ?x6&:(eq ?x6 (+ (* ?*internal-factor-2* ?n6) (* ?*internal-factor* ?row) 6))))
	(number ?n7)
	(candidate (context ?cont) (status c-value) (label ?x7&:(eq ?x7 (+ (* ?*internal-factor-2* ?n7) (* ?*internal-factor* ?row) 7))))
	(number ?n8)
	(candidate (context ?cont) (status c-value) (label ?x8&:(eq ?x8 (+ (* ?*internal-factor-2* ?n8) (* ?*internal-factor* ?row) 8))))
	(number ?n9)
	(candidate (context ?cont) (status c-value) (label ?x9&:(eq ?x9 (+ (* ?*internal-factor-2* ?n9) (* ?*internal-factor* ?row) 9))))
	(number ?n10)
	(candidate (context ?cont) (status c-value) (label ?x10&:(eq ?x10 (+ (* ?*internal-factor-2* ?n10) (* ?*internal-factor* ?row) 10))))
	(number ?n11)
	(candidate (context ?cont) (status c-value) (label ?x11&:(eq ?x11 (+ (* ?*internal-factor-2* ?n11) (* ?*internal-factor* ?row) 11))))
	(number ?n12)
	(candidate (context ?cont) (status c-value) (label ?x12&:(eq ?x12 (+ (* ?*internal-factor-2* ?n12) (* ?*internal-factor* ?row) 12))))
	(number ?n13)
	(candidate (context ?cont) (status c-value) (label ?x13&:(eq ?x13 (+ (* ?*internal-factor-2* ?n13) (* ?*internal-factor* ?row) 13))))
	(number ?n14)
	(candidate (context ?cont) (status c-value) (label ?x14&:(eq ?x14 (+ (* ?*internal-factor-2* ?n14) (* ?*internal-factor* ?row) 14))))
	(number ?n15)
	(candidate (context ?cont) (status c-value) (label ?x15&:(eq ?x15 (+ (* ?*internal-factor-2* ?n15) (* ?*internal-factor* ?row) 15))))
	(number ?n16)
	(candidate (context ?cont) (status c-value) (label ?x16&:(eq ?x16 (+ (* ?*internal-factor-2* ?n16) (* ?*internal-factor* ?row) 16))))
=>	
	(bind $?vals (create$ ?n1 ?n2 ?n3 ?n4 ?n5 ?n6 ?n7 ?n8 ?n9 ?n10 ?n11 ?n12 ?n13 ?n14 ?n15 ?n16))
	(assert (c-row (row ?row) (values $?vals)))
)


(defrule print-solution-16
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
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
		(print-solution-row-big t $?vA) (printout t crlf)
		(print-solution-row-big t $?vB) (printout t crlf)
		(print-solution-row-big t $?vC) (printout t crlf)
		(print-solution-row-big t $?vD) (printout t crlf)
		(print-solution-row-big t $?vE) (printout t crlf)
		(print-solution-row-big t $?vF) (printout t crlf)
		(print-solution-row-big t $?vG) (printout t crlf)
		(print-solution-row-big t $?vH) (printout t crlf)
		(print-solution-row-big t $?vI) (printout t crlf)
		(print-solution-row-big t $?vJ) (printout t crlf)
		(print-solution-row-big t $?vK) (printout t crlf)
		(print-solution-row-big t $?vL) (printout t crlf)
		(print-solution-row-big t $?vM) (printout t crlf)
		(print-solution-row-big t $?vN) (printout t crlf)
		(print-solution-row-big t $?vO) (printout t crlf)
		(print-solution-row-big t $?vP) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row-big ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)




;;; For 25x25 grids


(defrule build-solution-row-25
	(declare (salience ?*solution-found-salience*))
	(print-solution ?cont 25)
	(row ?row)
	(number ?n1)
	(candidate (context ?cont) (status c-value) (label ?x1&:(eq ?x1 (+ (* ?*internal-factor-2* ?n1) (* ?*internal-factor* ?row) 1))))
	(number ?n2)
	(candidate (context ?cont) (status c-value) (label ?x2&:(eq ?x2 (+ (* ?*internal-factor-2* ?n2) (* ?*internal-factor* ?row) 2))))
	(number ?n3)
	(candidate (context ?cont) (status c-value) (label ?x3&:(eq ?x3 (+ (* ?*internal-factor-2* ?n3) (* ?*internal-factor* ?row) 3))))
	(number ?n4)
	(candidate (context ?cont) (status c-value) (label ?x4&:(eq ?x4 (+ (* ?*internal-factor-2* ?n4) (* ?*internal-factor* ?row) 4))))
	(number ?n5)
	(candidate (context ?cont) (status c-value) (label ?x5&:(eq ?x5 (+ (* ?*internal-factor-2* ?n5) (* ?*internal-factor* ?row) 5))))
	(number ?n6)
	(candidate (context ?cont) (status c-value) (label ?x6&:(eq ?x6 (+ (* ?*internal-factor-2* ?n6) (* ?*internal-factor* ?row) 6))))
	(number ?n7)
	(candidate (context ?cont) (status c-value) (label ?x7&:(eq ?x7 (+ (* ?*internal-factor-2* ?n7) (* ?*internal-factor* ?row) 7))))
	(number ?n8)
	(candidate (context ?cont) (status c-value) (label ?x8&:(eq ?x8 (+ (* ?*internal-factor-2* ?n8) (* ?*internal-factor* ?row) 8))))
	(number ?n9)
	(candidate (context ?cont) (status c-value) (label ?x9&:(eq ?x9 (+ (* ?*internal-factor-2* ?n9) (* ?*internal-factor* ?row) 9))))
	(number ?n10)
	(candidate (context ?cont) (status c-value) (label ?x10&:(eq ?x10 (+ (* ?*internal-factor-2* ?n10) (* ?*internal-factor* ?row) 10))))
	(number ?n11)
	(candidate (context ?cont) (status c-value) (label ?x11&:(eq ?x11 (+ (* ?*internal-factor-2* ?n11) (* ?*internal-factor* ?row) 11))))
	(number ?n12)
	(candidate (context ?cont) (status c-value) (label ?x12&:(eq ?x12 (+ (* ?*internal-factor-2* ?n12) (* ?*internal-factor* ?row) 12))))
	(number ?n13)
	(candidate (context ?cont) (status c-value) (label ?x13&:(eq ?x13 (+ (* ?*internal-factor-2* ?n13) (* ?*internal-factor* ?row) 13))))
	(number ?n14)
	(candidate (context ?cont) (status c-value) (label ?x14&:(eq ?x14 (+ (* ?*internal-factor-2* ?n14) (* ?*internal-factor* ?row) 14))))
	(number ?n15)
	(candidate (context ?cont) (status c-value) (label ?x15&:(eq ?x15 (+ (* ?*internal-factor-2* ?n15) (* ?*internal-factor* ?row) 15))))
	(number ?n16)
	(candidate (context ?cont) (status c-value) (label ?x16&:(eq ?x16 (+ (* ?*internal-factor-2* ?n16) (* ?*internal-factor* ?row) 16))))
	(number ?n17)
	(candidate (context ?cont) (status c-value) (label ?x17&:(eq ?x17 (+ (* ?*internal-factor-2* ?n17) (* ?*internal-factor* ?row) 17))))
	(number ?n18)
	(candidate (context ?cont) (status c-value) (label ?x18&:(eq ?x18 (+ (* ?*internal-factor-2* ?n18) (* ?*internal-factor* ?row) 18))))
	(number ?n19)
	(candidate (context ?cont) (status c-value) (label ?x19&:(eq ?x19 (+ (* ?*internal-factor-2* ?n19) (* ?*internal-factor* ?row) 19))))
	(number ?n20)
	(candidate (context ?cont) (status c-value) (label ?x20&:(eq ?x20 (+ (* ?*internal-factor-2* ?n20) (* ?*internal-factor* ?row) 20))))
	(number ?n21)
	(candidate (context ?cont) (status c-value) (label ?x21&:(eq ?x21 (+ (* ?*internal-factor-2* ?n21) (* ?*internal-factor* ?row) 21))))
	(number ?n22)
	(candidate (context ?cont) (status c-value) (label ?x22&:(eq ?x22 (+ (* ?*internal-factor-2* ?n22) (* ?*internal-factor* ?row) 22))))
	(number ?n23)
	(candidate (context ?cont) (status c-value) (label ?x23&:(eq ?x23 (+ (* ?*internal-factor-2* ?n23) (* ?*internal-factor* ?row) 23))))
	(number ?n24)
	(candidate (context ?cont) (status c-value) (label ?x24&:(eq ?x24 (+ (* ?*internal-factor-2* ?n24) (* ?*internal-factor* ?row) 24))))
	(number ?n25)
	(candidate (context ?cont) (status c-value) (label ?x25&:(eq ?x25 (+ (* ?*internal-factor-2* ?n25) (* ?*internal-factor* ?row) 25))))
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
		(print-solution-row-big t $?vA) (printout t crlf)
		(print-solution-row-big t $?vB) (printout t crlf)
		(print-solution-row-big t $?vC) (printout t crlf)
		(print-solution-row-big t $?vD) (printout t crlf)
		(print-solution-row-big t $?vE) (printout t crlf)
		(print-solution-row-big t $?vF) (printout t crlf)
		(print-solution-row-big t $?vG) (printout t crlf)
		(print-solution-row-big t $?vH) (printout t crlf)
		(print-solution-row-big t $?vI) (printout t crlf)
		(print-solution-row-big t $?vJ) (printout t crlf)
		(print-solution-row-big t $?vK) (printout t crlf)
		(print-solution-row-big t $?vL) (printout t crlf)
		(print-solution-row-big t $?vM) (printout t crlf)
		(print-solution-row-big t $?vN) (printout t crlf)
		(print-solution-row-big t $?vO) (printout t crlf)
		(print-solution-row-big t $?vP) (printout t crlf)
		(print-solution-row-big t $?vQ) (printout t crlf)
		(print-solution-row-big t $?vR) (printout t crlf)
		(print-solution-row-big t $?vS) (printout t crlf)
		(print-solution-row-big t $?vT) (printout t crlf)
		(print-solution-row-big t $?vU) (printout t crlf)
		(print-solution-row-big t $?vV) (printout t crlf)
		(print-solution-row-big t $?vW) (printout t crlf)
		(print-solution-row-big t $?vX) (printout t crlf)
		(print-solution-row-big t $?vY) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row-big ?*solutions-file* $?vA) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vB) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vC) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vD) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vE) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vF) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vG) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vH) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vI) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vJ) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vK) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vL) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vM) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vN) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vO) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vP) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vQ) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vR) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vS) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vT) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vU) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vV) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vW) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vX) (printout ?*solutions-file* crlf)
		(print-solution-row-big ?*solutions-file* $?vY) (printout ?*solutions-file* crlf)
		(printout ?*solutions-file* crlf)
	)
	(halt)
)



