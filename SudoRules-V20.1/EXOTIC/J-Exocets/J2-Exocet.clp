
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              BASIC J2 EXOCET
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





(deffunction target-cell (?row ?col ?rt1 ?ct1 ?rt2 ?ct2)
    (or (and (eq ?row ?rt1) (eq ?col ?ct1)) (and (eq ?row ?rt2) (eq ?col ?ct2)))
)


(defrule activate-J2-Exocet
	(declare (salience ?*activate-J2-Exocet-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont J2-Exocet))
=>
	(if ?*print-levels* then (printout t "entering level J2E"))
	(assert (technique ?cont J2-Exocet))
	(bind ?*technique* J2-Exocet)
)



(defrule track-J2-Exocet
	(declare (salience ?*activate-J2-Exocet-salience*))
	(logical (play))
	?level <- (technique ?cont J2-Exocet)
=>
    (if ?*print-levels* then (printout t " with " ?level crlf))
)



(defrule J2-Exocet-in-rows-detection
	(declare (salience ?*J2-Exocet-detection-salience*))
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

    ;;; conditions on Base Digits in the S-Cells
    (number ?nb1)
    (not (candidate (context ?cont) (status c-value) (number ?nb1) (row ?rowSB|?rowSQ|?rowSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb1) (column ?colB) (row ?row&?row1|?row2)))
    (exists (column ?colx1&:(not (column-intersects ?colx1 ?blkB)))
        (exists (column ?coly1&:(< ?colx1 ?coly1)&:(not (column-intersects ?coly1 ?blkB)))
            (not (candidate (context ?cont) (number ?nb1) (row ?rowz&?rowSB|?rowSQ|?rowSR) (column ?colz&~?colx1&~?coly1&:(not (column-intersects ?colz ?blkB)))))
        )
    )

    (number ?nb2&:(< ?nb1 ?nb2))
    (not (candidate (context ?cont) (status c-value) (number ?nb2) (row ?rowSB|?rowSQ|?rowSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb2) (column ?colB) (row ?row&?row1|?row2)))
    (exists (column ?colx2&:(not (column-intersects ?colx2 ?blkB)))
        (exists (column ?coly2&:(< ?colx2 ?coly2)&:(not (column-intersects ?coly2 ?blkB)))
            (not (candidate (context ?cont) (number ?nb2) (row ?rowz&?rowSB|?rowSQ|?rowSR) (column ?colz&~?colx2&~?coly2&:(not (column-intersects ?colz ?blkB)))))
        )
    )

    ;;; conditions on digits in first and second Companion Cells, resp. (rowSQ, colCQ) and (rowSR, colCR)
    (column-intersects ?colCQ&~?colB ?blkB)
    (not (candidate (context ?cont) (number ?nb&?nb1|?nb2) (column ?colCQ) (row ?rowSQ)))
    (column-intersects ?colCR&~?colB ?blkB)
    (not (candidate (context ?cont) (number ?nb&?nb1|?nb2) (column ?colCR) (row ?rowSR)))

    ;;; conditions on digits in Base Cells
    (not (candidate (context ?cont) (column ?colB) (row ?row1) (number ?nb&~?nb1&~?nb2)))
    (not (candidate (context ?cont) (column ?colB) (row ?row2) (number ?nb&~?nb1&~?nb2)))

    ;;; conditions on digits in first and second Target Cells, resp. (rowSQ, colTQ) and (rowSR, colTR)
    (column-intersects ?colTQ&~?colB&~?colCQ ?blkB)
    (exists  (candidate (context ?cont) (status cand) (number ?nbx1&?nb1|?nb2) (column ?colTQ) (row ?rowSQ)))
    (column-intersects ?colTR&~?colB&~?colCR ?blkB)
    (exists (candidate (context ?cont) (status cand) (number ?nbx1&?nb1|?nb2) (column ?colTR) (row ?rowSR)))
    
    (exists (candidate (context ?cont) (status cand) (number ?nb1) (column ?colz1&?colTQ|?colTR) (row ?rowz1&?rowSQ|?rowSR))
        (test (target-cell ?rowz1 ?colz1 ?rowSQ ?colTQ ?rowSR ?colTR))
        (exists (candidate (context ?cont) (status cand) (number ?nb2) (column ?colz2&?colTQ|?colTR) (row ?rowz2&?rowSQ|?rowSR))
            (test (target-cell ?rowz2 ?colz2 ?rowSQ ?colTQ ?rowSR ?colTR))
        )
    )

    (not (J2-exocet-in-rows ?cont ?nb1 ?nb2 ?colB ?row1 ?row2 ?rowSB ?rowSQ ?rowSR ?colTQ ?colTR))

 =>
	(assert (J2-exocet-in-rows ?cont ?nb1 ?nb2 ?colB ?row1 ?row2 ?rowSB ?rowSQ ?rowSR ?colTQ ?colTR))
    (bind ?*has-J-exocet* TRUE)
	(if (or ?*print-actions* ?*print-JExocet*) then
            (printout t 
                "J2-Exocet-in-rows: " crlf
                "     base digits = " (number-name ?nb1) ", " (number-name ?nb2) crlf
                "     S rows = " (row-name ?rowSB) ", " (row-name ?rowSQ) ", " (row-name ?rowSR) crlf
                "     base cells = " (row-name ?row1) (column-name ?colB) ", " (row-name ?row2) (column-name ?colB) crlf
                "     target cells = " (row-name ?rowSQ) (column-name ?colTQ) ", " (row-name ?rowSR) (column-name ?colTR) crlf
            )
    )
)



