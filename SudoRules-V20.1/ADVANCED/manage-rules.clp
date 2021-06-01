
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              MANAGE RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - May 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for disabling / re-enabling rules not in RT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction disable-rules-not-in-RT (?cont ?RT)
    ;;; disable the generic rules in the new context:
    (assert (deactivate ?cont bivalue))
    (assert (deactivate ?cont bivalue-chain))
    (assert (deactivate ?cont z-chain))
    (assert (deactivate ?cont t-whip))
    (assert (deactivate ?cont whip))
    (assert (deactivate ?cont g-bivalue-chain))
    (assert (deactivate ?cont gwhip))
    (assert (deactivate ?cont braid))
    (assert (deactivate ?cont gbraid))
    (assert (deactivate ?cont oddagon))

    ;;; disable the typed generic rules in the new context:
    (assert (deactivate ?cont typed-bivalue-chain))
    (assert (deactivate ?cont typed-z-chain))
    (assert (deactivate ?cont typed-t-whip))
    (assert (deactivate ?cont typed-whip))
    (assert (deactivate ?cont typed-g-bivalue-chain))
    (assert (deactivate ?cont typed-gwhip))
    (assert (deactivate ?cont typed-braid))
    (assert (deactivate ?cont typed-gbraid))
    
    ;;; if ?RT ≠ S, S2, S3 or S4, disable the relevant Subset rules in the new context:
    ;;; (this will also deactivate all the finned fish rules)
    (if (and (neq ?RT S2) (neq ?RT S3) (neq ?RT S4) (neq ?RT S)) then (assert (deactivate ?cont pair)))
    (if (and (neq ?RT S3) (neq ?RT S4) (neq ?RT S)) then (assert (deactivate ?cont triplet)))
    (if (and (neq ?RT S4) (neq ?RT S)) then (assert (deactivate ?cont quad)))

    ;;; if ?RT = BRT, disable the whips[1] in the new context:
    (if (eq ?RT BRT) then (assert (deactivate ?cont whip[1])))
)


(deffunction re-enable-disabled-rules-not-in-RT (?cont ?RT)
    ;;; re-enable all the de-activated rules,
    ;;; except t-whips (typed or not)
    ;;; and except Subsets (unless ?RT = S2, S2, S4 or S)
    (do-for-all-facts
        ((?fact deactivate))
        (and (eq (nth$ 1 ?fact:implied) ?cont)
            (neq (nth$ 2 ?fact:implied) t-whip)
            (neq (nth$ 2 ?fact:implied) typed-t-whip)
            (or (neq (nth$ 2 ?fact:implied) pair) (eq ?RT S2) (eq ?RT S3) (eq ?RT S4) (eq ?RT S))
            (or (neq (nth$ 2 ?fact:implied) triplet) (eq ?RT S3) (eq ?RT S4) (eq ?RT S))
            (or (neq (nth$ 2 ?fact:implied) quad) (eq ?RT S4) (eq ?RT S))
        )
        (retract ?fact)
    )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for computing the resolution state after RT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction compute-state-after-RT-sudoku-string (?RT ?sudoku-string)
    ;;; BEWARE: for efficiency purposes,
    ;;; this rule has the side-effect of leaving the rules not in ?RT de-activated
    (init-sudoku-string ?sudoku-string)
        ;;; Find the resolution state ?RS-after-RT after the rules in ?RT have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (disable-rules-not-in-RT 0 ?RT)
    (if (or (eq ?RT BRT) (eq ?RT W1)) then
        (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
        (bind ?*print-RS-after-whips[1]* FALSE)
        (bind ?*print-final-RS-backup* ?*print-final-RS*)
        (bind ?*print-final-RS* FALSE)
   )
    (run)
    (bind ?RS-after-RT (compute-current-resolution-state))
    (if ?*print-actions* then
        (printout t crlf "Resolution state after rules in " ?RT ":" crlf)
        (pretty-print-sukaku-list ?RS-after-RT)
    )
    ;;; At this point, context 0 is initialised with the state after rules from ?RT have been applied;
    ;;; return it:
    ?RS-after-RT
)


(deffunction compute-state-after-RT-sukaku-list (?RT ?sukaku-list)
    ;;; BEWARE: for efficiency purposes,
    ;;; this rule has the side-effect of leaving the rules not in ?RT de-activated
    (init-sukaku-list ?sukaku-list)
    ;;; Find the resolution state ?RS-after-RT after the rules in ?RT have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (disable-rules-not-in-RT 0 ?RT)
    (if (or (eq ?RT BRT) (eq ?RT W1)) then
        (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
        (bind ?*print-RS-after-whips[1]* FALSE)
        (bind ?*print-final-RS-backup* ?*print-final-RS*)
        (bind ?*print-final-RS* FALSE)
   )
    (run)
    (bind ?RS-after-RT (compute-current-resolution-state))
    (if ?*print-actions* then
        (printout t crlf "Resolution state after rules in " ?RT ":" crlf)
        (pretty-print-sukaku-list ?RS-after-RT)
    )
    ;;; At this point, context 0 is initialised with the state after rules from ?RT have been applied;
    ;;; return it:
    ?RS-after-RT
)



