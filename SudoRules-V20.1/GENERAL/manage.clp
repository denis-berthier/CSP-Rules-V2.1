
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT CONTRADICTION AND HALT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; eliminate the generic rule

(defrule no-solution-at-all =>)


;;; Fully super-symmetric detection of a contradiction.

(defrule no-solution-at-all-rc
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
	(context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is an rc-cell with no c-value and no candidate in context 0
	(row ?row)
    (column ?col)
	(not (candidate (context 0) (row ?row) (column ?col)))
=>
	(printout t crlf "GRID " ?g " HAS NO SOLUTION : NO CANDIDATE FOR RC-CELL " (row-name ?row) (column-name ?col) crlf)
	(printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
)


(defrule no-solution-at-all-rn
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
    (context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is an rn-cell with no c-value and no candidate in context 0
	(number ?nb)
    (row ?row)
	(not (candidate (context 0) (number ?nb) (row ?row)))
=>
	(printout t crlf "GRID " ?g " HAS NO SOLUTION : NO CANDIDATE FOR RN-CELL " (row-name ?row) (number-name ?nb) crlf)
	(printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
)

(defrule no-solution-at-all-cn
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
    (context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is a cn-cell with no c-value and no candidate in context 0
	(number ?nb)
    (column ?col)
	(not (candidate (context 0) (number ?nb) (column ?col)))
=>
	(printout t crlf "GRID " ?g " HAS NO SOLUTION : NO CANDIDATE FOR FOR CN-CELL " (column-name ?col) (number-name ?nb) crlf)
	(printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
)

(defrule no-solution-at-all-bn
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
    (context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is a bn-cell with no c-value and no candidate in context 0
	(number ?nb)
    (block ?blk)
	(not (candidate (context 0) (number ?nb) (block ?blk)))
=>
	(printout t crlf "GRID " ?g " HAS NO SOLUTION : NO CANDIDATE FOR FOR BN-CELL " (block-name ?blk) (number-name ?nb) crlf)
	(printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; COMPUTE OR PRINT CURRENT RESOLUTION STATE AS A LIST
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction compute-current-resolution-state-in-context (?cont)
    (if (> ?*segment-size* 5) then (printout t "Currently, this function works only for grid size ≤ 25" crlf) (return FALSE))
    (bind ?current-rs (create$))
    (foreach ?row ?*rows*
        (foreach ?col ?*columns*
            (bind ?rc-content "")
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
                    (bind ?nb2 ?nb)
                    ;;; add this line for 16x16 or 25x25 puzzles given in hexadecimal notation
                    (if (eq ?*grid-size* 16) then (bind ?nb2 (transform-nb-to-hexa ?nb)))
                    (if (eq ?*grid-size* 25) then (bind ?nb2 (transform-nb-to-25letters ?nb)))
                   (bind ?rc-content (sym-cat ?rc-content ?nb2))
                )
                (if (= ?nb ?*grid-size*) then (bind ?current-rs (create$ ?current-rs ?rc-content)))
            )
        )
    )
    ?current-rs
)


(deffunction print-n-spaces (?n)
    (loop-for-count ?n (printout t " "))
)


(deffunction print-current-resolution-state-in-context (?cont)
    (if (> ?*segment-size* 5) then (printout t "Currently, this function works only for grid size ≤ 25" crlf) (return FALSE))
    (foreach ?row ?*rows*
        (printout t "   ")
        (foreach ?col ?*columns*
            (bind ?nb-cands 0)
            (bind ?spaces (+ ?*grid-size* 1))
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    (bind ?nb2 ?nb)
                    (bind ?nb-cands (+ ?nb-cands 1))
                    (bind ?spaces (- ?spaces 1))
                    ;;; add this line for 16x16 puzzles given in hexadecimal notation
                    (if (eq ?*grid-size* 16) then (bind ?nb2 (transform-nb-to-hexa ?nb)))
                    ;;; add this line for 25x25 puzzles given in alphabetical notation
                    (if (eq ?*grid-size* 25) then (bind ?nb2 (transform-nb-to-25letters ?nb)))
                    (printout t ?nb2)
                )
                (if (and (= ?*grid-size* 9) (= ?nb ?*grid-size*)) then (print-n-spaces ?spaces))
            )
            (if (= ?col ?*grid-size*) then (printout t crlf))
        )
    )
    (printout t crlf)
)


(deffunction print-current-resolution-state ()
    (print-current-resolution-state-in-context 0)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; PRINT FINAL STATE IF NO SOLUTION FOUND
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule print-unsolved-final-state
	(declare (salience ?*print-final-state-salience*))
	(grid ?g)
	(context (name 0))
	(not (solution-found 0))
=>
	(printout t "PUZZLE " ?g " NOT SOLVED. " (- ?*nb-of-cells*  ?*nb-csp-variables-solved*) " VALUES MISSING." crlf)
	(if ?*add-instance-to-solved-list* then
		(bind ?*not-solved-list* (union$ ?*not-solved-list* (create$ ?g)))
	)
    (if (<= ?*segment-size* 5) then
        (printout t "CURRENT RESOLUTION STATE:" crlf)
        (print-current-resolution-state)
        
    )
    (halt)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT AND PRINT SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-solution-in-initial-context
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
    (context (name ?cont&0))
	?pl <- (technique ?cont BRT)
	;;; the presence of a c-value for every rc-cell in context 0 means that a solution has been found
	(forall (row ?row)
        (forall (column ?col)
            (exists (number ?nb)
                (candidate (context ?cont) (status c-value) (row ?row) (column ?col) (number ?nb))
            )
		)
	)
=>
	(retract ?pl)
	(printout t "GRID " ?g " SOLVED.")
	(printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    (if ?*DFS* then (printout t " rating-type = " DFS ", MAX-DEPTH = " ?*DFS-max-depth* crlf))
	(if ?*add-instance-to-solved-list* then
		(bind ?*solved-list* (create$ ?*solved-list* ?g))
	)
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; UTILITIES FOR PRINTING THE SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; When the solution has been found, a fact (solution-found) is asserted.
;;; The following global variable, structure and rules are used for printing the solution.


(deftemplate c-row
	(slot row)
	(multislot values)
)

(deffunction print-solution-row-9(?output ?vals)
	(bind ?i 1)
	(while (<= ?i ?*grid-size*) 
        (bind ?v (nth$ ?i ?vals)) 
        (printout ?output ?v) 
        (bind ?i (+ ?i 1))
    )
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
		(print-solution-row-9 t $?vA) (printout t crlf)
		(print-solution-row-9 t $?vB) (printout t crlf)
		(print-solution-row-9 t $?vC) (printout t crlf)
		(print-solution-row-9 t $?vD) (printout t crlf)
		(print-solution-row-9 t $?vE) (printout t crlf)
		(print-solution-row-9 t $?vF) (printout t crlf)
		(print-solution-row-9 t $?vG) (printout t crlf)
		(print-solution-row-9 t $?vH) (printout t crlf)
		(print-solution-row-9 t $?vI) (printout t crlf)
	)
	(if ?*save-solutions* then
		(print-solution-row-9 ?*solutions-file* $?vA)
		(print-solution-row-9 ?*solutions-file* $?vB)
		(print-solution-row-9 ?*solutions-file* $?vC)
		(print-solution-row-9 ?*solutions-file* $?vD)
		(print-solution-row-9 ?*solutions-file* $?vE)
		(print-solution-row-9 ?*solutions-file* $?vF)
		(print-solution-row-9 ?*solutions-file* $?vG)
		(print-solution-row-9 ?*solutions-file* $?vH)
		(print-solution-row-9 ?*solutions-file* $?vI)
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



