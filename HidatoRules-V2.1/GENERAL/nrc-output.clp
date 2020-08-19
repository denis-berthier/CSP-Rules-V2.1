
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / HIDATORULES
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


(deffunction print-numeral (?x) 
    (if (<= ?x 9)
        then (printout t (numeral-name ?x))
        else (printout t "/" ?x "/")
    )
)

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
(deffunction print-rc-pair (?r1 ?c1 ?r2 ?c2) (print-starting-cell-symbol) (print-row ?r1) (print-column ?c1) (print-separation-sign-in-cell) (print-row ?r2) (print-column ?c2) (print-ending-cell-symbol)) 





(deffunction print-bivalue-cell (?llc ?rlc  ?csp)
    (bind ?csp-var-type (csp-var-type  ?csp))
    
	(bind ?nb1 (label-number ?llc))
	(bind ?row1 (label-row ?llc))
	(bind ?col1 (label-column ?llc))
	(bind ?nb2 (label-number ?rlc))
	(bind ?row2 (label-row ?rlc))
	(bind ?col2 (label-column ?rlc))
	
	(if (eq ?csp-var-type rc)
		then (print-row ?row1) (print-column ?col1) (print-number-pair ?nb1 ?nb2)
	    else (if (eq ?csp-var-type n) 
				then (print-number ?nb1) (print-rc-pair ?row1 ?col1 ?row2 ?col2))
			
	)
)



;;; the convention for the final cell of whips or braids is to have a dot for the missing final right-linking candidate


(deffunction print-final-cell (?llc ?rlc  ?csp)
    (bind ?csp-var-type (csp-var-type  ?csp))
    
	(bind ?nb1 (label-number ?llc))
	(bind ?row1 (label-row ?llc))
	(bind ?col1 (label-column ?llc))
	
	(if (eq ?csp-var-type rc)
		then (print-row ?row1) (print-column ?col1) 
             (print-starting-cell-symbol) (print-number ?nb1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
	    else (if (eq ?csp-var-type n) 
				then (print-number ?nb1)
					(print-starting-cell-symbol) 
                    (print-row ?row1) (print-column ?col1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
            )
	)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of deleted or contradictory candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-deleted-candidate (?zzz)
	(bind ?nb (label-number ?zzz))
	(bind ?row (label-row ?zzz))
	(bind ?col (label-column ?zzz))
	(printout t ?*row-symbol* ?row ?*column-symbol* ?col ?*non-equal-sign* ?*numeral-symbol* ?nb)
)


(deffunction print-contradictory-candidates (?type ?n ?zzz1 ?zzz2)
	(bind ?nb1 (label-number ?zzz1))
	(bind ?row1 (label-row ?zzz1))
	(bind ?col1 (label-column ?zzz1))
	(bind ?nb2 (label-number ?zzz2))
	(bind ?row2 (label-row ?zzz2))
	(bind ?col2 (label-column ?zzz2))
	
	(printout t ?type "-contrad[" ?n "](" ?*number-symbol* ?nb1 ?*row-symbol* ?row1 ?*column-symbol* ?col1 " " ?*number-symbol* ?nb2 ?*row-symbol* ?row2 ?*column-symbol* ?col2")")
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of g2-whips 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-g2-number-pair (?x ?ya ?yb) (print-starting-cell-symbol) (print-number ?x) (print-separation-sign-in-cell) (print-number ?ya) (print-or-sign) (print-number ?yb) (print-ending-cell-symbol))

(deffunction print-g2-numeral-pair (?x ?ya ?yb) (print-starting-cell-symbol) (print-numeral ?x) (print-separation-sign-in-cell) (print-numeral ?ya) (print-or-sign) (print-numeral ?yb) (print-ending-cell-symbol)) 

(deffunction print-g2-cell-pair (?x ?y ?xa ?ya ?xb ?yb) (print-starting-cell-symbol) (print-row ?x) (print-column ?y) (print-separation-sign-in-cell) (print-row ?xa) (print-column ?ya) (print-or-sign) (print-row ?xb) (print-column ?yb)(print-ending-cell-symbol)) 





(deffunction print-g2-bivalue-cell (?llc ?rlca ?rlcb  ?csp)
    
    (if (eq ?rlcb 0) then (print-bivalue-cell ?llc ?rlca  ?csp) (return))

    (bind ?csp-var-type (csp-var-type  ?csp))

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
		then (print-row ?row1) (print-column ?col1) (print-g2-number-pair ?nb1 ?nb2a ?nb2b)
	    else (if (eq ?csp-var-type n) 
				then (print-number ?nb1) (print-g2-cell-pair ?row1 ?col1 ?row2a ?col2a ?row2b ?col2b)
			)
	)
)









