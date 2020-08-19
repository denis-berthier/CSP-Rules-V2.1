
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
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
;;;
;;; printing of cells
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-starting-cell-symbol() (printout t ?*starting-cell-symbol*))
(deffunction print-ending-cell-symbol() (printout t ?*ending-cell-symbol*))
(deffunction print-separation-sign-in-cell() (printout t ?*separation-sign-in-cell*))
(deffunction print-dot-in-cell() (printout t "."))

(deffunction print-number (?x) (printout t (number-name ?x)))
(deffunction print-numeral (?x) (printout t (numeral-name ?x)))
(deffunction print-row (?x) (printout t (row-name ?x)))
(deffunction print-column (?x) (printout t (column-name ?x)))
(deffunction print-rc-cell (?rc) (printout t (row-name (cell-row ?rc)) (column-name (cell-column ?rc))))

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





(deffunction print-bivalue-cell (?llc ?rlc ?csp)
	(bind ?nb1 (label-number ?llc))
    (bind ?cell1 (label-cell ?llc))
	(bind ?row1 (cell-row ?cell1))
	(bind ?col1 (cell-column ?cell1))
	(bind ?nb2 (label-number ?rlc))
    (bind ?cell2 (label-cell ?rlc))
	(bind ?row2 (cell-row ?cell2))
	(bind ?col2 (cell-column ?cell2))
    (bind ?lk (csp-var-type ?csp))

	(if (eq  ?lk rc)
		then (print-row ?row1) (print-column ?col1) (print-number-pair ?nb1 ?nb2)
	    else (if (eq  ?lk rn)
				then (print-row ?row1) (print-number ?nb1) (print-column-pair ?col1 ?col2)
				else (if (eq  ?lk cn)
						then (print-column ?col1) (print-number ?nb1) (print-row-pair ?row1 ?row2)
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
    (bind ?lk (csp-var-type ?csp))
	
	(if (eq  ?lk rc)
		then (print-row ?row1) (print-column ?col1) 
			(print-starting-cell-symbol) (print-number ?nb1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
	    else (if (eq  ?lk rn)
				then (print-row ?row1) (print-number ?nb1)
					(print-starting-cell-symbol) (print-column ?col1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
				else (if (eq  ?lk cn)
						then (print-column ?col1) (print-number ?nb1)
							(print-starting-cell-symbol) (print-row ?row1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
					)
			)
	)
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of deleted and contradictory candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-deleted-candidate (?zzz)
	(bind ?nb (label-number ?zzz))
    (bind ?cell (label-cell ?zzz))
	(bind ?row (cell-row ?cell))
	(bind ?col (cell-column ?cell))
	(printout t (row-name ?row) (column-name ?col) ?*non-equal-sign* (numeral-name ?nb))
)



(deffunction print-contradictory-candidates (?zzz1 ?zzz2)
	(bind ?nb1 (label-number ?zzz1))
    (bind ?cell1 (label-cell ?zzz1))
	(bind ?row1 (cell-row ?cell1))
	(bind ?col1 (cell-column ?cell1))
	(bind ?nb2 (label-number ?zzz2))
    (bind ?cell2 (label-cell ?zzz2))
	(bind ?row2 (cell-row ?cell2))
	(bind ?col2 (cell-column ?cell2))
	
	(printout t "nand(" (number-name ?nb1) (row-name ?row1) (column-name ?col1) " " (number-name ?nb2) (row-name ?row2) (column-name ?col2) ")")
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of ascending chains, hills and valleys
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-ordered-chain (?symbol ?l ?cells)
    (bind ?i 1)
    (while (<= ?i ?l)
        (print-rc-cell (nth$ ?i ?cells))
        (if (neq ?i ?l) then (printout t ?symbol))
        (bind ?i (+ ?i 1))
    )
)


(deffunction print-ascending-chain (?cells)
    (bind ?l (length$ ?cells))
    (printout t "asc[" (- ?l 1) "]: ")
    (print-ordered-chain < ?l ?cells)
    (printout t " ==> ")
)


(deffunction print-strong-ascending-chain (?cells)
    (bind ?l (length$ ?cells))
    (printout t "str-asc[" (- ?l 1) "]: ")
    (print-ordered-chain < ?l ?cells)
    (printout t " ==> ")
)


(deffunction print-descending-chain (?cells)
    (bind ?l (length$ ?cells))
    (printout t "desc[" (- ?l 1) "]: ")
    (print-ordered-chain > ?l ?cells)
    (printout t " ==> ")
)

    
(deffunction print-hill (?cells1 ?cells2)
    (bind ?l1 (length$ ?cells1))
    (bind ?l2 (length$ ?cells2))
    (bind ?l (- (+ ?l1 ?l2) 2))
    (printout t "hill[" ?l "]: ")
    (print-ordered-chain < ?l1 ?cells1)
    (printout t >)
    (print-ordered-chain > (- ?l2 1) (subseq$ ?cells2 2 ?l2))
    (printout t " ==> ")
)

    
(deffunction print-valley (?cells1 ?cells2)
    (bind ?l1 (length$ ?cells1))
    (bind ?l2 (length$ ?cells2))
    (bind ?l (- (+ ?l1 ?l2) 2))
    (printout t "valley[" ?l "]: ")
    (print-ordered-chain > ?l1 ?cells1)
    (printout t <)
    (print-ordered-chain < (- ?l2 1) (subseq$ ?cells2 2 ?l2))
    (printout t " ==> ")
)

    
(deffunction print-strong-hill (?cells1 ?cells2)
    (bind ?l1 (length$ ?cells1))
    (bind ?l2 (length$ ?cells2))
    (bind ?l (- (+ ?l1 ?l2) 2))
    (printout t "str-hill[" ?l "]: ")
    (print-ordered-chain < ?l1 ?cells1)
    (printout t >)
    (print-ordered-chain > (- ?l2 1) (subseq$ ?cells2 2 ?l2))
    (printout t " ==> ")
)

    
(deffunction print-strong-valley (?cells1 ?cells2)
    (bind ?l1 (length$ ?cells1))
    (bind ?l2 (length$ ?cells2))
    (bind ?l (- (+ ?l1 ?l2) 2))
    (printout t "str-valley[" ?l "]: ")
    (print-ordered-chain > ?l1 ?cells1)
    (printout t <)
    (print-ordered-chain < (- ?l2 1) (subseq$ ?cells2 2 ?l2))
    (printout t " ==> ")
)
    






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; description of ascending chains, hills and valleys
;;; for the blocked rules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction describe-rc-cell (?rc)
    (str-cat (row-name (cell-row ?rc)) (column-name (cell-column ?rc)))
)



(deffunction describe-deleted-candidate (?zzz)
    (bind ?nb (label-number ?zzz))
    (bind ?cell (label-cell ?zzz))
    (bind ?row (cell-row ?cell))
    (bind ?col (cell-column ?cell))
    (str-cat (row-name ?row) (column-name ?col) ?*non-equal-sign* (numeral-name ?nb))
)



(deffunction describe-ordered-chain (?symbol ?l ?cells)
    (bind ?str "")
    (bind ?i 1)
    (while (<= ?i ?l)
        (bind ?str (str-cat ?str (describe-rc-cell (nth$ ?i ?cells))))
        (if (neq ?i ?l) then (bind ?str (str-cat ?str ?symbol)))
        (bind ?i (+ ?i 1))
    )
    ?str
)


(deffunction describe-ascending-chain (?cells)
    (bind ?l (length$ ?cells))
    (str-cat "asc[" (- ?l 1) "]: " (describe-ordered-chain < ?l ?cells))
)


(deffunction describe-strong-ascending-chain (?cells)
    (bind ?l (length$ ?cells))
    (str-cat "str-asc[" (- ?l 1) "]: " (describe-ordered-chain < ?l ?cells))
)


(deffunction describe-descending-chain (?cells)
    (bind ?l (length$ ?cells))
    (str-cat "desc[" (- ?l 1) "]: " (describe-ordered-chain > ?l ?cells))
)

    
(deffunction describe-strong-descending-chain (?cells)
    (bind ?l (length$ ?cells))
    (str-cat "str-desc[" (- ?l 1) "]: " (describe-ordered-chain > ?l ?cells))
)


(deffunction describe-hill (?cells1 ?cells2)
    (bind ?l1 (length$ ?cells1))
    (bind ?l2 (length$ ?cells2))
    (bind ?l (- (+ ?l1 ?l2) 2))
    (str-cat
        "hill[" ?l "]: "
        (describe-ordered-chain < ?l1 ?cells1)
        ">"
        (describe-ordered-chain > (- ?l2 1) (subseq$ ?cells2 2 ?l2))
        " ==> "
    )
)


(deffunction describe-valley (?cells1 ?cells2)
    (bind ?l1 (length$ ?cells1))
    (bind ?l2 (length$ ?cells2))
    (bind ?l (- (+ ?l1 ?l2) 2))
    (str-cat
        "valley[" ?l "]: "
        (describe-ordered-chain > ?l1 ?cells1)
        "<"
        (describe-ordered-chain < (- ?l2 1) (subseq$ ?cells2 2 ?l2))
    )
)


(deffunction describe-strong-hill (?cells1 ?cells2)
    (bind ?l1 (length$ ?cells1))
    (bind ?l2 (length$ ?cells2))
    (bind ?l (- (+ ?l1 ?l2) 2))
    (str-cat
        "str-hill[" ?l "]: "
        (describe-ordered-chain < ?l1 ?cells1)
        ">"
        (describe-ordered-chain > (- ?l2 1) (subseq$ ?cells2 2 ?l2))
    )
)


(deffunction describe-strong-valley (?cells1 ?cells2)
    (bind ?l1 (length$ ?cells1))
    (bind ?l2 (length$ ?cells2))
    (bind ?l (- (+ ?l1 ?l2) 2))
    (str-cat
        "str-valley[" ?l "]: "
        (describe-ordered-chain > ?l1 ?cells1)
        "<"
        (describe-ordered-chain < (- ?l2 1) (subseq$ ?cells2 2 ?l2))
    )
)
    




