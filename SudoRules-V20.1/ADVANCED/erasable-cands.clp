
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              FOCUSED ELIMINATIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - April 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Used for finding 2-step solutions for a Sudoku or Sukaku
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Given:
;;; - the current set of active rules,
;;; - a puzzle (given as a string or a sukaku list)
;;; - and a list of candidates,
;;; the following functions look for the candidates in the list that can be eliminated by a single rule.
;;; If the list of candidates is empty, it is considered as unrestricted and all the candidates are tried.

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
    ;;; Find the candidates in ?cand-list that can be eliminated by the current set of rules
    (printout t crlf crlf "===> CHECKING WHICH OF THE " ?len " CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:" crlf)
    (bind ?list-of-cands-with-elim (create$))
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
            (bind ?list-of-cands-with-elim (create$ ?list-of-cands-with-elim ?cand))
        )
        ;;; restore the original state
        (init-sudoku-string ?sudoku-string)
        (bind ?i (+ ?i 1))
    )
    (if (not ?*debug*) then (printout t crlf))
    (bind ?computation-time (seconds-to-hours (- (time) ?time0)))
    (printout t "erasable candidates computation time = " ?computation-time crlf)
    (printout t "===> " (length$ ?list-of-cands-with-elim) " candidates can be eliminated with the current set of rules: " crlf)
    (printout t (print-list-of-labels ?list-of-cands-with-elim) crlf)
    ?list-of-cands-with-elim
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
    ;;; Find the candidates in ?cand-list that can be eliminated
    ;;; from the sukaku list by the current set of rules
    (printout t crlf crlf "===> CHECKING WHICH OF THE " ?len " CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:" crlf)
    (bind ?list-of-cands-with-elim (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?cand (nth$ ?i ?cand-list))
        (if ?*debug* then (printout t crlf crlf "===> Trying to eliminate candidate #" ?i ": " ?cand crlf)
            else (printout t ".")
        )
        (try-to-eliminate-candidates ?cand)
        ;;; check if this candidate is still present
        (if (not (any-factp ((?f candidate)) (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand)))) then
            (bind ?list-of-cands-with-elim (create$ ?list-of-cands-with-elim ?cand))
        )
        ;;; restore the original state
        (init-sukaku-list ?sukaku-list)
        (bind ?i (+ ?i 1))
    )
    (if (not ?*debug*) then (printout t crlf))
    (bind ?computation-time (seconds-to-hours (- (time) ?time0)))
    (printout t "erasable candidates computation time = " ?computation-time crlf)
    (printout t "===> " (length$ ?list-of-cands-with-elim) " candidates can be eliminated: " crlf)
    (printout t (print-list-of-labels ?list-of-cands-with-elim) crlf)
    ?list-of-cands-with-elim
)


;;; Also available: generic functions find-erasable-candidates and find-erasable-pairs,
;;; because init-resolution-state has been redefined in SudoRules/GENERAL/solve

