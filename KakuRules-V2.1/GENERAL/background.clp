
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              BACKGROUND
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





;;; This file contains general definitions and facts independent of any particular instance.



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; NUMBERS, ROWS, COLUMNS, BLOCKS, SQUARES AND THEIR NAMES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Internally, all objects of any type are represented by integers

;;; number-names are used for displaying values of cells in natural rc-space
;;; numeral-names are used for number coordinates in rn- and cn-spaces


(defglobal ?*potential-numbers* = (create$ 1 2 3 4 5 6 7 8 9))
(defglobal ?*potential-numerals* = ?*potential-numbers*)


(defglobal ?*potential-rows* = 
		(create$ 
			1 2 3 4 5 6 7 8 9 10 
			11 12 13 14 15 16 17 18 19 20 
			21 22 23 24 25 26 27 28 29 30
			31 32 33 34 35 36 37 38 39 40
			41 42 43 44 45 46 47 48 49 50
			51 52 53 54 55 56 57 58 59 60
			61 62 63 64 65 66 67 68 69 70
			71 72 73 74 75 76 77 78 79 80
			81 82 83 84 85 86 87 88 89 90
			91 92 93 94 95 96 97 98 99 100
		)
)

(defglobal ?*potential-columns* = ?*potential-rows*)


(defglobal ?*numbers* = (subseq$ ?*potential-numbers* 1 9))
(defglobal ?*numerals* = (subseq$ ?*potential-numerals* 1 9))
(defglobal ?*rows* = (subseq$ ?*potential-rows* 1 ?*grid-size*))
(defglobal ?*columns* = (subseq$ ?*potential-columns* 1 ?*grid-size*))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; in Kakuro, grid-size can be redefined for each instance
;;; global variables must therefore be redefined
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(deffunction redefine-instance-globals (?k)
    (if (> ?k 99) then (printout t "grids of size ≥ 100 are not managed by this version of KakuRules" crlf) (halt))
    (bind ?*grid-size* ?k)
    (bind ?*rows* (subseq$ ?*potential-rows* 1 ?k))
    (bind ?*columns* (subseq$ ?*potential-columns* 1 ?k))
    (bind ?*internal-factor* (if (< ?k 10) then 10 else 100))
    (bind ?*internal-factor-1* ?*internal-factor*)
    (bind ?*internal-factor-2* (* ?*internal-factor-1* ?*internal-factor*))
    (bind ?*internal-factor-3* (* ?*internal-factor-2* ?*internal-factor*))
    (bind ?*internal-factor-4* (* ?*internal-factor-3* ?*internal-factor*))
    (bind ?*internal-factor-5* (* ?*internal-factor-4* ?*internal-factor*))
    (bind ?*internal-factor-6* (* ?*internal-factor-5* ?*internal-factor*))
)


	


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; the following naming scheme guarantees that rc, Hrcn, Vrcn, Hrc and Vrc CSP variables have different names


;;; naming scheme for natural csp variables (rc cells)

(deffunction row-col-to-rc-csp-var (?row ?col)
    (+ (* ?*internal-factor-3* 1) (* ?*internal-factor-1* ?row) ?col)
)


;;; naming scheme for "dual" horizontal or vertical csp variables (rn and cn cells) in magic and pseudo-magic sectors
;;; contrary to Sudoku, the controller column or row must be taken into account

(deffunction number-row-ctrcol-to-rn-csp-var (?nb ?row ?ctr-col)
    (+ (* ?*internal-factor-3* 2) (* ?*internal-factor-2* ?nb) (* ?*internal-factor-1* ?row) ?ctr-col)
)

(deffunction number-ctrrow-column-to-cn-csp-var (?nb ?ctr-row ?col)
    (+ (* ?*internal-factor-3* 3) (* ?*internal-factor-2* ?nb) (* ?*internal-factor-1* ?ctr-row) ?col)
)


;;; naming scheme for horizontal and vertical controller CSP variables

(deffunction horizontal-controller-row-col-to-csp-var (?row ?ctr-col)
    (+ (* ?*internal-factor-3* 4) (* ?*internal-factor-1* ?row) ?ctr-col)
)

