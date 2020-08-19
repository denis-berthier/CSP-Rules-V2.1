
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              G LABELS
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





;;; this file is loaded only if (or ?*G-Whips* ?*G-Braids*), i.e. only if G-Braids or G-Whips are used




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions about numbers, segments of numbers, representation of glabels and of label-glabel-pairs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; glabels are based on two types of segments of numbers:
;;; k+ = {k k+1, ..., n}
;;; k- = {1, 2, ..., k}
;;; k+ (the upper-segment of k) is represented by number 1 * ?*internal-factor* + k
;;; k- (the lower-segment of k) is represented by number 2 * ?*internal-factor* + k


(deffunction upper-segment-of (?x)
	(+ ?*internal-factor* ?x)
)

(deffunction lower-segment-of (?x)
	(+ (* 2 ?*internal-factor*) ?x)
)

(deffunction in-number-segment (?x ?yyy)
    (bind ?type (div ?yyy ?*internal-factor*)) ; ?type = 1 or 2
    (bind ?boundary (mod ?yyy ?*internal-factor*)) ; segment boundary
	(if (eq ?type 1) 
        then (>= ?x ?boundary)
        else (if (eq ?type 2) 
                then (<= ?x ?boundary)
                else (printout t "number-segment error" crlf) (halt)
            )
    )
)


(deffunction upper-glabel (?nb ?cell)
    (+ (* ?*internal-factor-2* (upper-segment-of ?nb)) ?cell)
)

(deffunction lower-glabel (?nb ?cell)
    (+ (* ?*internal-factor-2* (lower-segment-of ?nb)) ?cell)
)


(deffunction glabel-cell (?glabel)
    (mod ?glabel ?*internal-factor-2*)  
)



;;; remember the following definition
;;; (deffunction label-number (?glabel) (div ?label ?*internal-factor-2*))
;;; when applied to a glabel, it would not give the proper names with the generic number-name function
;;; redefine the number-name function so that it prints nb-values of g-labels correctly

