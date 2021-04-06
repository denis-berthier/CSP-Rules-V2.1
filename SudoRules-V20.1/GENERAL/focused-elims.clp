
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
;;; - a set of rules (chosen in the config file),
;;; - a puzzle (given as a string or a sukaku list)
;;; - and a list of candidates,
;;; these functions look for the candidates in the list that can be eliminated by the rules.
;;; If the list is empty, it is considered as unrestricted and all the candidates are tried.

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
    (printout t crlf crlf "===> " ?len " candidates to try." crlf)
    ;;; find the candidates in ?cand-list that can be eliminated by the current set of rules
    (bind ?list-of-cands-with-elim (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?cand (nth$ ?i ?cand-list))
        (printout t crlf crlf "===> Trying candidate #" ?i ": " ?cand crlf)
        (init-sudoku-string ?sudoku-string)
        ;(print-current-resolution-state)
        (try-to-eliminate-candidates ?cand)
        ;;; check if this candidate is still present
        (if (not (any-factp ((?f candidate)) (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand)))) then
            (printout t ?cand " can be eliminated" crlf)
            (bind ?list-of-cands-with-elim (create$ ?list-of-cands-with-elim ?cand))
        )
        (bind ?i (+ ?i 1))
    )
    (bind ?compute-time (seconds-to-hours (- (time) ?time0)))
    (printout t "===> " (length$ ?list-of-cands-with-elim) " candidates can be eliminated: " crlf)
    (printout t (print-list-of-labels ?list-of-cands-with-elim) crlf)
    (printout t crlf "computation time = " ?compute-time crlf)
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
    (printout t crlf crlf "===> " ?len " candidates to try." crlf)
    ;;; find the candidates in ?cand-list that can be eliminated
    ;;; from the sukaku list by the current set of rules
    (bind ?list-of-cands-with-elim (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?cand (nth$ ?i ?cand-list))
        (printout t crlf crlf "===> Trying candidate #" ?i ": " ?cand crlf)
        (init-sukaku-list ?sukaku-list)
        ;(print-current-resolution-state)
        (try-to-eliminate-candidates ?cand)
        ;;; check if this candidate is still present
        (if (not (any-factp ((?f candidate)) (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand)))) then
            (bind ?list-of-cands-with-elim (create$ ?list-of-cands-with-elim ?cand))
        )
        (bind ?i (+ ?i 1))
    )
    (bind ?compute-time (seconds-to-hours (- (time) ?time0)))
    (printout t "===> " (length$ ?list-of-cands-with-elim) " candidates can be eliminated: " crlf)
    (printout t (print-list-of-labels ?list-of-cands-with-elim) crlf)
    (printout t crlf "computation time = " ?compute-time crlf)
    ?list-of-cands-with-elim
)


;;; Also available: generic functions find-erasable-candidates and find-erasable-pairs,
;;; because init-resolution-state has been redefined in SudoRules/GENERAL/solve

