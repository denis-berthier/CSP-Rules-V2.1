
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              GENERIC OUTPUT
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
;;; printing of cells (contents of csp-variables)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-starting-cell-symbol() (printout t ?*starting-cell-symbol*))
(deffunction print-ending-cell-symbol() (printout t ?*ending-cell-symbol*))
(deffunction print-separation-sign-in-cell() (printout t ?*separation-sign-in-cell*))
(deffunction print-dot-in-cell() (printout t ?*dot-in-cell*))
;;; for g2-whips:
(deffunction print-or-sign() (printout t ?*or-sign-in-cell*))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 
;;; DEFAULT GENERIC VERSIONS OF OUTPUT FUNCTIONS
;;; (CAN BE REDEFINED BY EACH APPLICATION)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of labels and csp variables
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction label-name (?lab) ?lab)
(deffunction csp-variable-name (?csp) ?csp)

;;; given a csp-variable and a label for it, find the name of the value 
(deffunction label-value-name (?lab ?csp) ?lab)
(deffunction label-csp-variable (?lab ?csp) ?csp)

(deffunction print-label (?l) (printout t (label-name ?l)))
(deffunction print-csp-variable (?csp) (printout t (csp-variable-name ?csp)))
(deffunction print-value (?val) (printout t ?val))

(deffunction print-label-pair (?lab1 ?lab2)
    (print-label ?lab1)
    (printout t " ")
    (print-label ?lab2)
)

(deffunction print-list-of-labels ($?l)
    (foreach ?lab $?l
        (print-label ?lab) (printout t " ")
    )
)

(deffunction print-list-of-label-pairs ($?list)
    ;;; the length of ?list is supposed to be even
    (bind ?len (length$ ?list))
    (bind ?i 1)
    (while (<= ?i ?len)
        (printout t (print-label (nth$ ?i ?list)) " ")
        (bind ?i (+ ?i 1))
        (printout t (print-label (nth$ ?i ?list)))
        (printout t "     ")
        (bind ?i (+ ?i 1))
    )
    TRUE
)




(deffunction print-pair-in-cell (?x ?y) 
    (print-starting-cell-symbol) (print-value ?x) (print-separation-sign-in-cell) (print-value ?y) (print-ending-cell-symbol)
)
(deffunction print-final-pair-in-cell (?x) 
    (print-starting-cell-symbol) (print-value ?x) (print-separation-sign-in-cell) (print-dot-in-cell) (print-ending-cell-symbol)
)



(deffunction print-bivalue-cell (?llc ?rlc ?csp)
	(bind ?val1 (label-value-name ?llc ?csp))
    (bind ?csp1 (label-csp-variable ?llc ?csp))
	(bind ?val2 (label-value-name ?rlc ?csp))
    (bind ?csp2 (label-csp-variable ?rlc ?csp))
	
	(if (or (neq ?csp1 ?csp) (neq ?csp2 ?csp)) then (printout t "Error in bivalue"))
    (print-csp-variable ?csp) (print-pair-in-cell ?val1 ?val2)
)



;;; the convention for the final cell of whips or braids is to have a dot for the missing final right-linking candidate


(deffunction print-final-cell (?llc ?rlc ?csp)
	(bind ?val1 (label-value-name ?llc ?csp))
    (bind ?csp1 (label-csp-variable ?llc ?csp))
	
	(if (or (neq ?csp1 ?csp) (neq ?rlc .)) then (printout t "Error in final bivalue cell"))
    (print-csp-variable ?csp) (print-final-pair-in-cell ?val1)
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of deleted, asserted or contradictory candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-deleted-candidate (?zzz) (printout t "not " (print-label ?zzz)))

(deffunction print-asserted-candidate (?zzz) (printout t "assert " (print-label ?zzz)))

