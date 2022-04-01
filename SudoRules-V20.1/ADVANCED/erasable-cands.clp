
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              ERASABLE CANDIDATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - December 2021            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;; Notice that all the computations are done in context 0.
;;; This is possible at the cost of re-initialising context 0 many times.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Used for finding 2-step or fewer step solutions for a Sudoku or Sukaku
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Given:
;;; - the current set of active rules,
;;; - a puzzle (given as a string or a sukaku list)
;;; - and a list of candidates,
;;; the following functions look for the candidates in the list that can be eliminated by a single rule.
;;; If the list of candidates is empty, it is considered as unrestricted and all the candidates are tried.

;;; This function works in the current resolution state of contetxt 0,
;;; which must have been previously initialised.

(deffunction find-erasable-candidates-sudoku-string (?sudoku-string $?cand-list)
    (bind ?time0 (time))
    (bind ?len (length$ ?cand-list))
    ;;; if no list is given, try all the candidates:
    (if (eq ?len 0) then
        (init-sudoku-string ?sudoku-string)
        (do-for-all-facts
            ((?f candidate))
            (and (eq ?f:context 0) (eq ?f:status cand))
            (bind ?cand-list (create$ ?cand-list ?f:label))
        )
        (bind ?len (length$ ?cand-list))
    )
    ;;; Find which candidates in ?cand-list can be eliminated in a single step by the current set of rules
    (printout t "===> CHECKING WHICH OF THE " ?len " CANDIDATES CAN BE ELIMINATED IN A SINGLE STEP BY THE CURRENT SET OF RULES:" crlf)
    (bind ?list-of-erasable-cands (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?cand (nth$ ?i ?cand-list))
        (if ?*debug* then (printout t crlf crlf "===> Trying to eliminate candidate #" ?i ": " ?cand crlf)
            else (printout t ".")
        )
        (try-to-eliminate-candidates ?cand)
        ;;; check if this candidate is still present
        (if (not (any-factp ((?f candidate)) (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand)))) then
            (printout t ?cand " can be eliminated" crlf)
            (bind ?list-of-erasable-cands (create$ ?list-of-erasable-cands ?cand))
        )
        ;;; Restore the original state
        (init-sudoku-string ?sudoku-string)
        (bind ?i (+ ?i 1))
    )
    (if (not ?*debug*) then (printout t crlf))
    (bind ?computation-time (seconds-to-hours (- (time) ?time0)))
    (printout t "erasable candidates computation time = " ?computation-time crlf)
    (printout t "===> " (length$ ?list-of-erasable-cands) " candidates can be eliminated with the current set of rules: " crlf)
    (print-list-of-labels ?list-of-erasable-cands)
    (printout t crlf)
    ?list-of-erasable-cands
)


;;; This is likely to be more useful in practice:

(deffunction find-erasable-candidates-sukaku-list (?sukaku-list $?cand-list)
    (bind ?time0 (time))
    (bind ?len (length$ ?cand-list))
    ;;; if no list is given, try all the candidates:
    (if (eq ?len 0) then
        (init-sukaku-list ?sukaku-list)
        (do-for-all-facts
            ((?f candidate))
            (and (eq ?f:context 0) (eq ?f:status cand))
            (bind ?cand-list (create$ ?cand-list ?f:label))
        )
        (bind ?len (length$ ?cand-list))
    )
    ;;; Find which candidates in ?cand-list can be eliminated in a single step by the current set of rules
    (printout t "===> CHECKING WHICH OF THE " ?len " CANDIDATES CAN BE ELIMINATED IN A SINGLE STEP BY THE CURRENT SET OF RULES:" crlf)
    (bind ?list-of-erasable-cands (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?cand (nth$ ?i ?cand-list))
        (if ?*debug* then (printout t crlf crlf "===> Trying to eliminate candidate #" ?i ": " ?cand crlf)
            else (printout t ".")
        )
        (try-to-eliminate-candidates ?cand)
        ;;; check if this candidate is still present
        (if (not (any-factp ((?f candidate)) (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand)))) then
            (bind ?list-of-erasable-cands (create$ ?list-of-erasable-cands ?cand))
        )
        ;;; Restore the original state
        (init-sukaku-list ?sukaku-list)
        (bind ?i (+ ?i 1))
    )
    (if (not ?*debug*) then (printout t crlf))
    (bind ?computation-time (seconds-to-hours (- (time) ?time0)))
    (printout t "erasable candidates computation time = " ?computation-time crlf)
    (printout t "===> " (length$ ?list-of-erasable-cands) " candidates can be eliminated: " crlf)
    (print-list-of-labels ?list-of-erasable-cands)
    (printout t crlf)
    ?list-of-erasable-cands
)


;;; Also available: generic functions find-erasable-candidates and find-erasable-pairs,
;;; These functions work because init-resolution-state has been defined in SudoRules/GENERAL/solve


