
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              TEMPLATES
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





;;; Kakuro specific extensions of the general "candidate" predicate


(deftemplate candidate
    ;;; standard CSP-Rules slots that cannot be changed:
	(slot context (type INTEGER) (default 0))
    (slot status (type SYMBOL) (allowed-values cand c-value) (default cand))
	(slot label (type INTEGER))
    (slot flag (type INTEGER) (allowed-values 0 1) (default 1))
    ;;; additional Kakuro specific slots
    (slot type (type SYMBOL) (allowed-values white horiz-comb verti-comb black) (default white))
    ;;; type "black" is used only for filling black cells before  printing
    ;;; for candidates of type horiz-comb or verti-comb, the value of slot number is a combination, 
    ;;; while row and column are those of the underlying black cell
	(slot number (type INTEGER)) 
	(slot row (type INTEGER))
	(slot column (type INTEGER))
	(slot column-of-horizontal-controller (type INTEGER)) ; for a black cell, 0
	(slot row-of-vertical-controller (type INTEGER)) ; for a black cell, 0
)




;;; Kakuro specific templates, used for g-lables, g-whips, ...

(deftemplate sector-with-gcombs
    (slot type (type SYMBOL) (allowed-values horiz verti))
    (slot sum (type INTEGER))
    (slot size (type INTEGER))
    (multislot combinations (type INTEGER))
    (multislot compatible-digits (type INTEGER)) 

    ;;; row and column of starting black cell
    (slot row (type INTEGER))
    (slot column (type INTEGER))
)

(deftemplate sector-with-gdigs
    (slot type (type SYMBOL) (allowed-values horiz verti))
    (slot sum (type INTEGER))
    (slot size (type INTEGER))
    (multislot combinations (type INTEGER))
    (multislot compatible-digits (type INTEGER)) 

    ;;; row and column of starting black cell
    (slot row (type INTEGER))
    (slot column (type INTEGER))
)