(deffunction print-contradictory-candidates (?chain-type ?len ?zzz1 ?zzz2)
	(printout t ?chain-type "-contrad[" ?len "](" (label-name ?zzz1) ", " (label-name ?zzz2) ")" )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 
;;; GENERIC FUNCTIONS FOR PRINTING CHAINS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of reversible chains (bivalue-chains, z-chains and oddagons)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-reversible-chain-without-crlf (?chain-type ?len ?zzz ?llcs ?rlcs ?csps)
    (if (or (neq (length$ ?llcs) ?len) (neq (length$ ?rlcs) ?len) (neq (length$ ?csps) ?len))
        then (printout t "length error for " ?zzz crlf)
    )
    (printout t ?chain-type "[" ?len "]: ")
    (bind ?k 1)
    (while (<= ?k ?len)
        (bind ?llc (nth$ ?k ?llcs))
        (bind ?rlc (nth$ ?k ?rlcs))
        (bind ?csp (nth$ ?k ?csps))
        (print-bivalue-cell ?llc ?rlc ?csp)
        (if (neq ?k ?len) then (printout t ?*link-symbol*))
        (bind ?k (+ ?k 1))
    )
    (printout t ?*implication-sign*)
    (print-deleted-candidate ?zzz)
)

(deffunction print-reversible-chain (?chain-type ?len ?zzz ?llcs ?rlcs ?csps)
    (print-reversible-chain-without-crlf ?chain-type ?len ?zzz ?llcs ?rlcs ?csps)
    (printout t crlf)
)


(deffunction print-bivalue-chain-without-crlf (?len ?zzz ?llcs ?rlcs ?csps)
    (print-reversible-chain-without-crlf biv-chain ?len ?zzz ?llcs ?rlcs ?csps)
)

(deffunction print-bivalue-chain (?len ?zzz ?llcs ?rlcs ?csps)
    (print-reversible-chain biv-chain ?len ?zzz ?llcs ?rlcs ?csps)
)


(deffunction print-g-bivalue-chain-without-crlf (?len ?zzz ?llcs ?rlcs ?csps)
    (print-reversible-chain-without-crlf g-biv-chain ?len ?zzz ?llcs ?rlcs ?csps)
)

(deffunction print-g-bivalue-chain (?len ?zzz ?llcs ?rlcs ?csps)
    (print-reversible-chain g-biv-chain ?len ?zzz ?llcs ?rlcs ?csps)
)


(deffunction print-oddagon-without-crlf (?len ?zzz ?rlcs ?csps)
    (if (or (neq (length$ ?rlcs) ?len) (neq (length$ ?csps) ?len))
        then (printout t "length error for " ?zzz crlf)
    )
    (printout t oddagon "[" ?len "]: ")
    (bind ?llc (nth$ ?len ?rlcs)) ;the first llc is the last rlc
    (bind ?rlc (nth$ 1 ?rlcs))
    (bind ?csp (nth$ 1 ?csps))
    (print-bivalue-cell ?llc ?rlc ?csp)
    (printout t ?*oddagon-link-symbol*)
    (bind ?k 2)
    (while (<= ?k ?len)
        (bind ?llc (nth$ (- ?k 1) ?rlcs))
        (bind ?rlc (nth$ ?k ?rlcs))
        (bind ?csp (nth$ ?k ?csps))
        (print-bivalue-cell ?llc ?rlc ?csp)
        (if (neq ?k ?len) then (printout t ?*oddagon-link-symbol*))
        (bind ?k (+ ?k 1))
    )

    (printout t ?*implication-sign*)
    (print-deleted-candidate ?zzz)
)


