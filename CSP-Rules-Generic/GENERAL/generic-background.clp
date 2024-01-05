
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              GENERIC BACKGROUND
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





;;; The following generic functions isolate the generic rule from their possibly application-specific implementation
;;; They rely on global variables ?*links*, ..., but they may been redefined in application-specific ways




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; functions to be redefined by each application

(deffunction csp-var-type (?csp) ?csp)


;;; the following allows to restrict some tests (contradictions, solution-found, ...) 
;;; to some basic types of non-redundant csp-variables

(deffunction is-basic-csp-variable-type (?type) TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; LABELS AND G-LABELS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; label or glabel pairs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; the following functions may be redefined in application-specifc ways

(deffunction label-pair (?lab1 ?lab2)
    ;;; in label-pairs, the smallest label always comes first
    ;;; beware that lab or glab may have variable length
    ;;; the L symbols are intended to prevent overlaps in this generic definition
    (if (< ?lab1 ?lab2) then (sym-cat L ?lab1 L ?lab2) else (sym-cat L ?lab2 L ?lab1))
)

(deffunction label-label-constraint-triplet (?lab1 ?lab2 ?cstr)
    (if (< ?lab1 ?lab2) then (sym-cat L ?lab1 L ?lab2 ?cstr) else (sym-cat L ?lab2 L ?lab1 ?cstr))
)


(deffunction label-glabel-pair (?lab ?glab)
    ;;; beware that lab or glab may have variable length
    ;;; the L and G symbols are intended to prevent overlaps in this generic definition
    (sym-cat L ?lab G ?glab)

)

(deffunction label-glabel-constraint-triplet (?lab ?glab ?cstr)
    ;;; beware that lab or glab may have variable length
    ;;; the L and G symbols are intended to prevent overlaps in this generic definition
    (sym-cat L ?lab G ?glab C ?cstr)
)

(deffunction glabel-pair (?glab1 ?glab2)
    ;;; beware that lab or glab may have variable length
    ;;; the G symbols are intended to prevent overlaps in this generic definition
    (sym-cat G ?glab1 G ?glab2)

)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; links and glinks between labels and g-labels
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; the next function MUST apply to any labels, whether or not there are corresponding candidates
;;; it is used in init-links and in ECP
;;; the next function MUST be redefined in application-specific ways

(deffunction labels-linked (?lab1 ?lab2)
    ;;; ?*label-links* may contain only links for (lab1, lab2) pairs with lab1 < lab2
    (if (< ?lab1 ?lab2)
        then (member$ (label-pair ?lab1 ?lab2) ?*label-links*)
        else (member$ (label-pair ?lab1 ?lab2) ?*label-links*)
    )
)

(deffunction add-label-link (?lab1 ?lab2)
    ;;; remember that label-pairs are always created with the smallest label first
    (bind ?*label-links* (create$ (label-pair ?lab1 ?lab2) ?*label-links*))
)


;;; the next function MUST apply to any labels, whether or not there are corresponding candidates
;;; it is used in init-glinks
;;; the next function MUST be redefined in application-specific ways

(deffunction label-glabel-glinked (?lab ?glab)
    (if (member$ (label-glabel-pair ?lab ?glab) ?*label-glabel-glinks*) then TRUE else FALSE)
)


(deffunction add-label-glabel-glink (?lab ?glab)
    (bind ?*label-glabel-glinks* (create$ (label-glabel-pair ?lab ?glab) ?*label-glabel-glinks*))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; inclusion of labels in glabels
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction label-in-glabel (?lab ?glab)
    (if (member$ (label-glabel-pair ?lab ?glab) ?*label-in-glabel*) then TRUE else FALSE)
)


(deffunction add-label-in-glabel (?lab ?glab)
    (bind ?*label-in-glabel* (create$ (label-glabel-pair ?lab ?glab) ?*label-in-glabel*))
)


(deffunction glabel-contains-none-of (?glab $?labs)
    (bind ?i 1)
    (while (<= ?i (length$ $?labs))
        (bind ?lab (nth$ ?i $?labs))
        (if (member$ (label-glabel-pair ?lab ?glab) ?*label-in-glabel*) then (return FALSE))
        (bind ?i (+ ?i 1))
	)
	(return TRUE)
)


(deffunction glabel-contains-some-of (?glab $?labs)
    (bind ?i 1)
    (while (<= ?i (length$ $?labs))
        (bind ?lab (nth$ ?i $?labs))
        (if (member$ (label-glabel-pair ?lab ?glab) ?*label-in-glabel*) then (return TRUE))
        (bind ?i (+ ?i 1))
    )
	(return FALSE)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CANDIDATES AND G-CANDIDATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; because the following functions are used intensively in chain rules,
;;; application-specific, more efficient versions should be written whenever possible


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; links between existing candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; contrary to the label functions, the following functions may refer only to links between undecided candidates
;;; they may also contain more and they don't have to be updated when a candidate is deleted
;;; notice that linked => labels-linked, but there's no converse

(deffunction linked (?lab1 ?lab2)
    ;;; ?*links* may contain only links for (lab1, lab2) pairs with lab1 < lab2
    (or
        (and (< ?lab1 ?lab2) (member$ (label-pair ?lab1 ?lab2) ?*links*))
        (and (< ?lab2 ?lab1) (member$ (label-pair ?lab2 ?lab1) ?*links*))
    )
)

(deffunction linked-or (?lab1 $?labs)
    ;;; ?*label-links* may contain only links for (lab1, lab2) pairs with lab1 < lab2
    (foreach ?lab2 $?labs (if (linked ?lab1 ?lab2) then (return TRUE)))
	(return FALSE)
)

(deffunction add-link (?lab1 ?lab2)
    (bind ?*links* (create$ (label-pair ?lab1 ?lab2) ?*links*))
    (bind ?*links-count* (+ ?*links-count* 1))
)


;;; should not be used
(deffunction add-csp-link (?lab1 ?lab2)
    (bind ?*csp-links* (create$ (label-pair ?lab1 ?lab2) ?*csp-links*))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; glinks between existing candidates and g-candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; these functions may contain only glinks between existing candidates (or c-values)  and g-candidates
;;; they may also contain more and they don't have to be updated when a candidate is deleted
;;; notice that glinked => label-glabel-glinked, but there's no converse


(deffunction glinked (?lab ?glab)
    (if (member$ (label-glabel-pair ?lab ?glab) ?*glinks*) then TRUE else FALSE)
)


(deffunction is-label (?glab) TRUE) ;;;;;;;;;;;;;;;    BEWARE: IT MUST BE REDEFIND BY EACH APPLICATION


(deffunction glinked-or (?lab $?glabs)
    ;;; ?lab is supposed to be a label (not checked)
    ;;; because $glabs can contain both candidates and g-candidates, this function checks both links and glinks
    (foreach ?glab $?glabs
        (if (or (and (is-label ?glab) (linked ?lab ?glab)) (glinked ?lab ?glab)) then (return TRUE))
	)
	(return FALSE)
)


(deffunction add-glink (?lab ?glab)
    (bind ?*glinks* (create$ (label-glabel-pair ?lab ?glab) ?*glinks*))
    (bind ?*glinks-count* (+ ?*glinks-count* 1))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions about g2-links (used for g2-whips)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; 0 is used to mean no candidate; it is always in the second rlc position

(deffunction g2-linked (?lab1 ?lab2a ?lab2b)
    (if (eq ?lab2b 0) 
        then (linked ?lab1 ?lab2a)
        else (and (linked ?lab1 ?lab2a) (linked ?lab1 ?lab2b))
    )
)


(deffunction g2-linked-or (?lab1 ?zzz ?labsa ?labsb)
    (bind ?len (length$ ?labsa))
    (if (neq (length$ ?labsb) ?len) then (printout t "ERROR IN G2-LABELS-LIST:" ?labsa ", " ?labsb crlf) (halt))
    (if (linked ?lab1 ?zzz) then (return TRUE))
    (bind ?n 1)
    (while (<= ?n ?len)
        (bind ?lab2a (nth$ ?n ?labsa))
        (bind ?lab2b (nth$ ?n ?labsb))
        (if (g2-linked ?lab1 ?lab2a ?lab2b) then (return TRUE))
        (bind ?n (+ ?n 1))
	)
	(return FALSE)
)







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; functions about bi-whip and bi-braid links,
;;; and contradictory pairs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction biwhip-linked (?xxx ?yyy)
	(or
		(linked ?xxx ?yyy)
		(and (< ?xxx ?yyy) (member$ (label-pair ?xxx ?yyy) ?*all-biwhip-contrads*))
		(and (< ?yyy ?xxx) (member$ (label-pair ?yyy ?xxx) ?*all-biwhip-contrads*))
	)
)



(deffunction biwhip-linked-or (?xxx $?l)
	(bind ?len (length$ $?l))
	(if (eq ?len 0) then (return FALSE))
	(bind ?i 1)
	(while (<= ?i ?len)
		(bind ?yyy (nth$ ?i $?l))
		(if (linked ?xxx ?yyy) then (return TRUE))
		(if (and (< ?xxx ?yyy) (member$ (label-pair ?xxx ?yyy) ?*all-biwhip-contrads*)) then (return TRUE))
		(if (and (< ?yyy ?xxx) (member$ (label-pair ?yyy ?xxx) ?*all-biwhip-contrads*)) then (return TRUE))
		(bind ?i (+ ?i 1))
	)
	(return FALSE)
)



(deffunction bibraid-linked (?xxx ?yyy)
	(or
		(linked ?xxx ?yyy)
        (and (< ?xxx ?yyy) (member$ (label-pair ?xxx ?yyy) ?*all-biwhip-contrads*))
        (and (< ?yyy ?xxx) (member$ (label-pair ?yyy ?xxx) ?*all-biwhip-contrads*))
		(and (< ?xxx ?yyy) (member$ (label-pair ?xxx ?yyy) ?*all-bibraid-contrads*))
		(and (< ?yyy ?xxx) (member$ (label-pair ?yyy ?xxx) ?*all-bibraid-contrads*))
	)
)
			
			

;;; used in B*-Braids
(deffunction bibraid-linked-or (?xxx $?l)
	(bind ?len (length$ $?l))
	(if (eq ?len 0) then (return FALSE))
	(bind ?i 1)
	(while (<= ?i ?len)
		(bind ?yyy (nth$ ?i $?l))
		(if (bibraid-linked ?xxx ?yyy) then (return TRUE))
		(bind ?i (+ ?i 1))
	)
	(return FALSE)
)



(deffunction contradictory-pair (?xxx ?yyy)
    (or
        (and (< ?xxx ?yyy) (member$ (label-pair ?xxx ?yyy) ?*all-contrads*))
        (and (< ?yyy ?xxx) (member$ (label-pair ?yyy ?xxx) ?*all-contrads*))
    )
)
            
            


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; utilities for chains
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction same-sets-of-rlcs (?rlc1 ?rlcs1 ?rlcs2)
    ;;; used in braids
    ;;; supposes that rlc1+rlcs1 and rlcs2 are known to be sets (no repetition)
	(and
		(member$ ?rlc1 ?rlcs2)
		(subsetp ?rlcs1 ?rlcs2)
	)
)



