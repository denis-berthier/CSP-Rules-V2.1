
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              EVALUATE ERASABLE CANDIDATES
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
;;; Used for finding fewer-steps solutions for a Sudoku or Sukaku
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-list-of-cands-and-values (?list-of-cands-and-values)
    (bind ?len (length$ ?list-of-cands-and-values))
    (bind ?i 1)
    (while (<= ?i ?len)
        (print-label (nth$ ?i ?list-of-cands-and-values))
        (bind ?i (+ ?i 1))
        (printout t " (value = " (nth$ ?i ?list-of-cands-and-values) ")     ")
        (bind ?i (+ ?i 1))
    )
)


;;; Given:
;;; - the current set of active rules,
;;; - a set of "zero-step" rules (?RT0),
;;; - a puzzle (given as a string or as a sukaku list),
;;; - and a list of candidates,
;;; the functions in this file look for the candidates in the list that can be eliminated by a single rule.
;;; They also evaluate each candidate wrt to ?RT0.
;;; If the list of candidates is empty, it is considered as unrestricted and all the candidates in context 0 are tried.


;;; The followwing two functions return a list made of the best score followed by all the pairs (erasable-cand score).


(deffunction find-erasable-candidates-sudoku-string-and-eval-wrt-RT0 (?RT0 ?sudoku-string $?cand-list)
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
    ;;; Find the candidates in ?cand-list that can be eliminated by the current set of rules,
    ;;; evaluate them and compute the largest value:
    (printout t "===> CHECKING WHICH OF THE " ?len " REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:" crlf)
    ;;; to keep track of max-value and of list of pairs (erasable-cand, value):
    (bind ?best-score 0)
    (bind ?list-of-erasable-cands-and-scores (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?cand (nth$ ?i ?cand-list))
        (if ?*debug*
            then (printout t crlf crlf "===> Trying to eliminate candidate #" ?i ": " ?cand crlf)
            else (printout t ".")
        )
        (try-to-eliminate-candidates ?cand)
        ;;; If this candidate ?cand has been eliminated, evaluate it wrt ?RT0:
        ;;; disable the rules not in ?RT0 and run
        ;;; so as to evaluate all the consequences in ?RT0 of firing the rule that eliminated ?cand
        (if (not (any-factp ((?f candidate)) (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand)))) then
            ;;; disable the rules not in ?RT0 and run
            (disable-rules-not-in-RT0 0 ?RT0)
            (run)
            ;;; count the number of remaining candidates
            (bind ?nb-remaining-cands 0)
            (do-for-all-facts
                ((?f candidate))
                (and (eq ?f:context 0) (eq ?f:status cand))
                (bind ?nb-remaining-cands (+ ?nb-remaining-cands 1))
            )
            ;;; value is the number of candidates eliminated due to firing the rule that eliminated ?cand plus those in ?RT0
            (bind ?value (- ?len ?nb-remaining-cands))
            (bind ?best-score (max ?best-score ?value))
            (if ?*debug* then (printout t crlf (print-label ?cand) " can be eliminated; its value is " ?value crlf))
            (bind ?list-of-erasable-cands-and-scores (create$ ?list-of-erasable-cands-and-scores ?cand ?value))
        )
        ;;; restore the original state and restore the original set of rules
        (init-sudoku-string ?sudoku-string)
        (re-enable-disabled-rules-not-in-RT0 0 ?RT0)
        (bind ?i (+ ?i 1))
    )
    (if (not ?*debug*) then (printout t crlf))
    (bind ?computation-time (seconds-to-hours (- (time) ?time0)))
    (printout t "find and eval erasable candidates computation time = " ?computation-time crlf)
    (printout t "===> " (div (length$ ?list-of-erasable-cands-and-scores) 2) " candidates can be eliminated with the current set of rules: " crlf)
    (printout t "best score found = " ?best-score crlf)
    (if ?*debug* then (printout t (print-list-of-cands-and-values ?list-of-erasable-cands-and-scores) crlf))
    ;;; pack best score with the pairs to return it
    (create$ ?best-score ?list-of-erasable-cands-and-scores)
)


;;; This is likely to be more useful in practice:

