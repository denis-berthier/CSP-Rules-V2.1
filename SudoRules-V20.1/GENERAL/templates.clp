
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
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





;;; define Sudoku specific extensions of the general "candidate" predicate


(deftemplate candidate
    ;;; standard CSP-Rules slots that cannot be changed:
	(slot context (type INTEGER) (default 0))
    (slot status (type SYMBOL) (allowed-values cand c-value) (default cand))
	(slot label (type INTEGER))
    (slot flag (type INTEGER) (allowed-values 0 1) (default 1))
    ;;; additional Sudoku specific slots
	(slot number (type INTEGER))
	(slot row (type INTEGER))
	(slot column (type INTEGER))
	(slot block (type INTEGER))
	(slot square (type INTEGER))
    ;;; added on Feb 06, 2023 for easier dealing with k-digit patterns
    ;;; doesn't have any impact on anything pre-existing
    (slot band (type INTEGER) (default 0))
    (slot stack (type INTEGER) (default 0))
)



(deftemplate g-candidate
    ;;; standard CSP-Rules slots that cannot be changed:
	(slot context (type INTEGER) (default 0))
	(slot label (type INTEGER))
    (slot type (type SYMBOL) (default undefined))
    (slot csp-var (type INTEGER) (default 0))
    ;;; additional slots may be added for any specific application, 
    ;;; but neither the above ones nor their specifications should be changed
	(slot number (type INTEGER))
	(slot row (type INTEGER)) ; row or row-segment
	(slot column (type INTEGER)) ; column or column-segment
    (slot block (type INTEGER)) ; the block of the segment
)
