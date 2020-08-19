
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              LINES VS COLOURS
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





(defrule activate-lines-vs-colours
	(declare (salience ?*activate-lines-vs-colours-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont lines-vs-colours))
=>
	(if ?*print-levels* then (printout t "entering level Col"))
	(assert (technique ?cont lines-vs-colours))
    (bind ?*technique* Col)
)



(defrule track-lines-vs-colours
	(declare (salience ?*activate-lines-vs-colours-salience*))
	?level <- (technique ?cont lines-vs-colours)
=>
	(if ?*print-levels* then (printout t " with " ?level crlf))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;				                    
;;; NO LINE TO SAME COLOUR
;;;				                    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule no-line-to-same-colours-horiz-left
    ;;; two horizontally adjacent cells with no vertical common line must have the same colour 
	(declare (salience ?*lines-to-colours-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab) (type V) (value 0) (row ?row1) (column ?col1))
    
    ?cand <- (candidate (context ?cont) (status cand) (type I) (value ?value2&~?value1) (row ?row1) (column ?col2&:(eq ?col2 (- ?col1 1))))
    ?cand2 <- (candidate (context ?cont) (status cand) (type I) (value ?value1) (row ?row1) (column ?col2))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "no-vertical-line-" (row-name ?row1) ?*starting-cell-symbol* (column-name ?col2) ?*separation-sign-in-cell* (column-name ?col1) ?*ending-cell-symbol* ?*implication-sign*)
        (printout t "I" (row-name ?row1) (column-name ?col2) ?*equal-sign* (I-value-name ?value1) crlf)
	)
)


(defrule no-line-to-same-colours-horiz-right
    ;;; two horizontally adjacent cells with no vertical common line must have the same colour 
	(declare (salience ?*lines-to-colours-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab) (type V) (value 0) (row ?row1) (column ?col2&:(eq ?col2 (+ ?col1 1))))
    
    ?cand <- (candidate (context ?cont) (status cand) (type I) (value ?value2&~?value1) (row ?row1) (column ?col2))
    ?cand2 <- (candidate (context ?cont) (status cand) (type I) (value ?value1) (row ?row1) (column ?col2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "no-vertical-line-" (row-name ?row1) ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* ?*implication-sign*)
        (printout t "I" (row-name ?row1) (column-name ?col2) ?*equal-sign* (I-value-name ?value1) crlf)
	)
)


(defrule no-line-to-same-colours-verti-top
    ;;; two vertically adjacent cells with no horizontal common line must have the same colour 
	(declare (salience ?*lines-to-colours-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab) (type H) (value 0) (row ?row1) (column ?col1))

    ?cand <- (candidate (context ?cont) (status cand) (type I) (value ?value2&~?value1) (row ?row2&:(eq ?row2 (- ?row1 1))) (column ?col1))
    ?cand2 <- (candidate (context ?cont) (status cand) (type I) (value ?value1) (row ?row2) (column ?col1))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "no-horizontal-line-" ?*starting-cell-symbol* (row-name ?row2) ?*separation-sign-in-cell* (row-name ?row1) ?*ending-cell-symbol* (column-name ?col1) ?*implication-sign*)
        (printout t "I" (row-name ?row2) (column-name ?col1) ?*equal-sign* (I-value-name ?value1)  crlf)
	)
)


(defrule no-line-to-same-colours-verti-bottom
    ;;; two vertically adjacent cells with no horizontal common line must have the same colour 
	(declare (salience ?*lines-to-colours-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab) (type H) (value 0) (row ?row2&:(eq ?row2 (+ ?row1 1))) (column ?col1))

    ?cand <- (candidate (context ?cont) (status cand) (type I) (value ?value2&~?value1) (row ?row2) (column ?col1))
    ?cand2 <- (candidate (context ?cont) (status cand) (type I) (value ?value1) (row ?row2) (column ?col1))
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "no-horizontal-line-" ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col1) ?*implication-sign*)
        (printout t "I" (row-name ?row2) (column-name ?col1) ?*equal-sign* (I-value-name ?value1) crlf)
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; LINE TO DIFFERENT COLOURS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule line-to-different-colours-horiz-left
    ;;; two horizontally adjacent cells with a vertical common line must have different colours  
	(declare (salience ?*lines-to-colours-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab) (type V) (value 1) (row ?row1) (column ?col1))

    ?cand <- (candidate (context ?cont) (status cand) (type I) (value ?value1) (row ?row1) (column ?col2&:(eq ?col2 (- ?col1 1))))
    ?cand2 <- (candidate (context ?cont) (status cand) (type I) (value ?value2&~?value1) (row ?row1) (column ?col2))
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "vertical-line-" (row-name ?row1) ?*starting-cell-symbol* (column-name ?col2) ?*separation-sign-in-cell* (column-name ?col1) ?*ending-cell-symbol* ?*implication-sign*)
        (printout t "I" (row-name ?row1) (column-name ?col2) ?*equal-sign* (I-value-name (- 1 ?value1))  crlf)
	)
)


(defrule line-to-different-colours-horiz-right
    ;;; two horizontally adjacent cells with a vertical common line must have different colours  
	(declare (salience ?*lines-to-colours-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab) (type V) (value 1) (row ?row1) (column ?col2&:(eq ?col2 (+ ?col1 1))))

    ?cand <- (candidate (context ?cont) (status cand) (type I) (value ?value1) (row ?row1) (column ?col2))
    ?cand2 <- (candidate (context ?cont) (status cand) (type I) (value ?value2&~?value1) (row ?row1) (column ?col2))
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "vertical-line-" (row-name ?row1) ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* ?*implication-sign*)
        (printout t "I" (row-name ?row1) (column-name ?col2) ?*equal-sign* (I-value-name (- 1 ?value1)) crlf)
	)
)