(deffunction number-name (?nb)
    (if (<= ?nb ?*grid-size*)
        then 
            (sym-cat ?*number-symbol* ?nb)
        else
            (bind ?type (div ?nb ?*internal-factor*)) ; ?type = 1 or 2
            (if (and (neq ?type 1) (neq ?type 2)) then (printout t "g-label naming ERROR" crlf))
            (bind ?boundary (mod ?nb ?*internal-factor*)) ; segment boundary
            (if (eq ?type 1) 
                then (sym-cat ?*number-symbol* ?boundary +)
                else (sym-cat ?*number-symbol* ?boundary -)
            )
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions for initialising glabels and glinks
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction create-glabels-and-glinks (?cell1 ?cell2)
	;;; create physical-upper-glabels for cell1, csp-glinks and glinks from g-labels in cell1 to labels in cell2
    (bind ?nb1 3) 
    (while (< ?nb1 ?*grid-size*)
        (bind ?upper-glabel (upper-glabel ?nb1 ?cell1))
        (assert (g-label ?upper-glabel upper))
        (bind ?i 1)
        (while (< ?i ?nb1)
            (bind ?llc (+ (* ?*internal-factor-2* ?i) ?cell1))
            (assert (physical-csp-glink ?llc ?upper-glabel rc))
            (bind ?i (+ ?i 1))
        )

        (bind ?nb2 1)
        (while (<= ?nb2 ?nb1)
            (bind ?label (+ (* ?*internal-factor-2* ?nb2) ?cell2))
            (assert (physical-glink ?upper-glabel ?label ineq))
            (add-label-glabel-glink ?label ?upper-glabel)
            (bind ?nb2 (+ ?nb2 1))
        )
        (bind ?nb1 (+ ?nb1 1))
    )

	;;; create physical-lower-glabels for cell2, csp-glinks and glinks from g-labels in cell2 to labels in cell1
    (bind ?nb1 (- ?*grid-size* 2)) 
    (while (> ?nb1 1)
        (bind ?lower-glabel (lower-glabel ?nb1 ?cell2))
        (assert (g-label ?lower-glabel lower))
        (bind ?i ?*grid-size*)
        (while (> ?i ?nb1)
            (bind ?llc (+ (* ?*internal-factor-2* ?i) ?cell2))
            (assert (physical-csp-glink ?llc ?lower-glabel rc))
            (bind ?i (- ?i 1))
        )
        
        (bind ?nb2 ?*grid-size*)
        (while (>= ?nb2 ?nb1)
            (bind ?label (+ (* ?*internal-factor-2* ?nb2) ?cell1))
            (assert (physical-glink ?lower-glabel ?label ineq))
            (add-label-glabel-glink ?label ?lower-glabel)
            (bind ?nb2 (- ?nb2 1))
        )
        (bind ?nb1 (- ?nb1 1))
    )
)



(deffunction init-horizontal-glabels-and-glinks (?horiz)
	;;; for every row,
	(foreach ?row  ?*rows*
        ;;; for every column in this row, but the last
		(bind ?col 1)
		(while (< ?col ?*grid-size*)
			(bind ?i (+ (* (- ?row 1) (- ?*grid-size* 1)) ?col))
			;;; read the content of the inter-cell from the entries
			(bind ?sign (nth$ 1 (explode$ (sub-string ?i ?i ?horiz))))
            (if (or (eq ?sign <) (eq ?sign >)) then
                (bind ?cell1 (+ (*  ?*internal-factor* ?row) ?col))
                (bind ?cell2 (+ (*  ?*internal-factor* ?row) (+ ?col 1)))
                (if (eq ?sign <) then (create-glabels-and-glinks ?cell1 ?cell2))
                (if (eq ?sign >) then (create-glabels-and-glinks ?cell2 ?cell1))
            )
            (bind ?col (+ ?col 1))
		)
	)
)



(deffunction init-vertical-glabels-and-glinks (?verti)
	;;; for every column,
	(foreach ?col  ?*columns*
        ;;; for every row in this column, but the last
		(bind ?row 1)
		(while (< ?row ?*grid-size*)
			(bind ?i (+ (* (- ?col 1) (- ?*grid-size* 1)) ?row))
			;;; read the content of the inter-cell from the entries
			(bind ?sign (nth$ 1 (explode$ (sub-string ?i ?i ?verti))))
            (if (or (eq ?sign <) (eq ?sign >)) then
                (bind ?cell1 (+ (*  ?*internal-factor* ?row) ?col))
                (bind ?cell2 (+ (*  ?*internal-factor* (+ ?row 1)) ?col))
                (if (eq ?sign <) then (create-glabels-and-glinks ?cell1 ?cell2))
                (if (eq ?sign >) then (create-glabels-and-glinks ?cell2 ?cell1))
            )
            (bind ?row (+ ?row 1))
		)
	)
)


(deffunction define-glabels-and-glinks (?horiz ?verti)
    (bind ?*glinks* (create$))
    (init-horizontal-glabels-and-glinks ?horiz)
    (init-vertical-glabels-and-glinks ?verti)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions about labels and glabels
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction label-in-glabel (?label ?glabel)
	"supposes ?glabel is a g-label; returns FALSE if ?label is not a label"
	(bind ?cell1 (label-cell ?label))
	(bind ?cell2 (glabel-cell ?glabel))
    (if (neq ?cell1 ?cell2) then (return FALSE))
    
	(bind ?nb1 (label-number ?label))
	(bind ?nb2 (div ?glabel ?*internal-factor-2*))
	(if (eq ?nb1 ?nb2) 
		then TRUE ; => ?g-label is a label; should never happen
		else ; ?nb1 <> ?nb2
			(bind ?type2 (div ?nb2 ?*internal-factor*))
            (if (eq ?type2 1) ; upper-segment
                then (return (> ?nb1 (mod ?nb2 ?*internal-factor*)))
            )
            (if (eq ?type2 2) ; lower-segment
                then (return (< ?nb1 (mod ?nb2 ?*internal-factor*)))
            )
	)
)



(deffunction glabel-contains-none-of (?glabel $?labels)
	"supposes ?glabel is a g-label (not a label) and $?labels is a sequence of labels or g-labels"
    (bind ?cell1 (mod ?glabel ?*internal-factor-2*))
    (bind ?seg1 (div ?glabel ?*internal-factor-2*))
    (bind ?type1 (div ?seg1 ?*internal-factor*))
    (bind ?nb1 (mod ?seg1 ?*internal-factor*))
	(bind ?l (length$ $?labels))
	(bind ?i 1)
	(while (<= ?i ?l)
		(bind ?lab2 (nth$ ?i $?labels))
		(bind ?cell2 (mod ?lab2 ?*internal-factor-2*))
		(if (eq ?cell2 ?cell1) then
            (bind ?seg2 (div ?lab2 ?*internal-factor-2*))
            (bind ?type2 (div ?seg2 ?*internal-factor*)) ; 0, 1 ou 2
            (bind ?nb2 (mod ?seg2 ?*internal-factor*))
            (if (eq ?type1 1) then
                (if (and (eq ?type2 0) (> ?nb2 ?nb1)) then (return FALSE)) 
                (if (and (eq ?type2 1) (> ?nb2 ?nb1)) then (return FALSE)) 
            )
            (if (eq ?type1 2) then
                (if (and (eq ?type2 0) (< ?nb2 ?nb1)) then (return FALSE)) 
                (if (and (eq ?type2 2) (< ?nb2 ?nb1)) then (return FALSE)) 
            )
        )

		(bind ?i (+ ?i 1))
	)
	(return TRUE)
)


(deffunction glabel-contains-some-of (?cand-seg $?cands)
    (not (glabel-contains-none-of ?cand-seg $?cands))
)



(deffunction labels-glinked (?label ?glabel)
	"supposes ?label is a label and ?glabel is a label or a g-label; there is no check for ?label"
	(if (<= ?glabel ?*internal-factor-3*)
		then ; ?glabel is a candidate
			(linked ?label ?glabel)
		else ; ?glabel is a g-label
			(member$ (label-glabel-pair ?label ?glabel) ?*glinks*)
	)
)


(deffunction glinked (?label ?glabel) (labels-glinked ?label ?glabel))



(deffunction glinked-or (?lab1 $?labels)
	"supposes ?lab1 is a label and $?labels is a sequence of labels or g-labels"
	(bind ?l (length$ $?labels))
	(bind ?i 1)
	(while (<= ?i ?l)
		(bind ?lab2 (nth$ ?i $?labels))
        (if (glinked ?lab1 ?lab2) then (return TRUE))
		(bind ?i (+ ?i 1))
	)
	(return FALSE)
)



	
