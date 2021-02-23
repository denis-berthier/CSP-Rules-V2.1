
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              G-LABELS
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





;;; this file is loaded only if G-Bivalue-Chains, G-Whips or G-Braids are used

;;; notice that these functions do NOT make any difference between rn and horizontal bn g-labels
;;; or between cn and vertical bn g-labels
;;; the difference for predicate "glinked" is re-established by rule init-glinks





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; segments
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*segments* = 
    (if (eq ?*segment-size* 3)
        then (create$ 123 456 789)
        else    (if (eq ?*segment-size* 4)
                    then (create$ 01020304 05060708 09101112 13141516)
                    else (create$)
                        (printout t "BEWARE: g-labels, g-whips and g-braids are not managed for grid size larger than 16" crlf)
                )
    )
)

(defglobal ?*segment-factor* = (if (eq ?*segment-size* 3) then 10 else 100))


(deffunction in-segment (?x ?yyy)
	(bind ?i 1)
	(while (<= ?i ?*segment-factor*)
		(if (eq ?x (mod ?yyy ?*segment-factor*)) then (return TRUE))
		(bind ?yyy (div ?yyy ?*segment-factor*))
		(bind ?i (+ ?i 1))
	)
	FALSE
)


(deffunction segment-of (?x)
	(bind ?i 1)
	(while (<= ?i ?*segment-size*)
		(bind ?seg (nth$ ?i ?*segments*))
		(if (in-segment ?x ?seg) then (return ?seg))
		(bind ?i (+ ?i 1))
	)
	FALSE
)

(deffunction in-same-segment (?x ?y)
	(bind ?seg (segment-of ?x))
	(if (eq ?seg (segment-of ?y)) then ?seg else FALSE)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; physical segments and physical glinks
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deftemplate physical-2D-segment
    (slot label (type INTEGER))
    (slot type (type SYMBOL) (allowed-values undefined horiz verti) (default undefined))
    (slot row (type INTEGER)) ; a row or a row-segment
    (slot column  (type INTEGER)) ; a column or a column-segment
)


(deffunction segment-2D (?r ?c)
    ;;; used when ?r is a row (resp. a horiz-segment) and ?c is a verti-segment (resp. a column)
    ;;; equal ro rc-to-cell
    (+ (* ?*internal-factor-1* ?r) ?c)
)

(deffunction 2D-segment-row (?seg)
    (div ?seg ?*internal-factor-1*)
)

(deffunction 2D-segment-column (?seg)
    (mod ?seg ?*internal-factor-1*)
)




(deffunction init-physical-2D-segments ()
    ;;; create physical-horiz-segments
	(foreach ?row ?*rows*
		(foreach ?seg ?*segments*
            (bind ?phys-seg (segment-2D ?row ?seg))
			(assert (physical-2D-segment (label ?phys-seg) (type horiz) (row ?row) (column ?seg)))
		)
	)
	;;; create physical-verti-segments
	(foreach ?col ?*columns*
		(foreach ?seg ?*segments*
            (bind ?phys-seg (segment-2D ?seg ?col))
			(assert (physical-2D-segment (label ?phys-seg) (type verti) (row ?seg) (column ?col)))
		)
	)
)




