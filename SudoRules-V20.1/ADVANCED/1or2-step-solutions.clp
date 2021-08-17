
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              ONE OR TWO STEP SOLUTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - August 2021            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; For finding a 1 step solution for a Sudoku or Sukaku
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Generally, these functions will be applied supposing that we have:
;;; - the list of anti-backdoors (that we shall use as $?cand-list)


(deffunction find-sudoku-1-steppers-among-cands (?sudoku-string $?cand-list)
    (bind ?time0 (time))
    (bind ?len (length$ ?cand-list))
    ;;; if no list of candidates is given, try all the candidates:
    (if (eq ?len 0) then
        (init-sudoku-string ?sudoku-string)
        (do-for-all-facts
            ((?f candidate))
            (and (eq ?f:context 0) (eq ?f:status cand))
            (bind ?cand-list (create$ ?cand-list ?f:label))
        )
        (bind ?len (length$ ?cand-list))
    )
    (printout t crlf crlf "===> TRYING THE " ?len " CANDIDATES:" crlf)
    (bind ?list-of-1-steppers (create$))
    (foreach ?cand ?cand-list
        (printout t "=> Trying candidate " ?cand crlf)
        (init-sudoku-string ?sudoku-string)
        (try-to-eliminate-candidates ?cand)
        ;;; test if ?cand has been eliminated
        (if (not (any-factp
                    ((?f candidate))
                    (and (eq ?f:context 0) (eq ?f:label ?cand))
            ))
            then (bind ?list-of-1-steppers (create$ ?list-of-1-steppers ?cand))
        )
    )
    (printout t "computation time = " (seconds-to-hours (- (time) ?time0)) crlf)
    (printout t "list of 1-steppers:" crlf)
    ?list-of-1-steppers
)


(deffunction find-sukaku-1-steppers-among-cands (?sukaku-list $?cand-list)
    (bind ?time0 (time))
    (bind ?len (length$ ?cand-list))
    ;;; if no list of candidates is given, try all the candidates:
    (if (eq ?len 0) then
        (init-sukaku-list ?sukaku-list)
        (do-for-all-facts
            ((?f candidate))
            (and (eq ?f:context 0) (eq ?f:status cand))
            (bind ?cand-list (create$ ?cand-list ?f:label))
        )
        (bind ?len (length$ ?cand-list))
    )
    (printout t crlf crlf "===> TRYING THE " ?len " CANDIDATES:" crlf)
    (bind ?list-of-1-steppers (create$))
    (foreach ?cand ?cand-list
        (printout t "=> Trying candidate " ?cand crlf)
        (init-sukaku-list ?sukaku-list)
        (try-to-eliminate-candidates ?cand)
        ;;; test if ?cand has been eliminated
        (if (not (any-factp
                    ((?f candidate))
                    (and (eq ?f:context 0) (eq ?f:label ?cand))
            ))
            then (bind ?list-of-1-steppers (create$ ?list-of-1-steppers ?cand))
        )
    )
    (printout t "computation time = " (seconds-to-hours (- (time) ?time0)) crlf)
    (printout t "list of 1-steppers:" crlf)
    ?list-of-1-steppers
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; For finding a 2 step solution for a Sudoku or Sukaku
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Generally, this will be applied supposing that we have:
;;; - the list of candidate-pairs that can be eliminated in Wk
;;; - the list of anti-backdoor-pairs containing one cand from the previous list
;;; (that we shall use as $?list-of-cand-pairs)


(deffunction find-sudoku-2-steppers-among-pairs (?sudoku-string $?list-of-cand-pairs)
    (bind ?time1 (time))
    (bind ?len (length$ ?list-of-cand-pairs))
    (printout t crlf crlf "===> TRYING THE " (div ?len 2) " CANDIDATE PAIRS:" crlf)
    (bind ?i 1)
    (while (< ?i ?len)
        (bind ?cand1 (nth$ ?i ?list-of-cand-pairs))
        (bind ?i (+ ?i 1))
        (bind ?cand2 (nth$ ?i ?list-of-cand-pairs))
        (bind ?i (+ ?i 1))
        (printout t crlf crlf "=> Trying candidate pair # " (div (- ?i 1) 2) " : " ?cand1 ", " ?cand2 crlf)
        (init-sudoku-string ?sudoku-string)
        (print-current-resolution-state)
        (try-to-eliminate-candidates ?cand1 ?cand2)
    )
    (bind ?time2 (time))
    (printout t "Total computation time = " (- ?time2 ?time1) crlf)
)


(deffunction find-sukaku-2-steppers-among-pairs (?sukaku-list $?list-of-cand-pairs)
    (bind ?time1 (time))
    (bind ?len (length$ ?list-of-cand-pairs))
    (printout t crlf crlf "===> TRYING THE " (div ?len 2) " CANDIDATE PAIRS:" crlf)
    (bind ?i 1)
    (while (< ?i ?len)
        (bind ?cand1 (nth$ ?i ?list-of-cand-pairs))
        (bind ?i (+ ?i 1))
        (bind ?cand2 (nth$ ?i ?list-of-cand-pairs))
        (bind ?i (+ ?i 1))
        (printout t crlf crlf "=> Trying candidate pair # " (div (- ?i 1) 2) " : " ?cand1 ", " ?cand2 crlf)
        (init-sukaku-list ?sukaku-list)
        (print-current-resolution-state)
        (try-to-eliminate-candidates ?cand1 ?cand2)
    )
    (bind ?time2 (time))
    (printout t "Total computation time = " (- ?time2 ?time1) crlf)
)


