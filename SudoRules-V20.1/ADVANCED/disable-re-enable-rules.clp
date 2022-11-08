
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              DISABLE AND RE-ENABLE RULES
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







;;; This file contains functions for dynamically disabling and re-enabling resolutions rules,
;;; plus associated functions that can be useful when taking advantage of this possibility.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for disabling / re-enabling rules not in RT0
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction check-conditions-on-no-step-RT0 (?RT0)
    (if (not (or (eq ?RT0 BRT) (eq ?RT0 W1) (eq ?RT0 S2) (eq ?RT0 S3) (eq ?RT0 S4) (eq ?RT0 S))) then
        (printout t "Only BRT, W1, S2, S3, S4 or S are allowed as the second argument to this function" crlf)
        (return FALSE)
    )
    (if (or ?*t-Whips* ?*Typed-t-Whips*) then
        (printout t
            "t-Whips, typed or not, are not allowed in the search for 1, 2 or fewer step solutions." crlf
        )
        (return FALSE)
    )
    TRUE
)


(deffunction disable-rules-not-in-RT0 (?cont ?RT0)
    ;;; The conditions on RT0 are not checked; they are supposed to be satisfied.
    ;;; Disable the generic rules:
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

    ;;; Disable the typed generic rules:
    (assert (deactivate ?cont typed-bivalue-chain))
    (assert (deactivate ?cont typed-z-chain))
    (assert (deactivate ?cont typed-t-whip))
    (assert (deactivate ?cont typed-whip))
    (assert (deactivate ?cont typed-g-bivalue-chain))
    (assert (deactivate ?cont typed-gwhip))
    (assert (deactivate ?cont typed-braid))
    (assert (deactivate ?cont typed-gbraid))
    
    ;;; if ?RT0 ≠ S, S2, S3 or S4, disable the relevant Subset rules in the new context:
    ;;; (this will also deactivate all the finned fish rules)
    (if (and (neq ?RT0 S2) (neq ?RT0 S3) (neq ?RT0 S4) (neq ?RT0 S)) then (assert (deactivate ?cont pair)))
    (if (and (neq ?RT0 S3) (neq ?RT0 S4) (neq ?RT0 S)) then (assert (deactivate ?cont triplet)))
    (if (and (neq ?RT0 S4) (neq ?RT0 S)) then (assert (deactivate ?cont quad)))

    ;;; if ?RT0 = BRT, disable the whips[1] in the new context:
    (if (eq ?RT0 BRT) then (assert (deactivate ?cont whip[1])))

    ;;; make sure global variable ?*technique* is properly re-initialisd for further solving
    (bind ?*technique* 0)
)


