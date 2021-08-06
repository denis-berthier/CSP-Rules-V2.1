
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              FINNED SWORDFISH
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2021             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-finned-swordfish
    (declare (salience ?*finned-swordfish-salience*))
    (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont triplet))
    )
=>
    (assert (technique ?cont finned-swordfish))
    (bind ?*technique* FSHT)
)



;;; rows

(defrule L3-finned-swordfish-in-rows
    (declare (salience ?*finned-swordfish-salience*))
    (technique ?cont finned-swordfish)

    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col1) (block ?bl11))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col2&~?col1) (block ?bl12))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?row2&~?row1) (block ?bl22))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?col3&~?col1&~?col2) (block ?bl23))

    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?colx&~?col1&~?col2&~?col3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?colx&~?col1&~?col2&~?col3)))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row3&~?row1&~?row2) (block ?bl31))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (column ?colx) (block ?bl33&:(eq ?bl33 (block ?row3 ?col3))))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (column ?coly&~?col1&~?col2) (block ?bly&~?bl33)))
    
    ;;; then the candidature of this number for any cell in block b33
    ;;; and in any of the 3 columns but not in any of the 3 rows
    ;;; can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                (block ?bl33)
                (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3)))
                (row ?rowz&~?row1&~?row2&~?row3)
            )
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-finned-swordfish*) then
            (printout t "finned-swordfish-in-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont finned-swordfish-in-rows ?zzz ?nb ?row1 ?row2 ?row3 ?col1 ?col2 ?col3))
    )
)


(defrule apply-to-more-targets-L3-finned-swordfish-in-rows
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont finned-swordfish-in-rows ?nb ?zzz ?row1 ?row2 ?row3 ?col1 ?col2 ?col3)
    ;;; then the candidature of this number for any cell in block b33
    ;;; and in any of the 3 columns but not in any of the 3 rows
    ;;; can be retracted
    (rc-cell ?row3 ?col3 ?bl33 ?sq3)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                (block ?bl33)
                (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3)))
                (row ?rowz&~?row1&~?row2&~?row3)
            )
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-finned-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; columns

(defrule L3-finned-swordfish-in-columns
	(declare (salience ?*finned-swordfish-salience*))
	(technique ?cont finned-swordfish)
	
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col1) (block ?bl11))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row2&~?row1) (block ?bl21))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?col2&~?col1) (block ?bl22))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?row3&~?row1&~?row2) (block ?bl32))

	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?rowx&~?row1&~?row2&~?row3)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?rowx&~?row1&~?row2&~?row3)))

	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col3&~?col1&~?col2) (block ?bl13))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?rowx) (column ?col3) (block ?bl33&:(eq ?bl33 (block ?row3 ?col3))))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (row ?rowy&~?row1&~?row2) (block ?bly&~?bl33)))
    
    ;;; then the candidature of this number for any cell in block b33
    ;;; and in any of the 3 rows but not in any of the 3 columns
    ;;; can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                (block ?bl33)
                (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3)))
                (column ?colz&~?col1&~?col2&~?col3)
            )
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-finned-swordfish*) then
            (printout t "finned-swordfish-in-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont finned-swordfish-in-columns ?zzz ?nb ?col1 ?col2 ?col3 ?row1 ?row2 ?row3))
    )
)


(defrule apply-to-more-targets-L3-finned-swordfish-in-columns
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont finned-swordfish-in-columns ?zzz ?nb ?col1 ?col2 ?col3 ?row1 ?row2 ?row3)
    ;;; then the candidature of this number for any cell in block b33
    ;;; and in any of the 3 rows but not in any of the 3 columns
    ;;; can be retracted
    (rc-cell ?row3 ?col3 ?bl33 ?sq3)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                (block ?bl33)
                (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3)))
                (column ?colz&~?col1&~?col2&~?col3)
            )
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-finned-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)

