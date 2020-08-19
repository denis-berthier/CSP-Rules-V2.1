
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
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
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 
;;; APPLICATION SPECIFIC FUNCTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printing of cells
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-starting-cell-symbol() (printout t ?*starting-cell-symbol*))
(deffunction print-ending-cell-symbol() (printout t ?*ending-cell-symbol*))
(deffunction print-separation-sign-in-cell() (printout t ?*separation-sign-in-cell*))
(deffunction print-dot-in-cell() (printout t "."))

(deffunction print-number (?x) (printout t (number-name ?x)))


(deffunction print-numeral (?x) 
    (if (<= ?x 9)
        then (printout t (numeral-name ?x))
        else (printout t "/" ?x "/")
    )
)

(deffunction row-name (?x) (sym-cat ?*row-symbol* (- ?x (- 1 ?*first-row*))))
(deffunction column-name (?x) (sym-cat ?*column-symbol* (- ?x (- 1 ?*first-row*))))

(deffunction print-row (?x) (printout t (row-name ?x)))
(deffunction print-column (?x) (printout t (column-name ?x)))

(deffunction print-label (?l)
	(bind ?n (label-number ?l))
	(bind ?r (label-row ?l))
	(bind ?c (label-column ?l))
    (print-number ?n) (print-row ?r) (print-column ?c)
)



(deffunction print-number-pair (?x ?y) (print-starting-cell-symbol) (print-number ?x) (print-separation-sign-in-cell) (print-number ?y) (print-ending-cell-symbol))

(deffunction print-numeral-pair (?x ?y) (print-starting-cell-symbol) (print-numeral ?x) (print-separation-sign-in-cell) (print-numeral ?y) (print-ending-cell-symbol)) 

(deffunction print-row-pair (?x ?y) (print-starting-cell-symbol) (print-row ?x) (print-separation-sign-in-cell) (print-row ?y) (print-ending-cell-symbol)) 

(deffunction print-column-pair (?x ?y) (print-starting-cell-symbol) (print-column ?x) (print-separation-sign-in-cell) (print-column ?y) (print-ending-cell-symbol)) 




(deffunction print-bivalue-cell (?llc ?rlc ?csp)
    (bind ?csp-var-print-symbol (csp-var-print-symbol ?csp))
    
	(bind ?nb1 (label-number ?llc))
	(bind ?row1 (label-row ?llc))
	(bind ?col1 (label-column ?llc))
	(bind ?nb2 (label-number ?rlc))
	(bind ?row2 (label-row ?rlc))
	(bind ?col2 (label-column ?rlc))
	
	(if (or (eq ?csp-var-print-symbol rc) (eq ?csp-var-print-symbol hrc) (eq ?csp-var-print-symbol vrc))
		then 
            (if (eq ?csp-var-print-symbol hrc) then (printout t h))
            (if (eq ?csp-var-print-symbol vrc) then (printout t v))
            (print-row ?row1) (print-column ?col1) (print-number-pair ?nb1 ?nb2)
	    else (if (eq ?csp-var-print-symbol rn)
				then (print-row ?row1) (print-number ?nb1) (print-column-pair ?col1 ?col2)
				else (if (eq ?csp-var-print-symbol cn)
						then (print-column ?col1) (print-number ?nb1) (print-row-pair ?row1 ?row2)
					)
			)
	)
)



;;; the convention for the final cell of whips or braids is to have a dot for the missing final right-linking candidate


