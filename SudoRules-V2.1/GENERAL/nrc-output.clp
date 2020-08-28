
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              NRC OUTPUT
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printing of cells
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-starting-cell-symbol() (printout t ?*starting-cell-symbol*))
(deffunction print-ending-cell-symbol() (printout t ?*ending-cell-symbol*))
(deffunction print-separation-sign-in-cell() (printout t ?*separation-sign-in-cell*))
(deffunction print-dot-in-cell() (printout t "."))

(deffunction print-number (?x) (printout t (number-name ?x)))
(deffunction print-numeral (?x) (printout t (numeral-name ?x)))
(deffunction print-row (?x) (printout t (row-name ?x)))
(deffunction print-column (?x) (printout t (column-name ?x)))
(deffunction print-block (?x) (printout t (block-name ?x)))
(deffunction print-square (?x) (printout t (square-name ?x)))
(deffunction print-square-2 (?r ?c) (print-row ?r) (print-column ?c))

(deffunction print-label (?l)
	(bind ?n (label-number ?l))
    (bind ?cell (label-cell ?l))
	(bind ?r (cell-row ?cell))
	(bind ?c (cell-column ?cell))
    (print-number ?n) (print-row ?r) (print-column ?c)
)



(deffunction print-number-pair (?x ?y) (print-starting-cell-symbol) (print-number ?x) (print-separation-sign-in-cell) (print-number ?y) (print-ending-cell-symbol))
(deffunction print-numeral-pair (?x ?y) (print-starting-cell-symbol) (print-numeral ?x) (print-separation-sign-in-cell) (print-numeral ?y) (print-ending-cell-symbol)) 
(deffunction print-row-pair (?x ?y) (print-starting-cell-symbol) (print-row ?x) (print-separation-sign-in-cell) (print-row ?y) (print-ending-cell-symbol)) 
(deffunction print-column-pair (?x ?y) (print-starting-cell-symbol) (print-column ?x) (print-separation-sign-in-cell) (print-column ?y) (print-ending-cell-symbol)) 
(deffunction print-square-pair (?x ?y) (print-starting-cell-symbol) (print-square ?x) (print-separation-sign-in-cell) (print-square ?y) (print-ending-cell-symbol)) 
(deffunction print-square-pair-2 (?r1 ?c1 ?r2 ?c2) (print-starting-cell-symbol) (print-square-2 ?r1 ?c1) (print-separation-sign-in-cell) (print-square-2 ?r2 ?c2) (print-ending-cell-symbol)) 





(deffunction print-bivalue-cell (?llc ?rlc ?csp)
	(bind ?nb1 (label-number ?llc))
    (bind ?cell1 (label-cell ?llc))
	(bind ?row1 (cell-row ?cell1))
	(bind ?col1 (cell-column ?cell1))
	(bind ?nb2 (label-number ?rlc))
    (bind ?cell2 (label-cell ?rlc))
	(bind ?row2 (cell-row ?cell2))
	(bind ?col2 (cell-column ?cell2))

    (bind ?csp-type (csp-var-type ?csp))

	(if (eq ?csp-type rc)
		then (print-row ?row1) (print-column ?col1) (print-number-pair ?nb1 ?nb2)
	    else (if (eq ?csp-type rn)
				then (print-row ?row1) (print-number ?nb1) (print-column-pair ?col1 ?col2)
				else (if (eq ?csp-type cn)
						then (print-column ?col1) (print-number ?nb1) (print-row-pair ?row1 ?row2)
						else (if (eq ?csp-type bn)
								then (bind ?bl1 (block ?row1 ?col1))
									(print-block ?bl1) (print-number ?nb1) (print-square-pair-2 ?row1 ?col1 ?row2 ?col2)
							)
					)
			)
	)
)



;;; the convention for the final cell of whips or braids is to have a dot for the missing final right-linking candidate


(deffunction print-final-cell (?llc ?rlc ?csp)
	(bind ?nb1 (label-number ?llc))
    (bind ?cell1 (label-cell ?llc))
	(bind ?row1 (cell-row ?cell1))
	(bind ?col1 (cell-column ?cell1))

    (bind ?csp-type (csp-var-type ?csp))
	
	(if (eq ?csp-type rc)
		then (print-row ?row1) (print-column ?col1) 
			(print-starting-cell-symbol) (print-number ?nb1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
	    else (if (eq ?csp-type rn)
				then (print-row ?row1) (print-number ?nb1)
					(print-starting-cell-symbol) (print-column ?col1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
				else (if (eq ?csp-type cn)
						then (print-column ?col1) (print-number ?nb1)
							(print-starting-cell-symbol) (print-row ?row1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
						else (if (eq ?csp-type bn)
								then (bind ?bl1 (block ?row1 ?col1))
									(print-block ?bl1) (print-number ?nb1)
									 (print-starting-cell-symbol) (print-square-2 ?row1 ?col1)(print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
							)
					)
			)
	)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printing of deleted and contradictory candidates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-deleted-candidate (?zzz)
	(bind ?nb (label-number ?zzz))
    (bind ?cell (label-cell ?zzz))
	(bind ?row (cell-row ?cell))
	(bind ?col (cell-column ?cell))
	(printout t ?*row-symbol* ?row ?*column-symbol* ?col ?*non-equal-sign* ?*numeral-symbol* ?nb)
)



(deffunction print-contradictory-candidates (?chain-type ?n ?zzz1 ?zzz2)
	(bind ?nb1 (label-number ?zzz1))
    (bind ?cell1 (label-cell ?zzz1))
	(bind ?row1 (cell-row ?cell1))
	(bind ?col1 (cell-column ?cell1))
	(bind ?nb2 (label-number ?zzz2))
    (bind ?cell2 (label-cell ?zzz2))
	(bind ?row2 (cell-row ?cell2))
	(bind ?col2 (cell-column ?cell2))
	
	(printout t ?chain-type "-contrad[" ?n "](" ?*number-symbol* ?nb1 ?*row-symbol* ?row1 ?*column-symbol* ?col1 " " ?*number-symbol* ?nb2 ?*row-symbol* ?row2 ?*column-symbol* ?col2")")
)






(deffunction print-forcing-bi-whip (?zzz)
    ;;; provisoire
    (printout t "forcing-bi-whip-elimination: ")
    (printout t ?*implication-sign*)
    (print-deleted-candidate ?zzz)
    (printout t crlf)
)
