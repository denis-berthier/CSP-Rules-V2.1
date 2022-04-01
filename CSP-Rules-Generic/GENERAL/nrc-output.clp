
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              NRC-OUTPUT
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 
;;; NRC SPECIFIC FUNCTIONS 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-number (?x) (printout t (number-name ?x)))
(deffunction print-numeral (?x) (printout t (numeral-name ?x)))
(deffunction print-row (?x) (printout t (row-name ?x)))
(deffunction print-column (?x) (printout t (column-name ?x)))
(deffunction print-block (?x) (printout t (block-name ?x)))
(deffunction print-square (?x) (printout t (square-name ?x)))
(deffunction print-square-2 (?r ?c) (print-row ?r) (print-column ?c)))
(deffunction print-diagonal (?x) (printout t (diagonal-name ?x)))
(deffunction print-anti-diagonal (?x) (printout t (anti-diagonal-name ?x)))


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


(deffunction print-final-cell (?llc ?rlc ?csp-type)
	(bind ?nb1 (label-number ?llc))
    (bind ?cell1 (label-cell ?llc))
	(bind ?row1 (cell-row ?cell1))
	(bind ?col1 (cell-column ?cell1))
	
	(if (eq ?csp-type rc)
		then (print-row ?row1) (print-column ?col1) 
			(print-starting-cell-symbol) (print-number ?nb1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
	    else (if (eq ?csp-type rn)
				then (print-row ?row1) (print-number ?nb1)
					(print-starting-cell-symbol) (print-column ?col1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
				;else (if (eq ?csp-type cn)
						then (print-column ?col1) (print-number ?nb1)
							(print-starting-cell-symbol) (print-row ?row1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
						;else (if (eq ?csp-type bn)
						;		then (bind ?bl1 (block ?row1 ?col1))
						;			(print-block ?bl1) (print-number ?nb1)
						;			 (print-starting-cell-symbol) (print-square-2 ?row1 ?col1)(print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
						;	)
					;)
			)
	)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Printing of deleted or contradictory candidates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-deleted-candidate (?zzz)
	(bind ?nb (label-number ?zzz))
    (bind ?cell (label-cell ?zzz))
	(bind ?row (cell-row ?cell))
	(bind ?col (cell-column ?cell))
	(printout t ?*nrc-row-symbol* ?row ?*nrc-column-symbol* ?col ?*non-equal-sign* ?*nrc-numeral-symbol* ?nb)
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
	
	(printout t ?chain-type "-contrad[" ?n "](" ?*nrc-number-symbol* ?nb1 ?*nrc-row-symbol* ?row1 ?*nrc-column-symbol* ?col1 " " ?*nrc-number-symbol* ?nb2 ?*nrc-row-symbol* ?row2 ?*nrc-column-symbol* ?col2")")
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Printing of g2-whips
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-g2number-pair (?x ?ya ?yb) (print-starting-cell-symbol) (print-number ?x) (print-separation-sign-in-cell) (print-number ?ya) (print-or-sign) (print-number ?yb) (print-ending-cell-symbol))

(deffunction print-g2numeral-pair (?x ?ya ?yb) (print-starting-cell-symbol) (print-numeral ?x) (print-separation-sign-in-cell) (print-numeral ?ya) (print-or-sign) (print-numeral ?yb) (print-ending-cell-symbol)) 

(deffunction print-g2row-pair (?x ?ya ?yb) (print-starting-cell-symbol) (print-row ?x) (print-separation-sign-in-cell) (print-row ?ya) (print-or-sign) (print-row ?yb) (print-ending-cell-symbol)) 

(deffunction print-g2column-pair (?x ?ya ?yb) (print-starting-cell-symbol) (print-column ?x) (print-separation-sign-in-cell) (print-column ?ya) (print-or-sign) (print-column ?yb) (print-ending-cell-symbol)) 

(deffunction print-g2square-pair (?x ?ya ?yb) (print-starting-cell-symbol) (print-square ?x) (print-separation-sign-in-cell) (print-square ?ya) (print-or-sign) (print-square ?yb) (print-ending-cell-symbol)) 

(deffunction print-g2square-pair-2 (?r1 ?c1 ?r2a ?c2a ?r2b ?c2b) (print-starting-cell-symbol) (print-square-2 ?r1 ?c1) (print-separation-sign-in-cell) (print-square-2 ?r2a ?c2a) (print-or-sign) (print-square-2 ?r2b ?c2b) (print-ending-cell-symbol)) 





(deffunction print-g2-bivalue-cell (?llc ?rlca ?rlcb ?csp)
    
    (if (eq ?rlcb 0) then (print-bivalue-cell ?llc ?rlca ?csp) (return))

    (bind ?csp-var-type (csp-var-type ?csp))

	(bind ?nb1 (label-number ?llc))
	(bind ?row1 (label-row ?llc))
	(bind ?col1 (label-column ?llc))
    
	(bind ?nb2a (label-number ?rlca))
	(bind ?row2a (label-row ?rlca))
	(bind ?col2a (label-column ?rlca))
    
	(bind ?nb2b (label-number ?rlcb))
	(bind ?row2b (label-row ?rlcb))
	(bind ?col2b (label-column ?rlcb))
	
	(if (eq ?csp-var-type rc) 
		then (print-row ?row1) (print-column ?col1) (print-g2number-pair ?nb1 ?nb2a ?nb2b)
	    else (if (eq ?csp-var-type rn) 
				then (print-row ?row1) (print-number ?nb1) (print-g2column-pair ?col1 ?col2a ?col2b)
				else (if (eq ?csp-var-type cn) 
						then (print-column ?col1) (print-number ?nb1) (print-g2row-pair ?row1 ?row2a ?row2b)
						else (if (eq ?csp-var-type bn) 
								then (bind ?bl1 (block ?row1 ?col1))
									(print-block ?bl1) (print-number ?nb1) (print-g2square-pair-2 ?row1 ?col1 ?row2a ?col2a ?row2b ?col2b)
							)
					)
			)
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Printing of g3-whips
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-g3number-triplet (?x ?ya ?yb ?yc) (print-starting-cell-symbol) (print-number ?x) (print-separation-sign-in-cell) (print-number ?ya) (print-or-sign) (print-number ?yb) (print-or-sign) (print-number ?yc) (print-ending-cell-symbol))

(deffunction print-g3numeral-triplet (?x ?ya ?yb ?yc) (print-starting-cell-symbol) (print-numeral ?x) (print-separation-sign-in-cell) (print-numeral ?ya) (print-or-sign) (print-numeral ?yb) (print-or-sign) (print-numeral ?yc) (print-ending-cell-symbol)) 

(deffunction print-g3row-triplet (?x ?ya ?yb ?yc) (print-starting-cell-symbol) (print-row ?x) (print-separation-sign-in-cell) (print-row ?ya) (print-or-sign) (print-row ?yb) (print-or-sign) (print-row ?yc) (print-ending-cell-symbol)) 

(deffunction print-g3column-triplet (?x ?ya ?yb ?yc) (print-starting-cell-symbol) (print-column ?x) (print-separation-sign-in-cell) (print-column ?ya) (print-or-sign) (print-column ?yb) (print-or-sign) (print-column ?yc) (print-ending-cell-symbol)) 

(deffunction print-g3square-triplet (?x ?ya ?yb ?yc) (print-starting-cell-symbol) (print-square ?x) (print-separation-sign-in-cell) (print-square ?ya) (print-or-sign) (print-square ?yb) (print-or-sign) (print-square ?yc) (print-ending-cell-symbol)) 

(deffunction print-g3square-triplet-2 (?r1 ?c1 ?r2a ?c2a ?r2b ?c2b ?r2c ?c2c) (print-starting-cell-symbol) (print-square-2 ?r1 ?c1) (print-separation-sign-in-cell) (print-square-2 ?r2a ?c2a) (print-or-sign) (print-square-2 ?r2b ?c2b) (print-or-sign) (print-square-2 ?r2c ?c2c) (print-ending-cell-symbol)) 





(deffunction print-g3-bivalue-cell (?llc ?rlca ?rlcb ?rlcc ?csp)
    
    (if (eq ?rlcb 0) then (print-bivalue-cell ?llc ?rlca ?csp) (return))
    (if (eq ?rlcc 0) then (print-g2bivalue-cell ?llc ?rlca ?rlcb ?csp) (return))

    (bind ?csp-var-type (csp-var-type ?csp))

	(bind ?nb1 (label-number ?llc))
	(bind ?row1 (label-row ?llc))
	(bind ?col1 (label-column ?llc))
    
	(bind ?nb2a (label-number ?rlca))
	(bind ?row2a (label-row ?rlca))
	(bind ?col2a (label-column ?rlca))
    
	(bind ?nb2b (label-number ?rlcb))
	(bind ?row2b (label-row ?rlcb))
	(bind ?col2b (label-column ?rlcb))
    
	(bind ?nb2c (label-number ?rlcc))
	(bind ?row2c (label-row ?rlcc))
	(bind ?col2c (label-column ?rlcc))
	
	(if (eq ?csp-var-type rc) 
		then (print-row ?row1) (print-column ?col1) (print-g3number-triplet ?nb1 ?nb2a ?nb2b ?nb2c)
	    else (if (eq ?csp-var-type rn) 
				then (print-row ?row1) (print-number ?nb1) (print-g3column-triplet ?col1 ?col2a ?col2b ?col2c)
				else (if (eq ?csp-var-type cn) 
						then (print-column ?col1) (print-number ?nb1) (print-g3row-triplet ?row1 ?row2a ?row2b ?row2c)
						else (if (eq ?csp-var-type bn) 
								then (bind ?bl1 (block ?row1 ?col1))
									(print-block ?bl1) (print-number ?nb1) (print-g3square-triplet-2 ?row1 ?col1 ?row2a ?col2a ?row2b ?col2b ?row2c ?col2c)
							)
					)
			)
	)
)





