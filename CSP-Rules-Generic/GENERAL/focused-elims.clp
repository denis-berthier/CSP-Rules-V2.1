
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

;;; This function works in the current resolution state of contetxt ?cont,
;;; which must have been previously initialised.

;;; This function restricts only the following types of generic resolution rules:
;;; bivalue-chains, z-chains, whips, braids, g-whips, g-braids, oddagons,
;;; forcing-whips, forcing-g-whips, forcing-braids and forcing-g-braids
;;; (and their typed versions when they exist).
;;; For forcing-chains, what is restricted is the starting points, not the targets.
;;; It is not compatible with the activation of t-Whips or Typed-t-Whips.

;;; This function also restricts the Subset rules in all of the standard applications delivered with CSP-Rules.

;;; If a candidate can be eliminated, it is effectively eliminated.
;;; Candidates in the focus-list are eliminated according to the simplest-first strategy.

(deffunction try-to-eliminate-candidates-from-context (?cont $?focus-list)
    ;;; First clean any previous focus list (useless)
    ; (do-for-all-facts ((?focus candidate-in-focus)) (= ?focus:context ?cont) (retract ?focus))
    (bind ?time1 (time))
    ;;; Candidates in the focus list are tried for elimination here:
    (foreach ?cand $?focus-list (assert (candidate-in-focus (context ?cont) (label ?cand))))
    (run)
    (bind ?time2 (time))
    (bind ?*solve-instance-time* (- ?time2 ?time1))
    (if ?*print-time* then
        (printout t "solve-time = " (seconds-to-hours ?*solve-instance-time*) crlf)
        (printout t "nb-facts = " ?*nb-facts* crlf)
        (printout t crlf)
    )
    (if (and (eq ?cont 0) ?*print-final-RS*) then (print-current-resolution-state-in-context 0))
    ;;; Now clean the focus list:
    (do-for-all-facts ((?focus candidate-in-focus)) (= ?focus:context ?cont) (retract ?focus))
)


(deffunction try-to-eliminate-candidates ($?focus-list)
    (if (or ?*t-Whips* ?*Typed-t-Whips*) then
        (printout t "WARNING: this function  does not work if t-whips or typed-t-whips are active." crlf)
        (halt)
    )
    (try-to-eliminate-candidates-from-context 0 $?focus-list)
)

;;; Abbreviation:

(deffunction try-to-eliminate ($?focus-list)
    (try-to-eliminate-candidates ?focus-list)
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

;;; This function works in the current resolution state of contetxt 0,
;;; which must have been previously initialised.

;;; This function allows only the following types of generic resolution rules:
;;; bivalue-chains, z-chains, whips, braids, g-whips, g-braids, oddagons,
;;; forcing-whips, forcing-g-whips, forcing-braids and forcing-g-braids
;;; (and their typed versions when they exist).
;;; It is not compatible with the activation of t-Whips or Typed-t-Whips.

;;; This function also allows the Subset rules in all of the standard applications delivered with CSP-Rules.

;;; If does not eliminate any candidate for real. At the end, the resolution state is unchanged.

(deffunction find-erasable-candidates ($?cand-list)
    (bind ?time0 (time))
    (bind ?RS0 (compute-current-resolution-state))
    (bind ?len (length$ ?cand-list))
    ;;; If no list is given, i.e. ?cand-list is empty, try all the candidates:
    (if (eq ?len 0) then
        (do-for-all-facts
            ((?f candidate))
            (and (eq ?f:context 0) (eq ?f:status cand))
            (bind ?cand-list (create$ ?cand-list ?f:label))
        )
        (bind ?len (length$ ?cand-list))
    )
    (printout t "===> CHECKING WHICH OF THE " ?len " CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:" crlf)
    ;;; Find which candidates in ?cand-list can be eliminated in a single step by the current set of rules
    (bind ?list-of-erasable-cands (create$))
    (bind ?i 1)
    (while (<= ?i ?len)
        (bind ?cand (nth$ ?i ?cand-list))
        (printout t crlf crlf "===> Trying to eliminate candidate #" ?i ": " ?cand crlf)
        (try-to-eliminate-candidates ?cand)
        ;;; check if this candidate is no longer present (i.e. is erasable by the current rules)
        (if (not (any-factp ((?f candidate)) (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand)))) then
            (printout t (print-label ?cand) " can be eliminated" crlf)
            (bind ?list-of-erasable-cands (create$ ?list-of-erasable-cands ?cand))
        )
        ;;; Restore the initial resolution state
        (init-resolution-state ?RS0)
        (bind ?i (+ ?i 1))
    )
    (bind ?compute-time (seconds-to-hours (- (time) ?time0)))
    (printout t "computation time = " ?compute-time crlf)
    (printout t "===> " (length$ ?list-of-erasable-cands) " candidates can be eliminated: " crlf)
    (print-list-of-labels ?list-of-erasable-cands)
    (printout t crlf)
    ?list-of-erasable-cands
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
    (printout t crlf t "===> CHECKING WHICH OF THE " (* ?len (- ?len2 1)) " CANDIDATE PAIRS CAN BE ELIMINATED BY THE CURRENT SET OF RULES:" crlf)
    ;;; Find the candidate pairs in ?elim-list * ?cand-list2 that can be eliminated by the current set of rules
    (bind ?list-of-erasable-pairs (create$))
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
                (printout t crlf crlf "===> Trying to eliminate candidate pair " ?i ", " ?j ": " ?cand1 "," ?cand2 crlf)
                (try-to-eliminate-candidates ?cand1 ?cand2)
                ;;; check if this candidate is still present
                (if (not (any-factp ((?f candidate)) (and (eq ?f:context 0) (eq ?f:status cand) (eq ?f:label ?cand2)))) then
                    (printout t ?cand1 ", " ?cand2 " can be eliminated" crlf)
                    (bind ?list-of-erasable-pairs (create$ ?list-of-erasable-pairs ?cand1 ?cand2))
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
    (printout t crlf crlf "erasable candidate pairs computation time = " ?compute-time crlf)
    (printout t "===> " (div (length$ ?list-of-erasable-pairs) 2) " candidate pairs can be eliminated: " crlf)
    (print-list-of-label-pairs ?list-of-erasable-pairs)
    (printout t crlf)
    ?list-of-erasable-pairs
)