(deffunction print-oddagon (?len ?zzz ?rlcs ?csps)
    (print-oddagon-without-crlf ?len ?zzz ?rlcs ?csps)
    (printout t crlf)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of typed reversible chains
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-typed-reversible-chain-without-crlf (?chain-type ?csp-type ?len ?zzz ?llcs ?rlcs ?csps)
    (if (or (neq (length$ ?llcs) ?len) (neq (length$ ?rlcs) ?len) (neq (length$ ?csps) ?len))
        then (printout t "length error for " ?zzz crlf)
    )
    (printout t ?chain-type "-" ?csp-type "[" ?len "]: ")
    (bind ?k 1)
    (while (<= ?k ?len)
        (bind ?llc (nth$ ?k ?llcs))
        (bind ?rlc (nth$ ?k ?rlcs))
        (bind ?csp (nth$ ?k ?csps))
        (print-bivalue-cell ?llc ?rlc ?csp)
        (if (neq ?k ?len) then (printout t ?*link-symbol*))
        (bind ?k (+ ?k 1))
    )
    (printout t ?*implication-sign*)
    (print-deleted-candidate ?zzz)
)

(deffunction print-typed-reversible-chain (?chain-type ?csp-type ?len ?zzz ?llcs ?rlcs ?csps)
    (print-typed-reversible-chain-without-crlf ?chain-type ?csp-type ?len ?zzz ?llcs ?rlcs ?csps)
    (printout t crlf)
)


(deffunction print-typed-bivalue-chain-without-crlf (?csp-type ?len ?zzz ?llcs ?rlcs ?csps)
    (print-typed-reversible-chain-without-crlf biv-chain ?csp-type ?len ?zzz ?llcs ?rlcs ?csps)
)
(deffunction print-typed-bivalue-chain (?csp-type ?len ?zzz ?llcs ?rlcs ?csps)
    (print-typed-reversible-chain biv-chain ?csp-type ?len ?zzz ?llcs ?rlcs ?csps)
)