(deffunction find-erasable-candidates-sukaku-list-and-eval-wrt-RT0 (?RT0 ?sukaku-list $?cand-list)
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
    ;;; Find the candidates in ?cand-list that can be eliminated by the current set of rules,
    ;;; evaluate them and compute the largest value
    (printout t "===> CHECKING WHICH OF THE " ?len " REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:" crlf)
    ;;; to keep track of max-value + list of pairs (erasable-cand, value):
    (bind ?best-score 0)
    (bind ?list-of-erasable-cands-and-scores (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?cand (nth$ ?i ?cand-list))
        (if ?*debug* then (printout t crlf crlf "===> Trying to eliminate candidate #" ?i ": " ?cand crlf)
            else (printout t ".")
        )
        (try-to-eliminate-candidates ?cand)
        ;;; If this candidate ?cand has been eliminated, evaluate it wrt ?RT0:
        (if (not (any-factp ((?f candidate)) (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand)))) then
            ;;; disable the rules not in ?RT0 and run
            (disable-rules-not-in-RT0 0 ?RT0)
            (run)
            ;;; count the number of remaining candidates
            (bind ?nb-remaining-cands 0)
            (do-for-all-facts
                ((?f candidate))
                (and (eq ?f:context 0) (eq ?f:status cand))
                (bind ?nb-remaining-cands (+ ?nb-remaining-cands 1))
            )
            ;;; value is the number of candidates eliminated due to firing the rule that eliminated ?cand plus those in ?RT0
            (bind ?value (- ?len ?nb-remaining-cands))
            (bind ?best-score (max ?best-score ?value))
            (if ?*debug* then (printout t crlf (print-label ?cand) " can be eliminated; its value is " ?value crlf))
            (bind ?list-of-erasable-cands-and-scores (create$ ?list-of-erasable-cands-and-scores ?cand ?value))
        )
        ;;; restore the original state and restore the original set of rules
        (init-sukaku-list ?sukaku-list)
        (re-enable-disabled-rules-not-in-RT0 0 ?RT0)
        (bind ?i (+ ?i 1))
    )
    (if (not ?*debug*) then (printout t crlf))
    (bind ?computation-time (seconds-to-hours (- (time) ?time0)))
    (printout t "find and eval erasable candidates computation time = " ?computation-time crlf)
    (printout t "===> " (div (length$ ?list-of-erasable-cands-and-scores) 2) " candidates can be eliminated with the current set of rules: " crlf)
    (printout t "best score found = " ?best-score crlf)
    (if ?*debug* then (printout t (print-list-of-cands-and-values ?list-of-erasable-cands-and-scores) crlf))
    ;;; pack best score with the pairs to return it
    (create$ ?best-score ?list-of-erasable-cands-and-scores)
)



;;; The followwing two functions return a list made of the best score followed by all the candidates with the best score.

(deffunction find-best-erasable-candidates-sudoku-string-wrt-RT0 (?RT0 ?sudoku-string $?cand-list)
    (bind ?erasable-cands-and-values (find-erasable-candidates-sudoku-string-and-eval-wrt-RT0 ?RT0 ?sudoku-string $?cand-list))
    (bind ?nb-erasable-cands (div (- (length$ ?erasable-cands-and-values) 1) 2))
    ;;; Find the best score:
    (bind ?best-score (nth$ 1 ?erasable-cands-and-values))
    ;;; Find all the erasable candidates with the best score:
    (bind ?best-cands (create$))
    (bind ?i 2)
    (while (<= ?i (* 2 ?nb-erasable-cands))
        (if (eq (nth$ (+ ?i 1) ?erasable-cands-and-values) ?best-score)
            then (bind ?best-cands (create$ ?best-cands (nth$ ?i ?erasable-cands-and-values)))
        )
        (bind ?i (+ ?i 2))
    )
    (bind ?nb-best-cands (length$ ?best-cands))
    (if (eq ?nb-best-cands 1)
        then (printout t "===> Among these, there is only one candidate with the best score (= " ?best-score "): ")
        else (printout t "===> Among these, there are " ?nb-best-cands " candidates with the best score (= " ?best-score "): ")
    )
    (printout t (print-list-of-labels ?best-cands) crlf)
    ;;; pack best score with the best candidates to return it
    (create$ ?best-score ?best-cands)
)


(deffunction find-best-erasable-candidates-sukaku-list-wrt-RT0 (?RT0 ?sukaku-list $?cand-list)
    (bind ?erasable-cands-and-values (find-erasable-candidates-sukaku-list-and-eval-wrt-RT0 ?RT0 ?sukaku-list $?cand-list))
    (bind ?nb-erasable-cands (div (- (length$ ?erasable-cands-and-values) 1) 2))
    ;;; Find the best score:
    (bind ?best-score (nth$ 1 ?erasable-cands-and-values))
    ;;; Find all the erasable candidates with the best score:
    (bind ?best-cands (create$))
    (bind ?i 2)
    (while (<= ?i (* 2 ?nb-erasable-cands))
        (if (eq (nth$ (+ ?i 1) ?erasable-cands-and-values) ?best-score)
            then (bind ?best-cands (create$ ?best-cands (nth$ ?i ?erasable-cands-and-values)))
        )
        (bind ?i (+ ?i 2))
    )
    (bind ?nb-best-cands (length$ ?best-cands))
    (if (eq ?nb-best-cands 1)
        then (printout t "===> Among these, there is only one candidate with the best score (= " ?best-score "): ")
        else (printout t "===> Among these, there are " ?nb-best-cands " candidates with the best score (= " ?best-score "): ")
    )
    (printout t (print-list-of-labels ?best-cands) crlf)
    ;;; pack best score with the best candidates to return it
    (create$ ?best-score ?best-cands)
)