(defrule J2-Exocet-in-rows-elimination
	(declare (salience ?*apply-a-blocked-rule-salience*))
	(technique ?cont J2-Exocet)
	(J2-exocet-in-rows ?cont ?nb1 ?nb2 ?colB ?row1 ?row2 ?rowSB ?rowSQ ?rowSR ?colTQ ?colTR)

    ;;; target candidate
    ?candz <- (candidate (context ?cont) (status cand) (number ?nbz&~?nb1&~?nb2) (column ?colz&?colTQ|?colTR) (row ?rowz&?rowSQ|?rowSR))
    (test (target-cell ?rowz ?colz ?rowSQ ?colTQ ?rowSR ?colTR))
=>
	(retract ?candz)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-JExocet*) then
        (printout t "     " ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz) crlf)
	)
)





(defrule J2-Exocet-in-columns-detection
	(declare (salience ?*J2-Exocet-detection-salience*))
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

    ;;; conditions on Base Digits in the S-Cells
    (number ?nb1)
    (not (candidate (context ?cont) (status c-value) (number ?nb1) (column ?colSB|?colSQ|?colSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb1) (row ?rowB) (column ?col&?col1|?col2)))
    (exists (row ?rowx1&:(not (row-intersects ?rowx1 ?blkB)))
        (exists (row ?rowy1&:(< ?rowx1 ?rowy1)&:(not (row-intersects ?rowy1 ?blkB)))
            (not (candidate (context ?cont) (number ?nb1) (column ?colz&?colSB|?colSQ|?colSR) (row ?rowz&~?rowx1&~?rowy1&:(not (row-intersects ?rowz ?blkB)))))
        )
    )

    (number ?nb2&:(< ?nb1 ?nb2))
    (not (candidate (context ?cont) (status c-value) (number ?nb2) (column ?colSB|?colSQ|?colSR)))
    (exists (candidate (context ?cont) (status cand) (number ?nb2) (row ?rowB) (column ?col&?col1|?col2)))
    (exists (row ?rowx2&:(not (row-intersects ?rowx2 ?blkB)))
        (exists (row ?rowy2&:(< ?rowx2 ?rowy2)&:(not (row-intersects ?rowy2 ?blkB)))
            (not (candidate (context ?cont) (number ?nb2) (column ?colz&?colSB|?colSQ|?colSR) (row ?rowz&~?rowx2&~?rowy2&:(not (row-intersects ?rowz ?blkB)))))
        )
    )

    ;;; conditions on digits in first and second Companion Cells, resp. (rowCQ, colSQ) and (rowCR, colSR)
    (row-intersects ?rowCQ&~?rowB ?blkB)
    (not (candidate (context ?cont) (number ?nb&?nb1|?nb2) (row ?rowCQ) (column ?colSQ)))
    (row-intersects ?rowCR&~?rowB ?blkB)
    (not (candidate (context ?cont) (number ?nb&?nb1|?nb2) (row ?rowCR) (column ?colSR)))

    ;;; conditions on digits in Base Cells
    (not (candidate (context ?cont) (row ?rowB) (column ?col1) (number ?nb&~?nb1&~?nb2)))
    (not (candidate (context ?cont) (row ?rowB) (column ?col2) (number ?nb&~?nb1&~?nb2)))

    ;;; conditions on digits in first and second Target Cells, resp. (rowTQ, colSQ) and (rowTR, colSR)
    (row-intersects ?rowTQ&~?rowB&~?rowCQ ?blkB)
    (exists (candidate (context ?cont) (status cand) (number ?nbx1&?nb1|?nb2) (row ?rowTQ) (column ?colSQ)))
    (row-intersects ?rowTR&~?rowB&~?rowCR ?blkB)
    (exists (candidate (context ?cont) (status cand) (number ?nbx1&?nb1|?nb2) (row ?rowTR) (column ?colSR)))
    
    (exists (candidate (context ?cont) (status cand) (number ?nb1) (row ?rowz1&?rowTQ|?rowTR) (column ?colz1&?colSQ|?colSR))
        (test (target-cell ?rowz1 ?colz1 ?rowTQ ?colSQ ?rowTR ?colSR))
        (exists (candidate (context ?cont) (status cand) (number ?nb2) (row ?rowz2&?rowTQ|?rowTR) (column ?colz2&?colSQ|?colSR))
            (test (target-cell ?rowz2 ?colz2 ?rowTQ ?colSQ ?rowTR ?colSR))
        )
    )

    (not (J2-exocet-in-columns ?cont ?nb1 ?nb2 ?rowB ?col1 ?col2 ?colSB ?colSQ ?colSR ?rowTQ ?rowTR))

 =>
	(assert (J2-exocet-in-columns ?cont ?nb1 ?nb2 ?rowB ?col1 ?col2 ?colSB ?colSQ ?colSR ?rowTQ ?rowTR))
    (bind ?*has-J-exocet* TRUE)
	(if (or ?*print-actions* ?*print-JExocet*) then
            (printout t 
                "J2-Exocet-in-columns: " crlf
                "     base digits = " (number-name ?nb1) ", " (number-name ?nb2) crlf
                "     S columns = " (column-name ?colSB) ", " (column-name ?colSQ) ", " (column-name ?colSR) crlf
                "     base cells = " (row-name ?rowB) (column-name ?col1) ", " (row-name ?rowB) (column-name ?col2) crlf
                "     target cells = " (row-name ?rowTQ) (column-name ?colSQ) ", " (row-name ?rowTR) (column-name ?colSR) crlf
            )
    )
)



(defrule J2-Exocet-in-columns-elimination
	(declare (salience ?*apply-a-blocked-rule-salience*))
	(technique ?cont J2-Exocet)
	(J2-exocet-in-columns ?cont ?nb1 ?nb2 ?rowB ?col1 ?col2 ?colSB ?colSQ ?colSR ?rowTQ ?rowTR)

    ;;; target candidate
    ?candz <- (candidate (context ?cont) (status cand) (number ?nbz&~?nb1&~?nb2) (row ?rowz&?rowTQ|?rowTR) (column ?colz&?colSQ|?colSR))
    (test (target-cell ?rowz ?colz ?rowTQ ?colSQ ?rowTR ?colSR))
=>
	(retract ?candz)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-JExocet*) then
        (printout t "     " ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz) crlf)
	)
)