(deffunction print-final-cell (?llc ?rlc ?csp)
    (bind ?csp-var-print-symbol (csp-var-print-symbol ?csp))
    
	(bind ?nb1 (label-number ?llc))
	(bind ?row1 (label-row ?llc))
	(bind ?col1 (label-column ?llc))
	
	(if (or (eq ?csp-var-print-symbol rc) (eq ?csp-var-print-symbol hrc) (eq ?csp-var-print-symbol vrc))
		then 
            (if (eq ?csp-var-print-symbol hrc) then (printout t h))
            (if (eq ?csp-var-print-symbol vrc) then (printout t v))
            (print-row ?row1) (print-column ?col1) 
			(print-starting-cell-symbol) (print-number ?nb1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
	    else (if (eq ?csp-var-print-symbol rn)
				then (print-row ?row1) (print-number ?nb1)
					(print-starting-cell-symbol) (print-column ?col1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
				else (if (eq ?csp-var-print-symbol cn)
						then (print-column ?col1) (print-number ?nb1)
							(print-starting-cell-symbol) (print-row ?row1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
					)
			)
	)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printing of deleted or contradictory candidates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-deleted-candidate (?zzz)
	(bind ?nb (label-number ?zzz))
	(bind ?row (label-row ?zzz))
	(bind ?col (label-column ?zzz))
    (bind ?type-sign (label-symbol ?zzz))
	(printout t ?type-sign 
                ?*row-symbol* (- ?row (- 1 ?*first-row*))
                ?*column-symbol* (- ?col (- 1 ?*first-row*))
                ?*non-equal-sign* ?*numeral-symbol* ?nb
    )
)


(deffunction print-contradictory-candidates (?type-sign ?n ?zzz1 ?zzz2)
	(bind ?nb1 (label-number ?zzz1))
	(bind ?row1 (label-row ?zzz1))
	(bind ?col1 (label-column ?zzz1))
	(bind ?nb2 (label-number ?zzz2))
	(bind ?row2 (label-row ?zzz2))
	(bind ?col2 (label-column ?zzz2))
	
	(printout t ?type-sign "-contrad[" ?n "](" 
                ?*number-symbol* ?nb1 
                ?*row-symbol* (- ?row1 (- 1 ?*first-row*)) 
                ?*column-symbol* (- ?col1 (- 1 ?*first-row*)) 
                " " 
                ?*number-symbol* ?nb2 
                ?*row-symbol* (- ?row2 (- 1 ?*first-row*)) 
                ?*column-symbol* (- ?col2 (- 1 ?*first-row*))
                ")"
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printing of g2-whips 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-g2number-pair (?x ?ya ?yb) 
    (print-starting-cell-symbol) (print-number ?x) (print-separation-sign-in-cell) 
    (if (eq ?yb 0)
        then (print-number ?ya)
        else (print-number ?yb) (print-or-sign) (print-number ?ya)
    )
    (print-ending-cell-symbol)
)

(deffunction print-g2numeral-pair (?x ?ya ?yb) 
    (print-starting-cell-symbol) (print-numeral ?x) (print-separation-sign-in-cell) 
    (print-numeral ?ya) (print-or-sign) (print-numeral ?yb) 
    (print-ending-cell-symbol)
)

(deffunction print-g2row-pair (?x ?ya ?yb) 
    (print-starting-cell-symbol) (print-row ?x) (print-separation-sign-in-cell) 
    (print-row ?ya) (print-or-sign) (print-row ?yb) 
    (print-ending-cell-symbol)
)

(deffunction print-g2column-pair (?x ?ya ?yb) 
    (print-starting-cell-symbol) (print-column ?x) (print-separation-sign-in-cell)
    (print-column ?ya) (print-or-sign) (print-column ?yb)
    (print-ending-cell-symbol)
)





(deffunction print-g2-bivalue-cell (?llc ?rlca ?rlcb ?csp)
    
    (if (eq ?rlcb 0) then (print-bivalue-cell ?llc ?rlca ?csp) (return))

    (bind ?csp-var-print-symbol (csp-var-print-symbol ?csp))

	(bind ?nb1 (label-number ?llc))
	(bind ?row1 (label-row ?llc))
	(bind ?col1 (label-column ?llc))
    
	(bind ?nb2a (label-number ?rlca))
	(bind ?row2a (label-row ?rlca))
	(bind ?col2a (label-column ?rlca))
    
	(bind ?nb2b (label-number ?rlcb))
	(bind ?row2b (label-row ?rlcb))
	(bind ?col2b (label-column ?rlcb))
	
	(if (or (eq ?csp-var-print-symbol rc) (eq ?csp-var-print-symbol hrc) (eq ?csp-var-print-symbol vrc))
		then 
            (if (eq ?csp-var-print-symbol hrc) then (printout t h))
            (if (eq ?csp-var-print-symbol vrc) then (printout t v))
            (print-row ?row1) (print-column ?col1) (print-g2number-pair ?nb1 ?nb2a ?nb2b)

	    else (if (eq ?csp-var-print-symbol rn)
				then (print-row ?row1) (print-number ?nb1) (print-g2column-pair ?col1 ?col2a ?col2b)
				else (if (eq ?csp-var-print-symbol cn)
						then (print-column ?col1) (print-number ?nb1) (print-g2row-pair ?row1 ?row2a ?row2b)
					)
			)
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printing of g3-whips 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-g3number-triplet (?x ?ya ?yb ?yc) (print-starting-cell-symbol) (print-number ?x) (print-separation-sign-in-cell) (print-number ?ya) (print-or-sign) (print-number ?yb) (print-or-sign) (print-number ?yc) (print-ending-cell-symbol))

(deffunction print-g3numeral-triplet (?x ?ya ?yb ?yc) (print-starting-cell-symbol) (print-numeral ?x) (print-separation-sign-in-cell) (print-numeral ?ya) (print-or-sign) (print-numeral ?yb) (print-or-sign) (print-numeral ?yc) (print-ending-cell-symbol)) 

(deffunction print-g3row-triplet (?x ?ya ?yb ?yc) (print-starting-cell-symbol) (print-row ?x) (print-separation-sign-in-cell) (print-row ?ya) (print-or-sign) (print-row ?yb) (print-or-sign) (print-row ?yc) (print-ending-cell-symbol)) 

(deffunction print-g3column-triplet (?x ?ya ?yb ?yc) (print-starting-cell-symbol) (print-column ?x) (print-separation-sign-in-cell) (print-column ?ya) (print-or-sign) (print-column ?yb) (print-or-sign) (print-column ?yc) (print-ending-cell-symbol)) 




(deffunction print-g3-bivalue-cell (?llc ?rlca ?rlcb ?rlcc  ?csp)
    
    (if (eq ?rlcb 0) then (print-bivalue-cell ?llc ?rlca  ?csp) (return))
    (if (eq ?rlcc 0) then (print-g2-bivalue-cell ?llc ?rlca ?rlcb  ?csp) (return))

    (bind ?csp-var-print-symbol (csp-var-print-symbol  ?csp))

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
	
	(if (or (eq ?csp-var-print-symbol rc) (eq ?csp-var-print-symbol hrc) (eq ?csp-var-print-symbol vrc))
		then 
            (if (eq ?csp-var-print-symbol hrc) then (printout t h))
            (if (eq ?csp-var-print-symbol vrc) then (printout t v))
            (print-row ?row1) (print-column ?col1) (print-g3number-triplet ?nb1 ?nb2a ?nb2b ?nb2c)

	    else (if (eq ?csp-var-print-symbol rn)
				then (print-row ?row1) (print-number ?nb1) (print-g3column-triplet ?col1 ?col2a ?col2b ?col2c)
				else (if (eq ?csp-var-print-symbol cn) 
						then (print-column ?col1) (print-number ?nb1) (print-g3row-triplet ?row1 ?row2a ?row2b ?row2c)
					)
			)
	)
)