(deffunction re-enable-disabled-rules-not-in-RT0 (?cont ?RT0)
    ;;; The conditions on RT0 are not checked; they are supposed to be satisfied.
    ;;; Re-enable all the de-activated rules, except t-whips (typed or not)
    (do-for-all-facts
        ((?fact deactivate))
        (and (eq (nth$ 1 ?fact:implied) ?cont)
            (neq (nth$ 2 ?fact:implied) t-whip)
            (neq (nth$ 2 ?fact:implied) typed-t-whip)
        )
        (retract ?fact)
    )
    ;;; Make sure global variable ?*technique* is properly re-initialisd for further solving
    (bind ?*technique* 0)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for computing the resolution state after RT0
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction compute-state-after-RT0-sudoku-string (?RT0 ?sudoku-string)
    ;;; The conditions on RT0 are not checked; they are supposed to be satisfied.
    ;;; BEWARE: for efficiency purposes,
    ;;; this function has the side-effect of leaving the rules not in ?RT0 de-activated
    (init-sudoku-string ?sudoku-string)
    ;;; Find the resolution state ?RS-after-RT0 after the rules in ?RT0 have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (disable-rules-not-in-RT0 0 ?RT0)
    (if (or (eq ?RT0 BRT) (eq ?RT0 W1)) then
        (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
        (bind ?*print-RS-after-whips[1]* FALSE)
        (bind ?*print-final-RS-backup* ?*print-final-RS*)
        (bind ?*print-final-RS* FALSE)
        (bind ?*print-solution-backup* ?*print-solution*)
        (bind ?*print-solution* FALSE)
    )
    (run)
    (bind ?RS-after-RT0 (compute-current-resolution-state))
    (if ?*print-actions* then
        (switch ?RT0
            (case BRT then (printout t crlf "Resolution state after Singles:" crlf))
            (case W1 then (printout t crlf "Resolution state after Singles and whips[1]:" crlf))
            (default (printout t crlf "Resolution state after rules in " ?RT0 ":" crlf))
        )
        (pretty-print-sukaku-list ?RS-after-RT0)
    )
    (if (or (eq ?RT0 BRT) (eq ?RT0 W1)) then
        (bind ?*print-RS-after-whips[1]* ?*print-RS-after-whips[1]-backup*)
        (bind  ?*print-final-RS* ?*print-final-RS-backup*)
        (bind  ?*print-solution* ?*print-solution-backup*)
   )
    ;;; At this point, context 0 is initialised with the state after rules from ?RT0 have been applied.
    ;;; Return this state
    ?RS-after-RT0
)


(deffunction compute-state-after-RT0-sukaku-list (?RT0 ?sukaku-list)
    ;;; BEWARE: for efficiency purposes,
    ;;; this function has the side-effect of leaving the rules not in ?RT0 de-activated
    (init-sukaku-list ?sukaku-list)
    ;;; Find the resolution state ?RS-after-RT0 after the rules in ?RT0 have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (disable-rules-not-in-RT0 0 ?RT0)
    (if (or (eq ?RT0 BRT) (eq ?RT0 W1)) then
        (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
        (bind ?*print-RS-after-whips[1]* FALSE)
        (bind ?*print-final-RS-backup* ?*print-final-RS*)
        (bind ?*print-final-RS* FALSE)
        (bind ?*print-solution-backup* ?*print-solution*)
        (bind ?*print-solution* FALSE)
   )
    (run)
    (bind ?RS-after-RT0 (compute-current-resolution-state))
    (if ?*print-actions* then
        (switch ?RT0
            (case BRT then (printout t crlf "Resolution state after Singles:" crlf))
            (case W1 then (printout t crlf "Resolution state after Singles and whips[1]:" crlf))
            (default (printout t crlf "Resolution state after rules in " ?RT0 ":" crlf))
        )
        (pretty-print-sukaku-list ?RS-after-RT0)
    )
    (if (or (eq ?RT0 BRT) (eq ?RT0 W1)) then
        (bind ?*print-RS-after-whips[1]* ?*print-RS-after-whips[1]-backup*)
        (bind  ?*print-final-RS* ?*print-final-RS-backup*)
        (bind  ?*print-solution* ?*print-solution-backup*)
   )
    ;;; At this point, context 0 is initialised with the state after rules from ?RT0 have been applied.
    ;;; Return this state
    ?RS-after-RT0
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for reconstructing a full resolution path wrt ?RT0,
;;; knowing only the puzzle and the sequence of non-RT0 eliminations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; For internal use:
(deffunction internal-reconstruct-sudoku-resolution-path-wrt-RT0 (?RT0 ?sudoku-string $?internal-sequence-of-eliminations)
    ;;; ?RT0 is suppposed to satisfy the conditions on no-step (this is not checked here).
    (bind ?time0 (time))
    (init-sudoku-string ?sudoku-string)
    (disable-rules-not-in-RT0 0 ?RT0)
    (run)
    (bind ?step 1)
    (foreach ?cand ?internal-sequence-of-eliminations
        (re-enable-disabled-rules-not-in-RT0 0 ?RT0)
        (printout t crlf)
        (if ?*print-actions* then (printout t "=====> STEP #" ?step crlf))
        (try-to-eliminate-candidates ?cand)
        (disable-rules-not-in-RT0 0 ?RT0)
        (run)
        (bind ?step (+ ?step 1))
    )
    (printout t "Total reconstruction time of resolution path = " (seconds-to-hours (- (time) ?time0)) crlf)
)


(deffunction internal-reconstruct-sukaku-resolution-path-wrt-RT0 (?RT0 ?sukaku-list $?internal-sequence-of-eliminations)
    ;;; ?RT0 is suppposed to satisfy the conditions on no-step (this is not checked here).
    (bind ?time0 (time))
    (init-sukaku-list ?sukaku-list)
    (disable-rules-not-in-RT0 0 ?RT0)
    (run)
    (bind ?step 1)
    (foreach ?cand ?internal-sequence-of-eliminations
        (re-enable-disabled-rules-not-in-RT0 0 ?RT0)
        (printout t crlf)
        (if ?*print-actions* then (printout t "=====> STEP #" ?step crlf))
        (try-to-eliminate-candidates ?cand)
        (disable-rules-not-in-RT0 0 ?RT0)
        (run)
        (bind ?step (+ ?step 1))
    )
    (printout t "Total reconstruction time of resolution path = " (seconds-to-hours (- (time) ?time0)) crlf)
)


;;; For external use:
(deffunction reconstruct-sudoku-resolution-path-wrt-RT0 (?RT0 ?sudoku-string $?sequence-of-eliminations)
    ;;; ?RT0 is suppposed to satisfy the conditions on no-step (this is not checked here).
    (bind ?time0 (time))
    (init-sudoku-string ?sudoku-string)
    (disable-rules-not-in-RT0 0 ?RT0)
    (run)
    (bind ?step 1)
    (foreach ?cand ?sequence-of-eliminations
        (re-enable-disabled-rules-not-in-RT0 0 ?RT0)
        (printout t crlf)
        (if ?*print-actions* then (printout t "=====> STEP #" ?step crlf))
        (try-to-eliminate-candidates ?cand)
        (disable-rules-not-in-RT0 0 ?RT0)
        (run)
        (bind ?step (+ ?step 1))
    )
    (printout t "Total reconstruction time of resolution path = " (seconds-to-hours (- (time) ?time0)) crlf)
)


(deffunction reconstruct-sukaku-resolution-path-wrt-RT0 (?RT0 ?sukaku-list $?sequence-of-eliminations)
    ;;; ?RT0 is suppposed to satisfy the conditions on no-step (this is not checked here).
    (bind ?time0 (time))
    (init-sukaku-list ?sukaku-list)
    (disable-rules-not-in-RT0 0 ?RT0)
    (run)
    (bind ?step 1)
    (foreach ?cand ?sequence-of-eliminations
        (re-enable-disabled-rules-not-in-RT0 0 ?RT0)
        (printout t crlf)
        (if ?*print-actions* then (printout t "=====> STEP #" ?step crlf))
        (try-to-eliminate-candidates (nirjck-to-label ?cand))
        (disable-rules-not-in-RT0 0 ?RT0)
        (run)
        (bind ?step (+ ?step 1))
    )
    (printout t "Total reconstruction time of resolution path = " (seconds-to-hours (- (time) ?time0)) crlf)
)



;;; And the expected abbreviations:
(deffunction reconstruct-sudoku-resolution-path-wrt-BRT (?sudoku-string $?sequence-of-eliminations)
    (reconstruct-sudoku-resolution-path-wrt-RT0 BRT ?sudoku-string $?sequence-of-eliminations)
)
(deffunction reconstruct-sudoku-resolution-path-wrt-W1 (?sudoku-string $?sequence-of-eliminations)
    (reconstruct-sudoku-resolution-path-wrt-RT0 W1 ?sudoku-string $?sequence-of-eliminations)
)
(deffunction reconstruct-sukaku-resolution-path-wrt-BRT (?sukaku-list $?sequence-of-eliminations)
    (reconstruct-sukaku-resolution-path-wrt-RT0 BRT ?sukaku-list $?sequence-of-eliminations)
)
(deffunction reconstruct-sukaku-resolution-path-wrt-W1 (?sukaku-list $?sequence-of-eliminations)
    (reconstruct-sukaku-resolution-path-wrt-RT0 W1 ?sukaku-list $?sequence-of-eliminations)
)

(deffunction reconstruct-path (?sudoku-string $?sequence-of-eliminations)
    (reconstruct-sudoku-resolution-path-wrt-RT0 W1 ?sudoku-string $?sequence-of-eliminations)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for comparing resolution rules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction generate-list-of-loaded-generic-rules()
    (bind ?list (create$ 0 NS NH S W[1]))
    (loop-for-count (?n 2 36)
        (if (and Subsets[2] (eq ?n 2)) then (bind ?list (create$ ?list NP HP SHP FSHP)))
        (if (and Subsets[3] (eq ?n 3)) then (bind ?list (create$ ?list NT HT SHT FSHT)))
        (if (and Subsets[4] (eq ?n 4)) then (bind ?list (create$ ?list NQ HQ SHQ FSHQ)))
        (if (and ?*Oddagons* (oddp ?n) (<= ?n ?*oddagons-max-length*)) then (bind ?list (create$ ?list (sym-cat O[ ?n ]))))
        (if (and ?*Typed-Bivalue-Chains* (<= ?n 20) (<= ?n ?*typed-bivalue-chains-max-length*)) then (bind ?list (create$ ?list (sym-cat TyBC[ ?n ]))))
        (if (and ?*Bivalue-Chains* (<= ?n 20) (<= ?n ?*bivalue-chains-max-length*)) then (bind ?list (create$ ?list (sym-cat BC[ ?n ]))))
        (if (and ?*Typed-z-Chains* (<= ?n 20) (<= ?n ?*typed-z-chains-max-length*)) then (bind ?list (create$ ?list (sym-cat TyZ[ ?n ]))))
        (if (and ?*z-Chains* (<= ?n 20) (<= ?n ?*z-chains-max-length*)) then (bind ?list (create$ ?list (sym-cat Z[ ?n ]))))
        (if (and ?*Typed-t-Whips* (<= ?n ?*typed-t-whips-max-length*)) then (bind ?list (create$ ?list (sym-cat TytW[ ?n ]))))
        (if (and ?*t-Whips* (<= ?n ?*t-whips-max-length*)) then (bind ?list (create$ ?list (sym-cat tW[ ?n ]))))
        (if (and ?*Typed-Whips* (<= ?n ?*typed-whips-max-length*)) then (bind ?list (create$ ?list (sym-cat TyW[ ?n ]))))
        (if (and ?*Whips* (<= ?n ?*whips-max-length*))  then (bind ?list (create$ ?list (sym-cat W[ ?n ]))))
        (if (and ?*G-Bivalue-Chains* (<= ?n ?*g-bivalue-chains-max-length*)) then (bind ?list (create$ ?list (sym-cat gBC[ ?n ]))))
        (if (and ?*Typed-G-Whips* (<= ?n ?*typed-gwhips-max-length*)) then (bind ?list (create$ ?list (sym-cat TygW[ ?n ]))))
        (if (and ?*G2-Whips* (<= ?n ?*g2whips-max-length*)) then (bind ?list (create$ ?list (sym-cat gW[ ?n ]))))
        (if (and ?*G-Whips* (<= ?n ?*gwhips-max-length*)) then (bind ?list (create$ ?list (sym-cat gW[ ?n ]))))
        (if (and ?*Braids* (<= ?n ?*braids-max-length*)) then (bind ?list (create$ ?list (sym-cat B[ ?n ]))))
        (if (and ?*G-Braids* (<= ?n ?*gbraids-max-length*)) then (bind ?list (create$ ?list (sym-cat gB[ ?n ]))))
        (if (and ?*Forcing-Whips* (<= ?n ?*forcing-whips-max-length*)) then (bind ?list (create$ ?list (sym-cat FW[ ?n ]))))
        (if (and ?*Forcing-G-Whips* (<= ?n ?*forcing-gwhips-max-length*)) then (bind ?list (create$ ?list (sym-cat FgW[ ?n ]))))
        (if (and ?*Forcing-Braids* (<= ?n ?*forcing-braids-max-length*)) then (bind ?list (create$ ?list (sym-cat FB[ ?n ]))))
        (if (and ?*Forcing-G-Braids* (<= ?n ?*forcing-gbraids-max-length*))  then (bind ?list (create$ ?list (sym-cat FgB[ ?n ]))))
        (bind ?list (create$ ?list (sym-cat MAX-TECH[ ?n ])))
    )
    ?list
)

(defglobal ?*list-of-loaded-generic-rules* = (generate-list-of-loaded-generic-rules))

(deffunction technique-simpler-than (?tech1 ?tech2)
    (< (member$ ?tech1 ?*list-of-loaded-generic-rules*) (member$ ?tech2 ?*list-of-loaded-generic-rules*))
)

(deffunction technique-harder-than (?tech1 ?tech2)
    (> (member$ ?tech1 ?*list-of-loaded-generic-rules*) (member$ ?tech2 ?*list-of-loaded-generic-rules*))
)

(deffunction highest-technique (?tech1 ?tech2)
    (if (technique-harder-than ?tech1 ?tech2) then ?tech1 else ?tech2)
)