(deffunction vertical-controller-row-col-to-csp-var (?ctr-row ?col)
    (+ (* ?*internal-factor-3* 5) (* ?*internal-factor-1* ?ctr-row) ?col)
)


;;; the various components of a a csp-variable can be found via the following functions

(deffunction csp-var-row (?csp-var)
    (div (mod ?csp-var ?*internal-factor-2*) ?*internal-factor-1*)
)

(deffunction csp-var-column (?csp-var)
    (mod ?csp-var ?*internal-factor-1*)
)

(deffunction csp-var-number (?csp-var)
    (mod (div ?csp-var ?*internal-factor-2*) 10)
)


(deffunction csp-var-leading-digit (?csp-var)
    (div ?csp-var ?*internal-factor-3*)
)


(deffunction csp-var-print-symbol (?csp-var)
    (bind ?lead (csp-var-leading-digit ?csp-var))
    (if (eq ?lead 1) then (return rc))
    (if (eq ?lead 2) then (return rn))
    (if (eq ?lead 3) then (return cn))
    (if (eq ?lead 4) then (return hrc))
    (if (eq ?lead 5) then (return vrc))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; LABELS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; naming scheme for labels of natural CSP variables: n r c, where:
;;; n has 1 digit (<> 0) preceded by 8 0's
;;; r and c each have log10 (?*internal-factor*) digits
;;; For ?*grid-size* = 12, this makes 13 digits + 1 for the leading symbol 1

(deffunction nrc-to-natural-label (?n ?r ?c)
    (+ (* (round (** 10 9)) ?*internal-factor-2* 1) (* ?*internal-factor-2* ?n) (* ?*internal-factor-1* ?r) ?c)
)


;;; no new label is needed for rn and cn CSP variables; we use the labels of the rc variables


;;; naming scheme for labels of additional CSP variables
;;; 4/5 comb r c, where:
;;; leading 4 means horizontal combination, leading 5 means vertical combination
;;; comb has 9 digits (the leading ones may be 0)
;;; r and c are the coordinates of the black cell; they each have log10(?*internal-factor*) digits
;;; For ?*grid-size* = 12, this makes 13 digits + 1 for the leading symbol


(deffunction comb-rc-to-horizontal-label (?comb ?r ?c)
    (+ (* (round (** 10 9)) ?*internal-factor-2* 4) (* ?*internal-factor-2* ?comb) (* ?*internal-factor-1* ?r) ?c)
)


(deffunction comb-rc-to-vertical-label (?comb ?r ?c)
    (+ (* (round (** 10 9)) ?*internal-factor-2* 5) (* ?*internal-factor-2* ?comb) (* ?*internal-factor-1* ?r) ?c)
)


(deffunction label-number (?label)
    (mod (div ?label ?*internal-factor-2*) (round (** 10 9)))
)

(deffunction label-row (?label)
    (div (mod ?label ?*internal-factor-2*) ?*internal-factor-1*)
)

(deffunction label-column (?label)
    (mod ?label ?*internal-factor-1*)
)


(deffunction label-leading-digit (?label)
    (div ?label (* (round (** 10 9)) ?*internal-factor-2*))
)


(deffunction label-type (?label)
    (bind ?d (label-leading-digit ?label))
    (if (eq ?d 1) then (return rc))
    ;(if (eq ?d 2) then (return rn))
    ;(if (eq ?d 3) then (return cn))
    (if (eq ?d 4) then (return hrc))
    (if (eq ?d 5) then (return vrc))
)

(deffunction label-symbol (?label)
    (bind ?d (label-leading-digit ?label))
    (if (eq ?d 1) then (return "")) ; rc var
    ;(if (eq ?d 2) then (return "")) ; rn var
    ;(if (eq ?d 3) then (return "")) ; cn var
    (if (eq ?d 4) then (return "h")) ; horiz var
    (if (eq ?d 5) then (return "v")) ; verti var
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; LINKS BETWEEN LABELS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction rc-linked (?row1 ?col1 ?hs1 ?vs1 ?row2 ?col2 ?hs2 ?vs2)
	;;; two rc-cells that are rc-linked must be different, but in a same horizontal or vertical sector
	(and (or (neq ?row1 ?row2) (neq ?col1 ?col2))
		 (or (and (eq ?row1 ?row2) (eq ?hs1 ?hs2))
             (and (eq ?col1 ?col2) (eq ?vs1 ?vs2))
         )
	)
)


(deffunction same-rc-cell (?row1 ?col1 ?row2 ?col2)
	(and (eq ?row1 ?row2) (eq ?col1 ?col2)))
	
(deffunction not-same-rc-cell (?row1 ?col1 ?row2 ?col2)
	(or (neq ?row1 ?row2) (neq ?col1 ?col2)))


(deffunction nrchv-linked (?type1 ?nb1 ?row1 ?col1 ?hs1 ?vs1 ?type2 ?nb2 ?row2 ?col2 ?hs2 ?vs2)
    ;;; horizontal-sector is defined by its controller-column, vertical-sector by its controller row
    (if (or (and (eq ?type1 hrc) (eq ?type2 vrc)) (and (eq ?type1 vrc) (eq ?type2 hrc))) then (return FALSE))
	(if (neq ?nb1 ?nb2)
		then (and (eq ?row1 ?row2) (eq ?col1 ?col2)) ; same rc-cell
		else (or (and (eq ?row1 ?row2) (eq ?hs1 ?hs2) (neq ?col1 ?col2)) ; same row and horizontal sector but not same rc-cell
				 (and (eq ?col1 ?col2) (eq ?vs1 ?vs2) (neq ?row1 ?row2)) ; same column and vertical sector but not same rc-cell
			 )
	)
)


(deffunction column-of-horizontal-controller (?row ?col)
    ;;; must be pre-defined here in order to be able to define function "labels-linked"
    ;;; but the real definition will be in "solve.clp"
    1
)

(deffunction row-of-vertical-controller (?row ?col)
    ;;; must be pre-defined here in order to be able to define function "labels-linked"
    ;;; but the real definition will be in "solve.clp"
    1
)



(deffunction labels-linked (?lab1 ?lab2)
    (bind ?type1 (label-type ?lab1))
	(bind ?nb1 (label-number ?lab1))
	(bind ?row1 (label-row ?lab1))
	(bind ?col1 (label-column ?lab1))
	(bind ?hs1 (column-of-horizontal-controller ?row1 ?col1))
	(bind ?vs1 (row-of-vertical-controller ?row1 ?col1))
    (bind ?type2 (label-type ?lab2))
	(bind ?nb2 (label-number ?lab2))
	(bind ?row2 (label-row ?lab2))
	(bind ?col2 (label-column ?lab2))
	(bind ?hs2 (column-of-horizontal-controller ?row2 ?col2))
	(bind ?vs2 (row-of-vertical-controller ?row2 ?col2))
	(nrchv-linked ?type1 ?nb1 ?row1 ?col1 ?hs1 ?vs1 ?type2 ?nb2 ?row2 ?col2 ?hs2 ?vs2)
)


(deffunction labels-linked-or (?lab1 $?labs)
    (bind ?type1 (label-type ?lab1))
	(bind ?nb1 (label-number ?lab1))
	(bind ?row1 (label-row ?lab1))
	(bind ?col1 (label-column ?lab1))
	(bind ?hs1 (column-of-horizontal-controller ?row1 ?col1))
	(bind ?vs1 (row-of-vertical-controller ?row1 ?col1))

	(bind ?l (length$ $?labs))
	(bind ?i 1)
	(while (<= ?i ?l)
        (bind ?lab2 (nth$ ?i $?labs))
        (bind ?type2 (label-type ?lab2))
        (bind ?nb2 (label-number ?lab2))
        (bind ?row2 (label-row ?lab2))
        (bind ?col2 (label-column ?lab2))
        (bind ?hs2 (column-of-horizontal-controller ?row2 ?col2))
        (bind ?vs2 (row-of-vertical-controller ?row2 ?col2))
		(if (nrchv-linked ?type1 ?nb1 ?row1 ?col1 ?hs1 ?vs1 ?type2 ?nb2 ?row2 ?col2 ?hs2 ?vs2) then (return TRUE))
		(bind ?i (+ ?i 1))
	)
	(return FALSE)
)