;;; not used:
(deffunction init-physical-2D-segments-and-glinks ()
	
    ;;; create physical-horiz-segments and their rn-glinks and bn-glinks
	(foreach ?row ?*rows*
		(foreach ?seg ?*segments*
            (bind ?phys-seg (segment-2D ?row ?seg))
			(assert (physical-2D-segment (label ?phys-seg) (type horiz) (row ?row) (column ?seg)))
            (foreach ?col ?*columns*
				(if (not (in-segment ?col ?seg)) 
                    then
                        (bind ?cell (rc-to-cell ?row ?col))
                        (assert (physical-glink ?cell ?phys-seg horiz-segment rn-glink))
                    else 
                        (bind ?blk (block ?row ?col))
                        (foreach ?row2 ?*rows*
                            (if (eq (block ?row2 ?col) ?blk) then
                                (bind ?cell2 (rc-to-cell ?row2 ?col))
                                (assert (physical-glink ?cell2 ?phys-seg horiz-segment bn-glink))
                            )
                        )
				)
			)
		)
	)

	;;; create physical-verti-segments and their cn-glinks and bn-glinks
	(foreach ?col ?*columns*
		(foreach ?seg ?*segments*
            (bind ?phys-seg (segment-2D ?seg ?col))
			(assert (physical-2D-segment (label ?phys-seg) (type verti) (row ?seg) (column ?col)))
            (foreach ?row ?*rows*
				(if (not (in-segment ?row ?seg)) 
                    then
                        (bind ?cell (rc-to-cell ?row ?col))
                        (assert (physical-glink ?cell ?phys-seg verti-segment cn-glink))
                    else 
                        (bind ?blk (block ?row ?col))
                        (foreach ?col2 ?*columns*
                            (if (eq (block ?row ?col2) ?blk) then
                                (bind ?cell2 (rc-to-cell ?row ?col2))
                                (assert (physical-glink ?cell2 ?phys-seg verti-segment bn-glink))
                            )
                        )
				)
			)
		)
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions about rc-cells and physical segments
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction rc-cell-in-physical-2D-segment (?cell ?seg)
	"supposes ?seg is a row or column physical 2D segment (not checked); returns FALSE if ?cell is not a cell"
	(bind ?row (cell-row ?cell))
	(bind ?col (cell-column ?cell))
	(if (or (> ?row ?*grid-size*) (> ?col ?*grid-size*)) then (return FALSE))  ; ?cell is not a cell
	
	(bind ?row2 (2D-segment-row ?seg))
	(bind ?col2 (2D-segment-column ?seg))
	(if (<= ?row2 ?*grid-size*)
		then (return (and (eq ?row ?row2) (in-segment ?col ?col2))) ; ?seg is a row-segment
		else (return (and (eq ?col ?col2) (in-segment ?row ?row2))) ; ?seg is a col-segment
	)
)




(deffunction rc-cell-linked-to-physical-2D-segment (?cell ?seg)
	"supposes ?cell is an rc-cell and ?seg is a (row or column) physical segment"
	(bind ?row (cell-row ?cell))
	(bind ?col (cell-column ?cell))
	(if (or (> ?row ?*grid-size*) (> ?col ?*grid-size*)) then (return FALSE)) ; ?cell is not an rc-cell
	
	(bind ?row2 (2D-segment-row ?seg))
	(bind ?col2 (2D-segment-column ?seg))
	(if (<= ?row2 ?*grid-size*)
		then ; row2 is a row and ?seg is a row-segment 
			(if (eq ?row ?row2) 
				then ; ?cell is in the same row as ?seg
					(not (in-segment ?col ?col2))
				else ; ?cell is not in the same row as ?seg
					(and (in-segment ?row (segment-of ?row2)) (in-segment ?col ?col2))
			)
		else ; ?seg is a col-segment and ?col2 is a column
			(if (eq ?col ?col2)
				then ; ?cell is in the same column as ?seg
					(not (in-segment ?row ?row2)) 
				else ; ?cell is not in the same column as ?seg
					(and (in-segment ?col (segment-of ?col2)) (in-segment ?row ?row2))
			)
	)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions about labels, their support and physical segments
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions about labels and glabels
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(deffunction is-label (?glab)
    (and (<= (label-row ?glab) ?*grid-size*) (<= (label-column ?glab) ?*grid-size*))
)



(deffunction label-in-glabel (?lab ?glab)
	"supposes ?lab is a label and ?glab is a g-label; returns FALSE otherwise"
    (if (or (not (is-label ?lab)) (is-label ?glab)) then (return FALSE))
	(bind ?nb1 (label-number ?lab))
	(bind ?nb2 (label-number ?glab))
	(if (neq ?nb1 ?nb2) 
		then FALSE
		else ; ?nb1 = ?nb2
			(bind ?cell (label-cell ?lab))
			(bind ?seg (label-cell ?glab))
			(rc-cell-in-physical-2D-segment ?cell ?seg)
	)
)



(deffunction glabel-contains-none-of (?glab $?labs)
	"supposes ?glab is a g-label and $?labs is a sequence of labels or g-labels"
	(bind ?nb1 (label-number ?glab))
	(bind ?phys-seg1 (label-cell ?glab))

	(foreach ?lab2 $?labs
		(if (eq ?lab2 ?glab) then (return FALSE))
		(bind ?nb2 (label-number ?lab2))
		(if (eq ?nb1 ?nb2) then
			(bind ?cell2 (label-cell ?lab2))
			(bind ?row2 (label-row ?cell2))
			(bind ?col2 (label-column ?cell2))
			(if (and (<= ?row2 ?*grid-size*) (<= ?col2 ?*grid-size*))
				then ; ?lab2 is a candidate and ?cell2 is an rc-cell
					(if (rc-cell-in-physical-2D-segment ?cell2 ?phys-seg1) then (return FALSE))
				else ; ?lab2 is a cand-segment and ?cell2 is a segment
					(if (eq ?phys-seg1 ?cell2) then (return FALSE))
			)
		)
	)
	(return TRUE)
)




(deffunction label-glabel-glinked (?lab ?glab)
	"supposes ?lab is a label and ?glab is a label or a g-label; there is no check for ?lab"
	(if (is-label ?glab)
		then ; ?glab is a candidate
			(linked ?lab ?glab)
		else ; ?glab is a cand-segment
			(bind ?nb1 (label-number ?lab))
			(bind ?nb2 (label-number ?glab))
			(if (neq ?nb1 ?nb2) 
				then FALSE
				else ; ?nb1 = ?nb2
					(bind ?cell (label-cell ?lab))
					(bind ?seg (label-cell ?glab))
					(rc-cell-linked-to-physical-2D-segment ?cell ?seg)
			)
	)
)



(deffunction label-glabel-glinked-or (?lab1 $?glabs)
	"supposes ?lab1 is a label and $glabs is a sequence of labels or g-labels"
	(bind ?nb1 (label-number ?lab1))
	(bind ?cell1 (label-cell ?lab1))
	(bind ?row1 (cell-row ?cell1))
	(bind ?col1 (cell-column ?cell1))
	(bind ?bl1 (block ?row1 ?col1))

	(foreach ?cand2 $?glabs
        (bind ?nb2 (label-number ?cand2))
        (bind ?cell2 (label-cell ?cand2))
        (bind ?row2 (cell-row ?cell2))
        (bind ?col2 (cell-column ?cell2))
		(if (and (<= ?row2 ?*grid-size*) (<= ?col2 ?*grid-size*))
			then ; ?cand2 is a candidate and ?cell2 is an rc-cell
				(bind ?bl2 (block ?row2 ?col2))
				(if (nrc-linked ?nb1 ?row1 ?col1 ?bl1 ?nb2 ?row2 ?col2 ?bl2) then (return TRUE))
			else ; ?cand2 is a cand-segment and ?cell2 is a segment
				(if (and (eq ?nb1 ?nb2) (rc-cell-linked-to-physical-2D-segment ?cell1 ?cell2)) ; can be improved by inserting explicit code here
					then (return TRUE)
				)
		)
	)
	(return FALSE)
)



