
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / MAPRULES
;;;                              OUTPUT
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

(deffunction print-colour (?x) (printout t (colour-name ?x)))
(deffunction print-country (?x) (printout t (country-name ?x)))

(deffunction print-label (?l)
	(bind ?col (label-colour ?l))
    (bind ?count (label-country ?l))
    (print-country ?count) (print-colour ?col)
)


(deffunction print-colour-pair (?x ?y) (print-starting-cell-symbol) (print-colour ?x) (print-separation-sign-in-cell) (print-colour ?y) (print-ending-cell-symbol))

(deffunction print-country-pair (?x ?y) (print-starting-cell-symbol) (print-country ?x) (print-separation-sign-in-cell) (print-country ?y) (print-ending-cell-symbol)) 





(deffunction print-bivalue-cell (?llc ?rlc  ?csp)
    (if (eq  ?csp neighbour) then (printout t "error in bivalue cell" crlf))
    (bind ?count1 (label-country ?llc))
	(bind ?col1 (label-colour ?llc))
	(bind ?col2 (label-colour ?rlc))
    (print-country ?count1) (print-colour-pair ?col1 ?col2)
)



;;; the convention for the final cell of whips or braids is to have a dot for the missing final right-linking candidate

(deffunction print-final-colour-pair (?x) (print-starting-cell-symbol) (print-colour ?x) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol))

(deffunction print-final-cell (?llc ?rlc  ?csp)
	(if (eq  ?csp neighbour) then (printout t "error in bivalue cell" crlf))
    (bind ?count1 (label-country ?llc))
	(bind ?col1 (label-colour ?llc))
    (print-country ?count1) (print-final-colour-pair ?col1)
	)
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of deleted candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-deleted-candidate (?zzz)
	(bind ?col (label-colour ?zzz))
	(bind ?count (label-country ?zzz))
	(printout t (print-country ?count) ?*non-equal-sign* (print-colour ?col))
)




