
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printing of cells
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-value (?x) (printout t ?x))
(deffunction print-value-symbol (?x ?type) (printout t (value-name ?x ?type)))
(deffunction print-row (?x) (printout t (row-name ?x)))
(deffunction print-column (?x) (printout t (column-name ?x)))

(deffunction print-label (?l)
	(bind ?val (label-value ?l))
    (bind ?type (label-type-symbol ?l))
	(bind ?row (label-row ?l))
	(bind ?col (label-column ?l))
    (print-value-symbol ?val ?type) (printout t ?type (row-name ?row) (column-name ?col))
)


(deffunction print-label-csp-var (?l)
    (bind ?type (label-type-symbol ?l))
	(bind ?row (label-row ?l))
	(bind ?col (label-column ?l))
    (printout t ?type (row-name ?row) (column-name ?col))
)




(deffunction print-value-pair (?x ?y) (print-starting-cell-symbol) (print-value ?x) (print-separation-sign-in-cell) (print-value ?y) (print-ending-cell-symbol))

(deffunction print-value-symbol-pair (?x ?y ?type) (print-starting-cell-symbol) (print-value-symbol ?x ?type) (print-separation-sign-in-cell) (print-value-symbol ?y ?type) (print-ending-cell-symbol))





(deffunction print-bivalue-cell (?llc ?rlc ?csp)
	(bind ?val1 (label-value ?llc))
	(bind ?row1 (label-row ?llc))
	(bind ?col1 (label-column ?llc))
    (bind ?type1 (label-type-symbol ?llc))
	(bind ?val2 (label-value ?rlc))
	(bind ?row2 (label-row ?rlc))
	(bind ?col2 (label-column ?rlc))
    (bind ?type2 (label-type-symbol ?rlc))
	
    (if (or (neq ?row1 ?row2) (neq ?col1 ?col2) (neq ?type1 ?type2)) then (return "ERROR in PRINT-BIVALUE-CELL") (halt))
	(print-label-csp-var ?llc) 
    (print-value-symbol-pair ?val1 ?val2 ?type1)
)



;;; the convention for the final cell of whips or braids is to have a dot for the missing final right-linking candidate


(deffunction print-final-cell (?llc ?rlc ?csp)
	(bind ?val1 (label-value ?llc))
	(bind ?row1 (label-row ?llc))
	(bind ?col1 (label-column ?llc))
    (bind ?type1 (label-type-symbol ?llc))
	
    (if (neq ?rlc .) then (return "ERROR in PRINT-FINAL-CELL") (halt))
	(print-label-csp-var ?llc) (print-starting-cell-symbol) (print-value-symbol ?val1 ?type1) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printing of deleted candidates
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-candidate (?lab)
    (bind ?value (label-value ?lab))
    (if (eq (label-type-symbol ?lab) B) then (printout t (B-value-name ?value)) (print-label-csp-var ?lab) (return))
    (if (eq (label-type-symbol ?lab) P) then (printout t (P-value-name ?value)) (print-label-csp-var ?lab) (return))
    (if (eq (label-type-symbol ?lab) I) then (printout t (I-value-name ?value)) (print-label-csp-var ?lab) (return))
    (printout t ?value)
	)

(deffunction pretty-print-candidate (?lab)
	(print-label-csp-var ?lab)
    (printout t ?*equal-sign*)
    (bind ?value (label-value ?lab))
    (if (eq (label-type-symbol ?lab) B) then (printout t (B-value-name ?value)) else (printout t ?value))
)


(deffunction print-deleted-candidate (?lab)
    (bind ?value (label-value ?lab))
    (bind  ?symb (label-type-symbol ?lab))
	(print-label-csp-var ?lab)
    (printout t ?*non-equal-sign*)
    (printout t (value-name ?value ?symb))
)



(deffunction print-deleted-B-candidate (?value ?row ?col)
	(printout t "B" ?*row-symbol* ?row ?*column-symbol* ?col ?*non-equal-sign* ?*numeral-symbol* (B-value-name ?value))
)

(deffunction print-deleted-H-candidate (?value ?row ?col)
	(printout t "H" ?*row-symbol* ?row ?*column-symbol* ?col ?*non-equal-sign* ?*numeral-symbol* ?value)
)

(deffunction print-deleted-V-candidate (?value ?row ?col)
	(printout t "V" ?*row-symbol* ?row ?*column-symbol* ?col ?*non-equal-sign* ?*numeral-symbol* ?value)
)

(deffunction print-deleted-I-candidate (?value ?row ?col)
	(printout t "I" ?*row-symbol* ?row ?*column-symbol* ?col ?*non-equal-sign* ?*numeral-symbol* ?value)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printing of g2-whips
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-value-symbol-g2-pair (?x ?ya ?yb ?type)
    (print-starting-cell-symbol) (print-value-symbol ?x ?type) (print-separation-sign-in-cell) (print-value-symbol ?ya ?type) (print-or-sign) (print-value-symbol ?yb ?type) (print-ending-cell-symbol)
)




(deffunction print-g2-bivalue-cell (?llc ?rlca ?rlcb ?csp)
    (bind ?val1 (label-value ?llc))
    (bind ?row1 (label-row ?llc))
    (bind ?col1 (label-column ?llc))
    (bind ?type1 (label-type-symbol ?llc))
    (bind ?val2a (label-value ?rlca))
    (bind ?row2a (label-row ?rlca))
    (bind ?col2a (label-column ?rlca))
    (bind ?type2a (label-type-symbol ?rlca))
    (bind ?val2b (label-value ?rlcb))
    (bind ?type2b (label-type-symbol ?rlcb))

    (if (or (neq ?row1 ?row2a) (neq ?col1 ?col2a) (neq ?type1 ?type2a) (neq ?type1 ?type2b)) then (return "ERROR in PRINT-G2-BIVALUE-CELL") (halt))
    (print-label-csp-var ?llc)
    (print-value-symbol-g2-pair ?val1 ?val2a ?val2b ?type1)
)




(deffunction print-partial-g2-chain (?type ?len ?zzz ?llcs ?rlcsa ?rlcsb ?csp-vars)
    (bind ?n (length$ ?llcs))
    (printout t ?type "[" ?len "]: ")
    (bind ?k 1)
    (while (< ?k ?len)
        (bind ?llc (nth$ ?k ?llcs))
        (bind ?rlca (nth$ ?k ?rlcsa))
        (bind ?rlcb (nth$ ?k ?rlcsb))
        (bind ?csp (nth$ ?k ?csp-vars))
        (print-g2-bivalue-cell ?llc ?rlca ?rlcb ?csp)
        (printout t ?*link-symbol*)
        (bind ?k (+ ?k 1))
    )
    (printout t ?*implication-sign*)
    (print-deleted-candidate ?zzz)
    (printout t crlf)
)



(deffunction print-partial-g2whip (?len ?zzz ?llcs ?rlcsa ?rlcsb ?csp-vars)
    (print-partial-g2-chain g2-whip ?len ?zzz ?llcs ?rlcsa ?rlcsb ?csp-vars)
)




