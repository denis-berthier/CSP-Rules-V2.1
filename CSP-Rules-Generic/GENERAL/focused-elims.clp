
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Try to eliminate selected candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This function is still at an experimental stage.
;;; It currently restricts only the following types of resolution rules:
;;; bivalue-chains, z-chains, whips, braids, g-whips, g-braids, forcing-whips and forcing-braids
;;; (and their typed versions when they exist).
;;; It doesn't restrict any other rule (such as Subsets).
;;; It is not compatible with the activation of t-Whips or Typed-t-Whips.
;;; It works in the current resolution state of contetxt ?cont,
;;; which must have been previously initialised.

(deffunction try-to-eliminate-candidates-from-context (?cont $?list)
    ;;; first clean any previous focus list:
    (do-for-all-facts ((?focus candidate-in-focus)) (= ?focus:context ?cont) (retract ?focus))
    (bind ?time1 (time))
    ;;; candidates in the focus list are tried for elimination here:
    (foreach ?cand $?list (assert (candidate-in-focus (context ?cont) (label ?cand))))
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (if ?*print-time* then
        (printout t "solve-time = " (seconds-to-hours ?*solve-instance-time*) crlf)
        (printout t "nb-facts = " ?*nb-facts* crlf)
        (printout t crlf)
    )
    (if (and (eq ?cont 0) ?*print-final-RS*) then (print-current-resolution-state-in-context 0))
    ;;; now clean the focus list:
    (do-for-all-facts ((?focus candidate-in-focus)) (= ?focus:context ?cont) (retract ?focus))
)


(deffunction try-to-eliminate-candidates ($?list)
    (if (or ?*t-Whips* ?*Typed-t-Whips*) then
        (printout t "WARNING: this function  does not work if t-whips or typed-t-whips are active." crlf)
        (halt)
    )
    (try-to-eliminate-candidates-from-context 0 $?list)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Mainly used for finding 2-step solutions
;;; (provided that functions compute-current-resolution-state
;;;  and init-resolution-state are effectively defined)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction find-erasable-candidates ($?cand-list)
    (bind ?time0 (time))
    (bind ?RS0 (compute-current-resolution-state))
    (bind ?len (length$ ?cand-list))
    ;;; if no list is given, try all the candidates:
    (if (eq ?len 0) then
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
        (try-to-eliminate-candidates ?cand)
        ;;; check if this candidate is still present
        (if (not (any-factp ((?f candidate)) (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand)))) then
            (printout t ?cand " can be eliminated" crlf)
            (bind ?list-of-cands-with-elim (create$ ?list-of-cands-with-elim ?cand))
        )
        ;;; Restore the initial resolution state
        (init-resolution-state ?RS0)
        (bind ?i (+ ?i 1))
    )
    (bind ?compute-time (seconds-to-hours (- (time) ?time0)))
    (printout t "===> "
        (length$ ?list-of-cands-with-elim) " candidates can be eliminated: " crlf
        ?list-of-cands-with-elim crlf
    )
    (printout t crlf "computation time = " ?compute-time crlf)
    ?list-of-cands-with-elim
)



;;; TOO SLOW:
(deffunction find-erasable-pairs ($?elim-list)
    ;;; ?elim-list is supposed to be the list of candidates that can be eliminated
    ;;; with the current set of rules
    (bind ?time0 (time))
    (bind ?RS0 (compute-current-resolution-state))
    (bind ?len (length$ ?elim-list))
    ;;; find all the candidates in ?RS:
    (bind ?cand-list2 (create$))
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context 0) (eq ?f:status cand))
        (bind ?cand-list2 (create$ ?cand-list2 ?f:label))
    )
    (bind ?len2 (length$ ?cand-list2))
    (printout t crlf "===> " (* ?len (- ?len2 1)) " candidate pairs to try." crlf)
    ;;; find the candidate pairs in ?elim-list * ?cand-list2 that can be eliminated by the current set of rules
    (bind ?list-of-pairs-with-elim (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?cand1 (nth$ ?i ?elim-list))
        ;;; eliminate ?cand1 from RS (it will not appear in the resolution paths
        (do-for-all-facts
            ((?f candidate))
            (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand1))
            (retract ?f)
        )
        (bind ?RS1 (compute-current-resolution-state))
        ;;; check which of the cand2's can be eliminated in ?RS2
        (bind ?j 1)
        (while (<= ?j ?len2)
            (bind ?cand2 (nth$ ?j ?cand-list2))
            (if (neq ?cand2 ?cand1) then
                (printout t crlf crlf "===> Trying candidate pair " ?i ", " ?j ": " ?cand1 "," ?cand2 crlf)
                (try-to-eliminate-candidates ?cand1 ?cand2)
                ;;; check if this candidate is still present
                (if (not (any-factp ((?f candidate)) (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand2)))) then
                    (printout t ?cand1 ", " ?cand2 " can be eliminated" crlf)
                    (bind ?list-of-pairs-with-elim (create$ ?list-of-pairs-with-elim ?cand1 ?cand2))
                )
                ;;; Restore resolution state ?RS1
                (init-resolution-state ?RS1)
            )
            (bind ?j (+ ?j 1))
        )
        ;;; Restore the initial resolution state
        (init-resolution-state ?RS0)
        (bind ?i (+ ?i 1))
    )
    (bind ?compute-time (seconds-to-hours (- (time) ?time0)))
    (printout t "===> "
        (div (length$ ?list-of-pairs-with-elim) 2) " pairs can be eliminated: " crlf
        ?list-of-pairs-with-elim crlf
    )
    (printout t crlf "computation time = " ?compute-time crlf)
    ?list-of-pairs-with-elim
)