(deffunction print-typed-g-bivalue-chain-without-crlf (?csp-type ?len ?zzz ?llcs ?rlcs ?csps)
    (print-typed-reversible-chain-without-crlf g-biv-chain ?csp-type ?len ?zzz ?llcs ?rlcs ?csps)
)
(deffunction print-typed-g-bivalue-chain (?csp-type ?len ?zzz ?llcs ?rlcs ?csps)
    (print-typed-reversible-chain g-biv-chain ?csp-type ?len ?zzz ?llcs ?rlcs ?csps)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of non reversible chains
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-chain-without-crlf (?chain-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
	(if (neq (length$ ?llcs) (- ?len 1)) then (printout t "length error for " ?zzz " in " ?llcs crlf))
	(if (neq (length$ ?rlcs) (- ?len 1)) then (printout t "length error for " ?zzz " in " ?rlcs crlf))
	(if (neq (length$ ?csps) (- ?len 1)) then (printout t "length error for " ?zzz " in " ?csps crlf))
    (if (or (eq ?chain-type w-whip) (eq ?chain-type b-braid) (eq ?chain-type w*-whip) (eq ?chain-type b*-braid))
        then (printout t ?chain-type "[[" ?len "]]: ")
        else (printout t ?chain-type "[" ?len "]: ")
    )
	(bind ?k 1)
	(while (< ?k ?len)
		(bind ?llc (nth$ ?k ?llcs))
		(bind ?rlc (nth$ ?k ?rlcs))
		(bind ?csp (nth$ ?k ?csps))
		(print-bivalue-cell ?llc ?rlc ?csp)
		(printout t ?*link-symbol*)
		(bind ?k (+ ?k 1))
	)
	(print-final-cell ?new-llc . ?new-csp)
	(printout t ?*implication-sign*)
	(print-deleted-candidate ?zzz)
)

(deffunction print-chain (?chain-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-chain-without-crlf ?chain-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (printout t crlf)
)

;;; although z-chains are reversible, it's easier to use the following two functions without the final rlc:

(deffunction print-z-chain-without-crlf (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-chain-without-crlf z-chain ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)
(deffunction print-z-chain (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-chain z-chain ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)


(deffunction print-t-chain (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-chain t-chain ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)


(deffunction print-t-whip-without-crlf (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-chain-without-crlf t-whip ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)
(deffunction print-t-whip (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-chain t-whip ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)


(deffunction print-whip-without-crlf (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-chain-without-crlf whip ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)
(deffunction print-whip (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-chain whip ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)



(deffunction print-gwhip (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-chain g-whip ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)

(deffunction print-gzwhip (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-chain gz-whip ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)

(deffunction print-braid (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
	(print-chain braid ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)

(deffunction print-gbraid (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
	(print-chain g-braid ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of typed non reversible chains
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-typed-chain-without-crlf (?chain-type ?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (if (neq (length$ ?llcs) (- ?len 1)) then (printout t "length error for " ?zzz " in " ?llcs crlf))
    (if (neq (length$ ?rlcs) (- ?len 1)) then (printout t "length error for " ?zzz " in " ?rlcs crlf))
    (if (neq (length$ ?csps) (- ?len 1)) then (printout t "length error for " ?zzz " in " ?csps crlf))
    (printout t ?chain-type "-" ?csp-type "[" ?len "]: ")
    (bind ?k 1)
    (while (< ?k ?len)
        (bind ?llc (nth$ ?k ?llcs))
        (bind ?rlc (nth$ ?k ?rlcs))
        (bind ?csp (nth$ ?k ?csps))
        (print-bivalue-cell ?llc ?rlc ?csp)
        (printout t ?*link-symbol*)
        (bind ?k (+ ?k 1))
    )
    (print-final-cell ?new-llc . ?new-csp)
    (printout t ?*implication-sign*)
    (print-deleted-candidate ?zzz)
)

(deffunction print-typed-chain (?chain-type ?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-typed-chain-without-crlf ?chain-type ?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (printout t crlf)
)


;;; although z-chains are reversible, it's easier to use the following two functions without the final rlc:

(deffunction print-typed-z-chain (?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-typed-chain z-chain ?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)
(deffunction print-typed-z-chain-without-crlf (?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-typed-chain-without-crlf z-chain ?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)


(deffunction print-typed-t-whip-without-crlf (?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-typed-chain-without-crlf t-whip ?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)
(deffunction print-typed-t-whip (?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-typed-chain t-whip ?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)


(deffunction print-typed-whip-without-crlf (?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-typed-chain-without-crlf whip ?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)
(deffunction print-typed-whip (?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-typed-chain whip ?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)


(deffunction print-typed-g-whip-without-crlf (?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-typed-chain-without-crlf g-whip ?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)
(deffunction print-typed-g-whip (?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
    (print-typed-chain g-whip ?csp-type ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of g2-whips 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-g2-pair-in-cell (?x ?ya ?yb) 
    (print-starting-cell-symbol) (print-value ?x) (print-separation-sign-in-cell) (print-value ?ya) (print-or-sign) (print-value ?yb) (print-ending-cell-symbol)
)



(deffunction print-g2-bivalue-cell (?llc ?rlca ?rlcb ?csp)
	(bind ?val1 (label-value-name ?llc ?csp))
	(bind ?val2a (label-value-name ?rlca ?csp))
	(bind ?val2b (label-value-name ?rlcb ?csp))
    (print-csp-variable ?csp) (print-g2-pair-in-cell ?val1 ?val2a ?val2b)
)


(deffunction print-g2-chain (?chain-type ?len ?zzz ?llcs ?rlcsa ?rlcsb ?csp-vars ?new-llc ?new-rlc ?new-csp)
    (if (neq ?new-rlc .) then (printout t "error in final cell of " ?chain-type crlf))
	(bind ?n (length$ ?llcs))
	(printout t ?chain-type "[" ?len "]: ")
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
	(print-final-cell ?new-llc . ?new-csp)
	(printout t ?*implication-sign*)
	(print-deleted-candidate ?zzz)
	(printout t crlf)
)



(deffunction print-g2whip (?len ?zzz ?llcs ?rlcsa ?rlcsb ?csp-vars ?new-llc ?new-rlc ?new-csp)
	(print-g2-chain g2-whip ?len ?zzz ?llcs ?rlcsa ?rlcsb ?csp-vars ?new-llc ?new-rlc ?new-csp)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of forcing whips, gwhips, braids and gbraids
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-partial-chain (?chain-type ?len ?zzz ?llcs ?rlcs ?csps)
	(if (or (neq (length$ ?llcs) ?len) (neq (length$ ?rlcs) ?len) (neq (length$ ?csps) 1))
        then (printout t "length error for " ?zzz crlf)
    )
	(printout t "partial-" ?chain-type "[" ?len "]: ")
	(bind ?k 1)
	(while (<= ?k ?len)
		(bind ?llc (nth$ ?k ?llcs))
		(bind ?rlc (nth$ ?k ?rlcs))
		(bind ?csp (nth$ ?k ?csps))
		(print-bivalue-cell ?llc ?rlc ?csp)
		(printout t ?*link-symbol*)
		(bind ?k (+ ?k 1))
	)
)


;;; forcing whips
(deffunction print-forcing-whip-assert-value (?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2 ?cand)
	(printout t "forcing-whip-assert[" (+ ?p1 ?p2 1) "]:" crlf)
    (printout t "    ")
	(print-partial-chain "partial-whip" ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1)
    (printout t "    ")
	(print-partial-chain "partial-whip" ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2)
    (printout t "    ")
	(printout t ?*implication-sign*)
    (print-asserted-candidate ?cand)
	(printout t crlf)
)


(deffunction print-forcing-whip-elim-candidate (?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2 ?cand)
	(printout t "forcing-whip-elim[" (+ ?p1 ?p2 1) "]:" crlf)
    (printout t "    ")
	(print-partial-chain "partial-whip" ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1)
    (printout t "    ")
	(print-partial-chain "partial-whip" ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2)
    (printout t "    ")
	(printout t ?*implication-sign*)
    (print-deleted-candidate ?cand)
	(printout t crlf)
)


;;; forcing gwhips
;;; should be refined depending on whether partial-chains are whips or gwhips
(deffunction print-forcing-gwhip-assert-value (?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1 ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2 ?cand)
    (printout t "forcing-gwhip-assert[" (+ ?p1 ?p2 1) "]:" crlf)
    (printout t "    ")
    (print-partial-chain ?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1)
    (printout t "    ")
    (print-partial-chain ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2)
    (printout t "    ")
    (printout t ?*implication-sign*)
    (print-asserted-candidate ?cand)
    (printout t crlf)
)


(deffunction print-forcing-gwhip-elim-candidate (?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1 ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2 ?cand)
    (printout t "forcing-gwhip-elim[" (+ ?p1 ?p2 1) "]:" crlf)
    (printout t "    ")
    (print-partial-chain ?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1)
    (printout t "    ")
    (print-partial-chain ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2)
    (printout t "    ")
    (printout t ?*implication-sign*)
    (print-deleted-candidate ?cand)
    (printout t crlf)
)


;;; forcing braids
(deffunction print-forcing-braid-assert-value (?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1 ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2 ?cand)
    (printout t "forcing-braid-assert[" (+ ?p1 ?p2 1) "]:" crlf)
    (printout t "    ")
    (print-partial-chain ?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1)
    (printout t "    ")
    (print-partial-chain ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2)
    (printout t "    ")
    (printout t ?*implication-sign*)
    (print-asserted-candidate ?cand)
    (printout t crlf)
)


(deffunction print-forcing-braid-elim-candidate (?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1 ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2 ?cand)
    (printout t "forcing-braid-elim[" (+ ?p1 ?p2 1) "]:" crlf)
    (printout t "    ")
    (print-partial-chain ?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1)
    (printout t "    ")
    (print-partial-chain ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2)
    (printout t "    ")
    (printout t ?*implication-sign*)
    (print-deleted-candidate ?cand)
    (printout t crlf)
)


;;; forcing gbraids
;;; should be refined depending on whether partial-chains are whips or braids
(deffunction print-forcing-gbraid-assert-value (?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1 ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2 ?cand)
	(printout t "forcing-gbraid-assert[" (+ ?p1 ?p2 1) "]:" crlf)
    (printout t "    ")
	(print-partial-chain ?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1)
    (printout t "    ")
	(print-partial-chain ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2)
    (printout t "    ")
	(printout t ?*implication-sign*)
    (print-asserted-candidate ?cand)
	(printout t crlf)
)


(deffunction print-forcing-gbraid-elim-candidate (?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1 ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2 ?cand)
    (printout t "forcing-gbraid-elim[" (+ ?p1 ?p2 1) "]:" crlf)
    (printout t "    ")
    (print-partial-chain ?chain-type1 ?p1 ?zzz1 ?llcs1 ?rlcs1 ?csps1)
    (printout t "    ")
    (print-partial-chain ?chain-type2 ?p2 ?zzz2 ?llcs2 ?rlcs2 ?csps2)
    (printout t "    ")
    (printout t ?*implication-sign*)
    (print-deleted-candidate ?cand)
    (printout t crlf)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of w-whips, b-braids, w*-whips and b*-braids
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-w-whip (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
	(print-chain w-whip ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)


(deffunction print-b-braid (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
	(print-chain b-braid ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)




(deffunction print-w*-whip (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
	(print-chain w*-whip ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)

(deffunction print-b*-braid (?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
	(print-chain b*-braid ?len ?zzz ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; printing of bi-chains
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-bi-chain (?chain-type ?len ?zzz1 ?zzz2 ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
	(if (or (neq (length$ ?llcs) (- ?len 1)) (neq (length$ ?rlcs) (- ?len 1)) (neq (length$ ?csps) (- ?len 1)))
        then (printout t "length error for contrad between " ?zzz1 " and " ?zzz2 crlf)
    )
	(if (neq (length$ ?llcs) (- ?len 1)) then (printout t "length error for contrad between " ?zzz1 " and " ?zzz2 " in " ?llcs crlf))
	(if (neq (length$ ?rlcs) (- ?len 1)) then (printout t "length error for contrad between " ?zzz1 " and " ?zzz2 " in " ?rlcs crlf))
	(if (neq (length$ ?csps) (- ?len 1)) then (printout t "length error for contrad between " ?zzz1 " and " ?zzz2 " in " ?csps crlf))
	(printout t ?chain-type "[" ?len "]: ")
	(bind ?k 1)
	(while (< ?k ?len)
		(bind ?llc (nth$ ?k ?llcs))
		(bind ?rlc (nth$ ?k ?rlcs))
		(bind ?csp (nth$ ?k ?csps))
		(print-bivalue-cell ?llc ?rlc ?csp)
		(printout t ?*link-symbol*)
		(bind ?k (+ ?k 1))
	)
	(print-final-cell ?new-llc . ?new-csp)
	(printout t ?*implication-sign*)
	(print-contradictory-candidates ?chain-type ?len ?zzz1 ?zzz2)
	(printout t crlf)
)



(deffunction print-biwhip-contrad (?len ?zzz1 ?zzz2 ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
	(print-bi-chain bi-whip ?len ?zzz1 ?zzz2 ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)



(deffunction print-bibraid-contrad (?len ?zzz1 ?zzz2 ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
	(print-bi-chain bi-braid ?len ?zzz1 ?zzz2 ?llcs ?rlcs ?csps ?new-llc ?dot ?new-csp)
)





(deffunction print-forcing-bi-whip (?zzz)
    ;;; provisoire
    (printout t "forcing-bi-whip-elimination: ")
    (printout t ?*implication-sign*)
    (print-deleted-candidate ?zzz)
    (printout t crlf)
)
