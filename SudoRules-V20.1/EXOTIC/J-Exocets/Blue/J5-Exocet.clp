
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              Blue-J5-EXOCET        
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - June 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-J5-Exocet
	(declare (salience ?*activate-J5-Exocet-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont J5-Exocet))
=>
	(if ?*print-levels* then (printout t "entering level J5E"))
	(assert (technique ?cont J5-Exocet))
	(bind ?*technique* J5-Exocet)
)



(defrule track-J5-Exocet
	(declare (salience ?*activate-J5-Exocet-salience*))
	(logical (play))
	?level <- (technique ?cont J5-Exocet)
=>
    (if ?*print-levels* then (printout t " with " ?level crlf))
)



(defrule J5-Exocet-in-rows-detection
	(declare (salience ?*J5-Exocet-detection-salience*))
    ;;; blockB is the base Block, colB the Base Column
    ;;; the S-row intersecting the Base Block is rowSB
    ;;; the Base Cells (row1, colB)  and (row2, colB)  are named from top to bottom: row1 < row2
    ;;; the 2 non-base S rows are named from top to bottom: rowSQ < rowSR

	(technique ?cont J2-Exocet)

    ;;; introduction of the Base Column
    (column-intersects ?colB ?blkB)

    ;;; introduction of the Base Cells
    (row-intersects ?row1 ?blkB)
    (not (candidate (context ?cont) (status c-value) (column ?colB) (row ?row1)))
    (row-intersects ?row2&:(< ?row1 ?row2) ?blkB)
    (not (candidate (context ?cont) (status c-value) (column ?colB) (row ?row2)))

    ;;; introduction of the S-rows
    (row-intersects ?rowSB&~?row1&~?row2 ?blkB)
    (row ?rowSQ&:(not (row-intersects ?rowSQ ?blkB)))
    (row ?rowSR&:(< ?rowSQ ?rowSR)&:(not (row-intersects ?rowSR ?blkB)))

    ;;; introduction of the Target Cells
    (column ?colTQ&~?colB)
    (column ?colTR&~?colB)

    ;;; conditions on Base Digits in the S-Cells
    (number ?nb1)
    (not (candidate (context ?cont) (status c-value) (number ?nb1) (row ?rowSB|?rowSQ|?rowSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb1) (column ?colB) (row ?row&?row1|?row2)))
    (exists (column ?colx1&~?colB)
        (exists (column ?coly1&~?colB&:(< ?colx1 ?coly1))
            (not (candidate (context ?cont) (number ?nb1) (row ?rowz&?rowSB|?rowSQ|?rowSR) (column ?colz&~?colx1&~?coly1&:(not (target-cell ?rowz ?colz ?rowSQ ?colTQ ?rowSR ?colTR)))))
        )
    )

    (number ?nb2&:(< ?nb1 ?nb2))
    (not (candidate (context ?cont) (status c-value) (number ?nb2) (row ?rowSB|?rowSQ|?rowSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb2) (column ?colB) (row ?row&?row1|?row2)))
    (exists (column ?colx2&~?colB)
        (exists (column ?coly2&~?colB&:(< ?colx2 ?coly2))
            (not (candidate (context ?cont) (number ?nb2) (row ?rowz&?rowSB|?rowSQ|?rowSR) (column ?colz&~?colx2&~?coly2&:(not (target-cell ?rowz ?colz ?rowSQ ?colTQ ?rowSR ?colTR)))))
        )
    )

	(technique ?cont J3-Exocet)
    (number ?nb3&:(< ?nb2 ?nb3))
    (not (candidate (context ?cont) (status c-value) (number ?nb3) (row ?rowSB|?rowSQ|?rowSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb3) (column ?colB) (row ?row&?row1|?row2)))
    (exists (column ?colx3&~?colB)
        (exists (column ?coly3&~?colB&:(< ?colx3 ?coly3))
            (not (candidate (context ?cont) (number ?nb3) (row ?rowz&?rowSB|?rowSQ|?rowSR) (column ?colz&~?colx3&~?coly3&:(not (target-cell ?rowz ?colz ?rowSQ ?colTQ ?rowSR ?colTR)))))
        )
    )

	(technique ?cont J4-Exocet)
    (number ?nb4&:(< ?nb3 ?nb4))
    (not (candidate (context ?cont) (status c-value) (number ?nb4) (row ?rowSB|?rowSQ|?rowSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb4) (column ?colB) (row ?row&?row1|?row2)))
    (exists (column ?colx4&~?colB)
        (exists (column ?coly4&~?colB&:(< ?colx4 ?coly4))
            (not (candidate (context ?cont) (number ?nb4) (row ?rowz&?rowSB|?rowSQ|?rowSR) (column ?colz&~?colx4&~?coly4&:(not (target-cell ?rowz ?colz ?rowSQ ?colTQ ?rowSR ?colTR)))))
        )
    )

	(technique ?cont J5-Exocet)
    (number ?nb5&:(< ?nb4 ?nb5))
    (not (candidate (context ?cont) (status c-value) (number ?nb5) (row ?rowSB|?rowSQ|?rowSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb5) (column ?colB) (row ?row&?row1|?row2)))
    (exists (column ?colx5&~?colB)
        (exists (column ?coly5&~?colB&:(< ?colx5 ?coly5))
            (not (candidate (context ?cont) (number ?nb5) (row ?rowz&?rowSB|?rowSQ|?rowSR) (column ?colz&~?colx5&~?coly5&:(not (target-cell ?rowz ?colz ?rowSQ ?colTQ ?rowSR ?colTR)))))
        )
    )

    ;;; conditions on digits in first and second Companion Cells, resp. (rowSQ, colCQ) and (rowSR, colCR)
    (column-intersects ?colCQ&~?colB ?blkB)
    (not (candidate (context ?cont) (number ?nb&?nb1|?nb2|?nb3|?nb4|?nb5) (column ?colCQ) (row ?rowSQ)))
    (column-intersects ?colCR&~?colB ?blkB)
    (not (candidate (context ?cont) (number ?nb&?nb1|?nb2|?nb3|?nb4|?nb5) (column ?colCR) (row ?rowSR)))

    ;;; conditions on digits in Base Cells
    (not (candidate (context ?cont) (column ?colB) (row ?row1) (number ?nb&~?nb1&~?nb2&~?nb3&~?nb4&~?nb5)))
    (not (candidate (context ?cont) (column ?colB) (row ?row2) (number ?nb&~?nb1&~?nb2&~?nb3&~?nb4&~?nb5)))

    ;;; conditions on digits in first and second Target Cells, resp. (rowSQ, colTQ) and (rowSR, colTR)
    (column-intersects ?colTQ&~?colB&~?colCQ ?blkB)
    (exists (candidate (context ?cont) (status cand) (number ?nbx1&?nb1|?nb2|?nb3|?nb4|?nb5) (column ?colTQ) (row ?rowSQ)))
    (column-intersects ?colTR&~?colB&~?colCR ?blkB)
    (exists (candidate (context ?cont) (status cand) (number ?nbx1&?nb1|?nb2|?nb3|?nb4|?nb5) (column ?colTR) (row ?rowSR)))
    
    (exists (candidate (context ?cont) (status cand) (number ?nbz1&?nb1|?nb2|?nb3|?nb4|?nb5) (column ?colz1&?colTQ|?colTR) (row ?rowz1&?rowSQ|?rowSR))
        (test (or (and (eq ?rowz1 ?rowSQ) (eq ?colz1 ?colTQ)) (and (eq ?rowz1 ?rowSR) (eq ?colz1 ?colTR))))
        (exists (candidate (context ?cont) (status cand) (number ?nbz2&:(<  ?nbz1 ?nbz2)&:(or (eq ?nbz2 ?nb1) (eq ?nbz2 ?nb2) (eq ?nbz2 ?nb3) (eq ?nbz2 ?nb4) (eq ?nbz2 ?nb5))) (column ?colz2&?colTQ|?colTR) (row ?rowz2&?rowSQ|?rowSR))
            (test (or (and (eq ?rowz2 ?rowSQ) (eq ?colz2 ?colTQ)) (and (eq ?rowz2 ?rowSR) (eq ?colz2 ?colTR))))
        )
    )

	(not (J5-exocet-in-rows ?cont ?nb1 ?nb2 ?nb3 ?nb4 ?nb5 ?colB ?row1 ?row2 ?rowSB ?rowSQ ?rowSR ?colTQ ?colTR))

 =>
	(assert (J5-exocet-in-rows ?cont ?nb1 ?nb2 ?nb3 ?nb4 ?nb5 ?colB ?row1 ?row2 ?rowSB ?rowSQ ?rowSR ?colTQ ?colTR))
	(if (or ?*print-actions* ?*print-JExocet*) then
            (printout t 
                "J5-Exocet-in-rows: " crlf
                "     base digits = " (number-name ?nb1) ", " (number-name ?nb2) ", " (number-name ?nb3) ", " (number-name ?nb4) ", " (number-name ?nb5) crlf
                "     S rows = " (row-name ?rowSB) ", " (row-name ?rowSQ) ", " (row-name ?rowSR) crlf
                "     base cells = " (row-name ?row1) (column-name ?colB) ", " (row-name ?row2) (column-name ?colB) crlf
                "     target cells = " (row-name ?rowSQ) (column-name ?colTQ) ", " (row-name ?rowSR) (column-name ?colTR) crlf
            )
    )
)