(defrule line-to-different-colours-verti-top
    ;;; two vertically adjacent cells with a horizontal common line must have different colours 
	(declare (salience ?*lines-to-colours-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab) (type H) (value 1) (row ?row1) (column ?col1))

    ?cand <- (candidate (context ?cont) (status cand) (type I) (value ?value1) (row ?row2&:(eq ?row2 (- ?row1 1))) (column ?col1))
    ?cand2 <- (candidate (context ?cont) (status cand) (type I) (value ?value2&~?value1) (row ?row2) (column ?col1))
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "horizontal-line-" ?*starting-cell-symbol* (row-name ?row2) ?*separation-sign-in-cell* (row-name ?row1) ?*ending-cell-symbol* (column-name ?col1) ?*implication-sign*)
        (printout t "I" (row-name ?row2) (column-name ?col1) ?*equal-sign* (I-value-name (- 1 ?value1)) crlf)
	)
)


(defrule line-to-different-colours-verti-bottom
    ;;; two vertically adjacent cells with a horizontal common line must have different colours 
	(declare (salience ?*lines-to-colours-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab) (type H) (value 1) (row ?row2&:(eq ?row2 (+ ?row1 1))) (column ?col1))

    ?cand <- (candidate (context ?cont) (status cand) (type I) (value ?value1) (row ?row2) (column ?col1))
    ?cand2 <- (candidate (context ?cont) (status cand) (type I) (value ?value2&~?value1) (row ?row2) (column ?col1))
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "horizontal-line-" ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col1) ?*implication-sign*)
        (printout t "I" (row-name ?row2) (column-name ?col1) ?*equal-sign* (I-value-name (- 1 ?value1)) crlf)
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;				                    
;;; SAME COLOUR TO NO LINE
;;;				                    
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule same-colours-to-no-line-horiz
    ;;; two horizontally adjacent cells with the same colour can have no vertical common line
	(declare (salience ?*colours-to-lines-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab2) (type I) (value ?value1) (row ?row1) (column ?col2&:(eq ?col2 (+ ?col1 1))))
    
    ?cand <- (candidate (context ?cont) (status cand) (type V) (value 1) (row ?row1) (column ?col2))
    ?cand2 <- (candidate (context ?cont) (status cand) (type V) (value 0) (row ?row1) (column ?col2))
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
    (bind ?*Effective-colours* TRUE)
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "same-colour-in-" (row-name ?row1) ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* ?*implication-sign*)
        (printout t "V" (row-name ?row1) (column-name ?col2) ?*equal-sign* 0 crlf)
	)
)


(defrule same-colours-to-no-line-verti
    ;;; two vertically adjacent cells with the same colour can have no horizontal common line
	(declare (salience ?*colours-to-lines-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab2) (type I) (value ?value1) (row ?row2&:(eq ?row2 (+ ?row1 1))) (column ?col1))
    
    ?cand <- (candidate (context ?cont) (status cand) (type H) (value 1) (row ?row2) (column ?col1))
    ?cand2 <- (candidate (context ?cont) (status cand) (type H) (value 0) (row ?row2) (column ?col1))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
    (bind ?*Effective-colours* TRUE)
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "same-colour-in-" ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col1) ?*implication-sign*)
        (printout t "H" (row-name ?row2) (column-name ?col1) ?*equal-sign* 0 crlf)
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DIFFERENT COLOURS TO LINE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule different-colours-to-line-horiz
    ;;; two horizontally adjacent cells with different colours must have a vertical common line
	(declare (salience ?*colours-to-lines-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab2) (type I) (value ?value2&~?value1) (row ?row1) (column ?col2&:(eq ?col2 (+ ?col1 1))))
    
    ?cand <- (candidate (context ?cont) (status cand) (type V) (value 0) (row ?row1) (column ?col2))
    ?cand2 <- (candidate (context ?cont) (status cand) (type V) (value 1) (row ?row1) (column ?col2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
    (bind ?*Effective-colours* TRUE)
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "different-colours-in-" (row-name ?row1) ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* ?*implication-sign*)
        (printout t "H" (row-name ?row1) (column-name ?col2) ?*equal-sign* 1 crlf)
	)
)


(defrule different-colours-to-line-verti
    ;;; two vertically adjacent cells with different colours must have a horizontal common line
	(declare (salience ?*colours-to-lines-salience*))
    (technique ?cont lines-vs-colours)
        
    (candidate (context ?cont) (status c-value) (label ?lab1) (type I) (value ?value1) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status c-value) (label ?lab2) (type I) (value ?value2&~?value1) (row ?row2&:(eq ?row2 (+ ?row1 1))) (column ?col1))
    
    ?cand <- (candidate (context ?cont) (status cand) (type H) (value 0) (row ?row2) (column ?col1))
    ?cand2 <- (candidate (context ?cont) (status cand) (type H) (value 1) (row ?row2) (column ?col1))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (modify ?cand2 (status c-value))
    (bind ?*Effective-colours* TRUE)
	(if (or ?*print-actions* ?*print-colours*) then
        (printout t "different-colours-in-" ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col1) ?*implication-sign*)
        (printout t "H" (row-name ?row2) (column-name ?col1) ?*equal-sign* 1 crlf)
	)
)