(defrule J5-Exocet-in-rows-elimination
	(declare (salience ?*apply-a-blocked-rule-salience*))
	(technique ?cont J5-Exocet)
	(J5-exocet-in-rows ?cont ?nb1 ?nb2 ?nb3 ?nb4 ?nb5 ?colB ?row1 ?row2 ?rowSB ?rowSQ ?rowSR ?colTQ ?colTR)

    ;;; target candidate
    ?candz <- (candidate (context ?cont) (status cand) (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4&~?nb5) (column ?colz&?colTQ|?colTR) (row ?rowz&?rowSQ|?rowSR))
    (test 
        (or 
            (and (eq ?rowz ?rowSQ) (eq ?colz ?colTQ)) ; colTQ in rowSQ 
            (and (eq ?rowz ?rowSR) (eq ?colz ?colTR)) ; colTR in rowSR
        )
    )
=>
	(retract ?candz)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-JExocet*) then
        (printout t "     " ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz) crlf)
	)
)





(defrule J5-Exocet-in-columns-detection
	(declare (salience ?*J5-Exocet-detection-salience*))
    ;;; blockB is the base Block, rowB the Base Row
    ;;; the S-column intersecting the Base Block is colSB
    ;;; the Base Cells (rowB, col1)  and (rowB, col2)  are named from left to right: col1 < col2
    ;;; the 2 non-base S columns are named from left to right: colSQ < colSR

	(technique ?cont J2-Exocet)

    ;;; introduction of the Base Row
    (row-intersects ?rowB ?blkB)

    ;;; introduction of the Base Cells
    (column-intersects ?col1 ?blkB)
    (not (candidate (context ?cont) (status c-value) (row ?rowB) (column ?col1)))
    (column-intersects ?col2&:(< ?col1 ?col2) ?blkB)
    (not (candidate (context ?cont) (status c-value) (row ?rowB) (column ?col2)))

    ;;; introduction of the S columns
    (column-intersects ?colSB&~?col1&~?col2 ?blkB)
    (column ?colSQ&:(not (column-intersects ?colSQ ?blkB)))
    (column ?colSR&:(< ?colSQ ?colSR)&:(not (column-intersects ?colSR ?blkB)))

    ;;; introduction of the Target Cells
    (row ?rowTQ&~?rowB)
    (row ?rowTR&~?rowB)

    ;;; conditions on Base Digits in the S-Cells
    (number ?nb1)
    (not (candidate (context ?cont) (status c-value) (number ?nb1) (column ?colSB|?colSQ|?colSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb1) (row ?rowB) (column ?col&?col1|?col2)))
    (exists (row ?rowx1&~?rowB)
        (exists (row ?rowy1&~?rowB&:(< ?rowx1 ?rowy1))
            (not (candidate (context ?cont) (number ?nb1) (column ?colz&?colSB|?colSQ|?colSR) (row ?rowz&~?rowx1&~?rowy1&:(not (target-cell ?rowz ?colz ?rowTQ ?colSQ ?rowTR ?colSR)))))
        )
    )

    (number ?nb2&:(< ?nb1 ?nb2))
    (not (candidate (context ?cont) (status c-value) (number ?nb2) (column ?colSB|?colSQ|?colSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb2) (row ?rowB) (column ?col&?col1|?col2)))
    (exists (row ?rowx2&~?rowB)
        (exists (row ?rowy2&~?rowB&:(< ?rowx2 ?rowy2))
            (not (candidate (context ?cont) (number ?nb2) (column ?colz&?colSB|?colSQ|?colSR) (row ?rowz&~?rowx2&~?rowy2&:(not (target-cell ?rowz ?colz ?rowTQ ?colSQ ?rowTR ?colSR)))))
        )
    )

    (technique ?cont J3-Exocet)
    (number ?nb3&:(< ?nb2 ?nb3))
    (not (candidate (context ?cont) (status c-value) (number ?nb3) (column ?colSB|?colSQ|?colSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb3) (row ?rowB) (column ?col&?col1|?col2)))
    (exists (row ?rowx3&~?rowB)
        (exists (row ?rowy3&~?rowB&:(< ?rowx3 ?rowy3))
            (not (candidate (context ?cont) (number ?nb3) (column ?colz&?colSB|?colSQ|?colSR) (row ?rowz&~?rowx3&~?rowy3&:(not (target-cell ?rowz ?colz ?rowTQ ?colSQ ?rowTR ?colSR)))))
        )
    )

	(technique ?cont J4-Exocet)
    (number ?nb4&:(< ?nb3 ?nb4))
    (not (candidate (context ?cont) (status c-value) (number ?nb4) (column ?colSB|?colSQ|?colSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb4) (row ?rowB) (column ?col&?col1|?col2)))
    (exists (row ?rowx4&~?rowB)
        (exists (row ?rowy4&~?rowB&:(< ?rowx4 ?rowy4))
            (not (candidate (context ?cont) (number ?nb4) (column ?colz&?colSB|?colSQ|?colSR) (row ?rowz&~?rowx4&~?rowy4&:(not (target-cell ?rowz ?colz ?rowTQ ?colSQ ?rowTR ?colSR)))))
        )
    )

	(technique ?cont J5-Exocet)
    (number ?nb5&:(< ?nb4 ?nb5))
    (not (candidate (context ?cont) (status c-value) (number ?nb5) (column ?colSB|?colSQ|?colSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb5) (row ?rowB) (column ?col&?col1|?col2)))
    (exists (row ?rowx5&~?rowB)
        (exists (row ?rowy5&~?rowB&:(< ?rowx5 ?rowy5))
            (not (candidate (context ?cont) (number ?nb5) (column ?colz&?colSB|?colSQ|?colSR) (row ?rowz&~?rowx5&~?rowy5&:(not (target-cell ?rowz ?colz ?rowTQ ?colSQ ?rowTR ?colSR)))))
        )
    )

    ;;; conditions on digits in Base Cells
    (not (candidate (context ?cont) (row ?rowB) (column ?col1) (number ?nb&~?nb1&~?nb2&~?nb3&~?nb4&~?nb5)))
    (not (candidate (context ?cont) (row ?rowB) (column ?col2) (number ?nb&~?nb1&~?nb2&~?nb3&~?nb4&~?nb5)))

    ;;; conditions on digits in first and second Target Cells, resp. (rowTQ, colSQ) and (rowTR, colSR)
    (exists (candidate (context ?cont) (status cand) (number ?nbx1&?nb1|?nb2|?nb3|?nb4|?nb5) (row ?rowTQ) (column ?colSQ)))
    (exists (candidate (context ?cont) (status cand) (number ?nbx1&?nb1|?nb2|?nb3|?nb4|?nb5) (row ?rowTR) (column ?colSR)))
    
    (exists (candidate (context ?cont) (status cand) (number ?nbz1&?nb1|?nb2|?nb3|?nb4|?nb5) (row ?rowz1&?rowTQ|?rowTR) (column ?colz1&?colSQ|?colSR))
        (test (or  (and (eq ?colz1 ?colSQ) (eq ?rowz1 ?rowTQ)) (and (eq ?colz1 ?colSR) (eq ?rowz1 ?rowTR))))
        (exists (candidate (context ?cont) (status cand) (number ?nbz2&:(<  ?nbz1 ?nbz2)&:(or (eq ?nbz2 ?nb1) (eq ?nbz2 ?nb2) (eq ?nbz2 ?nb3) (eq ?nbz2 ?nb4) (eq ?nbz2 ?nb5))) (row ?rowz2&?rowTQ|?rowTR) (column ?colz2&?colSQ|?colSR))
            (test (or  (and (eq ?colz2 ?colSQ) (eq ?rowz2 ?rowTQ)) (and (eq ?colz2 ?colSR) (eq ?rowz2 ?rowTR))))
        )
    )

    (not (J5-exocet-in-columns ?cont ?nb1 ?nb2 ?nb3 ?nb4 ?nb5 ?rowB ?col1 ?col2 ?colSB ?colSQ ?colSR ?rowTQ ?rowTR))

 =>
	(assert (J5-exocet-in-columns ?cont ?nb1 ?nb2 ?nb3 ?nb4 ?nb5 ?rowB ?col1 ?col2 ?colSB ?colSQ ?colSR ?rowTQ ?rowTR))
	(if (or ?*print-actions* ?*print-JExocet*) then
            (printout t 
                "J5-Exocet-in-columns: " crlf
                "     base digits = " (number-name ?nb1) ", " (number-name ?nb2) ", " (number-name ?nb3) ", " (number-name ?nb4) ", " (number-name ?nb5) crlf
                "     S columns = " (column-name ?colSB) ", " (column-name ?colSQ) ", " (column-name ?colSR) crlf
                "     base cells = " (row-name ?rowB) (column-name ?col1) ", " (row-name ?rowB) (column-name ?col2) crlf
                "     target cells = " (row-name ?rowTQ) (column-name ?colSQ) ", " (row-name ?rowTR) (column-name ?colSR) crlf
            )
    )
)



(defrule J5-Exocet-in-columns-elimination
	(declare (salience ?*apply-a-blocked-rule-salience*))
	(technique ?cont J5-Exocet)
	(J5-exocet-in-columns ?cont ?nb1 ?nb2 ?nb3 ?nb4 ?nb5 ?rowB ?col1 ?col2 ?colSB ?colSQ ?colSR ?rowTQ ?rowTR)

    ;;; target candidate
    ?candz <- (candidate (context ?cont) (status cand) (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4&~?nb5) (row ?rowz&?rowTQ|?rowTR) (column ?colz&?colSQ|?colSR))
    (test 
        (or 
            (and (eq ?colz ?colSQ) (eq ?rowz ?rowTQ)) ; rowTQ in colSQ 
            (and (eq ?colz ?colSR) (eq ?rowz ?rowTR)) ; rowTR in colSR
        )
    )
=>
	(retract ?candz)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-JExocet*) then
        (printout t "     " ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz) crlf)
	)
)



