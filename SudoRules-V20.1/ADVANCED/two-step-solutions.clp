
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                               TWO STEP SOLUTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2021             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT INITIALISATION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule ABDP-init-non-first-context-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience*))
    (technique 0 ABDP)
    (context (name ?cont&~0) (parent ?cont0) (generating-cand ?gen-cand) (generating-cand2 ?gen-cand2&~0&~?gen-cand))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have been eliminated
    (duplicate ?cv (context ?cont) (flag 0))
)


(defrule ABDP-init-non-first-context-candidates
    "copy all the candidates from the parent context, except the generating candidates"
    (declare (salience ?*init-context-salience*))
    (technique 0 ABDP)
    (context (name ?cont&~0) (parent ?cont0) (generating-cand ?gen-cand) (generating-cand2 ?gen-cand2&~0&~?gen-cand))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cd <- (candidate (context ?par) (status cand) (label ?cand&~?gen-cand&~?gen-cand2))
=>
    (duplicate ?cd (context ?cont))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Rules for detecting an anti-backdoor-pair or not
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule ABDP-anti-backdoor-pair-not-found
    (declare (salience ?*level1-no-contrad-found-in-context-salience*))
    ;;; after all the resolution rules have been applied
    (technique 0 ABDP)
    (context (name ?cont&~0) (parent ?cont0) (generating-cand ?gen-cand) (generating-cand2 ?gen-cand2&~0&~?gen-cand))
    ?pl <- (technique ?cont BRT)
    (not (ABDP-found ?cont))
=>
    (retract ?pl)
    (if (and ?*print-actions* ?*print-hypothesis*) then
        (printout t "No anti-backdoor-pair found: " ?gen-cand " " ?gen-cand2 crlf)
    )
    (halt)
)


(defrule ABDP-anti-backdoor-pair-found
    (declare (salience ?*solution-found-salience*))
    (technique 0 ABDP)
    (context (name ?cont&~0) (parent ?cont0) (generating-cand ?gen-cand) (generating-cand2 ?gen-cand2&~0&~?gen-cand))
    ?pl <- (technique ?cont BRT)
    ;;; In context ?cont, the presence of a c-value in all the rc-cells means
    ;;; that a solution has been found in context ?cont
    (forall (row ?row)
        (forall (column ?col)
            (exists (number ?nb)
                (candidate (context ?cont) (status c-value) (row ?row) (column ?col) (number ?nb))
            )
        )
    )
=>
    (retract ?pl)
    (bind ?*list-of-anti-backdoor-pairs* (create$ ?*list-of-anti-backdoor-pairs* ?gen-cand ?gen-cand2))
    (if ?*print-actions* then
        (printout t "One anti-backdoor-pair found: " ?gen-cand " " ?gen-cand2  crlf)
    )
    (assert (ABDP-found ?cont))
    (halt)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for cleaning contexts
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule ABDP-dummy-rule
    (init-context 0)
    (technique 0)
    (csp-linked 0)
    (exists-link 0)
    (bivalue 0)
    (ABDP-found 0)
=>
)


(deffunction ABDP-clean-new-context(?cont)
    (do-for-all-facts
        ((?fact technique)) (eq (nth$ 1 ?fact:implied ) ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact candidate)) (eq ?fact:context ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact g-candidate)) (eq ?fact:context ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact blocked)) (eq (nth$ 1 ?fact:implied ) ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact csp-linked)) (eq (nth$ 1 ?fact:implied ) ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact exists-link)) (eq (nth$ 1 ?fact:implied ) ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact bivalue)) (eq (nth$ 1 ?fact:implied ) ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact chain)) (eq ?fact:context ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact typed-chain)) (eq ?fact:context ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact csp-chain)) (eq ?fact:context ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact chain2r)) (eq ?fact:context ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact context)) (eq ?fact:name ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact ABDP-found)) (eq (nth$ 1 ?fact:implied )  ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact deactivate)) (eq (nth$ 1 ?fact:implied )  ?cont) (retract ?fact)
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for finding anti-backdoor-pairs
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction ABDP-use-cont-to-test-candidate-pair-as-RT0-anti-backdoor-pair-in-cont0 (?cont0 ?cont ?RT0 ?cand ?cand2)
    ;;; This function has the side effect of updating global variable ?*list-of-anti-backdoor-pairs*
    ;;; Firstly, allow only the rules of ?RT0 in the new context:
    (disable-rules-not-in-RT0 ?cont ?RT0)
    ;;; Secondly, init the new context with ?RS, but supposing ?cand and ?cand2 are deleted,
    ;;; and apply the rules of ?RT0 in it
    (assert (context (name ?cont) (parent ?cont0) (generating-cand ?cand) (generating-cand2 ?cand2)))
    (assert (technique ?cont BRT))
    (run)
    ;;; If a solution was found in ?RT0, the pair (?cand ?cand2) had been added to ?*list-of-anti-backdoor-pairs*
    (ABDP-clean-new-context ?cont)
)


(deffunction ABDP-find-anti-backdoor-pairs-wrt-RT0-in-cont0 (?cont0 ?RT0 ?erasable-cands ?all-candidates-after-RT0)
    ;;; Try all the relevant candidate pairs in order to find the ?RT0 anti-backdoor pairs.
    ;;; Notice that the two candidates in each pair are different: anti-backdoors are not looked for.
    (bind ?time1 (time))
    (assert (technique 0 ABDP))
    (bind ?*list-of-anti-backdoor-pairs* (create$))
    (bind ?nb-erasable-cands (length$ ?erasable-cands))
    (bind ?nb-cands-after-RT0 (length$ ?all-candidates-after-RT0))
    (bind ?nb-relevant-pairs (+ (div (* ?nb-erasable-cands (- ?nb-erasable-cands 1)) 2)
                                (* ?nb-erasable-cands (- ?nb-cands-after-RT0 ?nb-erasable-cands))
                            )
    )
    (printout t crlf crlf "===> CHECKING " ?nb-relevant-pairs
        " RELEVANT PAIRS AS POSSIBLE ANTI-BACKDOOR-PAIRS (BE PATIENT):" crlf
    )
    (bind ?i 1)
    (while (<= ?i ?nb-erasable-cands)
        (bind ?cand (nth$ ?i ?erasable-cands))
        (printout t crlf "=> Trying all the possible pairs containing erasable candidate #" ?i ": ")
        (print-label ?cand)
        (printout t crlf)
        ;;; Firstly, try all the pairs containing ?cand and another erasable candidate
        (bind ?j (+ ?i 1))
        (while (<= ?j ?nb-erasable-cands)
            (bind ?cand2 (nth$ ?j ?erasable-cands))
            (if ?*debug*
                then (printout t crlf "Trying candidate pair " (print-label-pair ?cand ?cand2) crlf)
                else (printout t ".")
            )
            (bind ?*solution-found* FALSE)
            (bind ?*context-counter* (+ ?*context-counter* 1))
            (bind ?cont ?*context-counter*)
            (ABDP-use-cont-to-test-candidate-pair-as-RT0-anti-backdoor-pair-in-cont0 0 ?cont ?RT0 ?cand ?cand2)
            (bind ?j (+ ?j 1))
        )
        ;;; Secondly, try all the pairs containing ?cand and a non erasable candidates
        (bind ?j 1)
        (while (<= ?j ?nb-cands-after-RT0)
            (bind ?cand2 (nth$ ?j ?all-candidates-after-RT0))
            (if (not (member$ ?cand2 ?erasable-cands)) then
                (if ?*debug*
                    then (printout t crlf "Trying candidate pair " (print-label-pair ?cand ?cand2) crlf)
                    else (printout t ".")
                )
                (bind ?*solution-found* FALSE)
                (bind ?*context-counter* (+ ?*context-counter* 1))
                (bind ?cont ?*context-counter*)
                (ABDP-use-cont-to-test-candidate-pair-as-RT0-anti-backdoor-pair-in-cont0 0 ?cont ?RT0 ?cand ?cand2)
            )
            (bind ?j (+ ?j 1))
        )
        (bind ?i (+ ?i 1))
    )
    ;;; put an end to the search for anti-backdoor-pairs
    (do-for-all-facts
        ((?f technique))
        (and (eq (nth$ 1 ?f:implied) 0) (eq (nth$ 2 ?f:implied) ABDP))
        (retract ?f)
    )
    (if (not ?*debug*) then (printout t crlf))
    (bind ?anti-backdoor-pairs-computation-time (- (time) ?time1))
    (printout t crlf "anti-backdoor-pairs computation time = " (seconds-to-hours ?anti-backdoor-pairs-computation-time) crlf)
    ;;; The ?RT0 anti-backdoor-pairs are now in ?*list-of-anti-backdoor-pairs*
    (bind ?nb-anti-backdoor-pairs (div (length$ ?*list-of-anti-backdoor-pairs*) 2))
    ;;; print the list of anti-backdoor-pairs in the output format
    (bind ?back (if (eq ?nb-anti-backdoor-pairs 1) then "-anti-backdoor-pair" else "-anti-backdoor-pairs"))
    (printout t  "===> There are " ?nb-anti-backdoor-pairs " " (str-cat ?RT0 ?back " for the current set of rules: ") crlf)
    (print-list-of-label-pairs ?*list-of-anti-backdoor-pairs*)
    (printout t crlf )
    ?*list-of-anti-backdoor-pairs*
    (printout t crlf crlf)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; User functions for finding a 2-step solution for a Sudoku or Sukaku
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction find-2-steppers-wrt-RT0-in-RS-after-RT0 (?RT0 ?RS-after-RT0)
    ;;; Remember that, when this functions is called:
    ;;; - the rules not in ?RT0 have been disabled in context 0;
    ;;; - the rules in ?RT0 have been applied in context 0;
    ;;; - the resolution state of context 0 is ?RS-after-RT0.
    ;;; Find the list of all the candidates in ?RS-after-RT0:
    (bind ?all-candidates-after-RT0 (create$))
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context 0) (eq ?f:status cand))
        (bind ?all-candidates-after-RT0 (create$ ?all-candidates-after-RT0 ?f:label))
    )
    (bind ?nb-cands-after-RT0 (length$ ?all-candidates-after-RT0))
    (printout t "There remains " ?nb-cands-after-RT0 " candidates after the rules in " ?RT0 " have been applied." crlf)
    
    ;;; block printing
    (mute-print-options)

    ;;; ===> First step:
    ;;; Find the candidates erasable in ?RS-after-RT0 with all the rules originally activated:
    (re-enable-disabled-rules-not-in-RT0 0 ?RT0)
    (bind ?erasable-cands
        (find-erasable-candidates-sukaku-list ?RS-after-RT0 ?all-candidates-after-RT0)
    )
    ;;; At this point:
    ;;; - context 0 has been re-initialised with ?RS-after-RT0;
    ;;; - no rule is activated in ?context 0;
    ;;; - the list of erasable candidates and their computation time have been printed.
    
    ;;; ===> Second step:
    ;;; Disable the rules not in ?RT0 in context 0, in order to prevent them from firing when other contexts are tested.
    (disable-rules-not-in-RT0 0 ?RT0)
    ;;; Try all the relevant candidate pairs in order to find the ?RT0 anti-backdoor pairs.
    ;;; Notice that the two candidates in each pair are different: anti-backdoors are not looked for.
    (ABDP-find-anti-backdoor-pairs-wrt-RT0-in-cont0 0 ?RT0 ?erasable-cands ?all-candidates-after-RT0)
    ;;; At this point:
    ;;; - context 0 is still representing ?RS-after-RT0;
    ;;; - no rule is activated in ?context 0;
    ;;; - the list of ?RT0 anti-backdoor-pairs and their computation time have been printed.

    ;;; ===> Third step:
    ;;; Find which of these ?RT0 anti-backdoor-pairs can be eliminated with the original set of rules,
    ;;; i.e. which of these candidate-pairs are indeed ?RT0 2-steppers:
    (re-enable-disabled-rules-not-in-RT0 0 ?RT0)
    (restore-print-options)
    (printout t crlf crlf "===> CHECKING WHICH OF THE ANTI-BACKDOOR-PAIRS LEAD TO 2-STEP SOLUTIONS:" crlf)
    (if (or (eq ?RT0 BRT) (eq ?RT0 W1)) then
        (bind ?*print-RS-after-Singles-backup* ?*print-RS-after-Singles*)
        (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
        (bind ?*print-final-RS-backup* ?*print-final-RS*)
        (bind ?*print-RS-after-Singles* FALSE)
        (bind ?*print-RS-after-whips[1]* FALSE)
        (bind ?*print-final-RS* FALSE)
    )
    (bind ?nb-anti-backdoor-pairs (div (length$ ?*list-of-anti-backdoor-pairs*) 2))
    (bind ?list-of-2-steppers (create$))
    (bind ?i 1)
    (while (<= ?i ?nb-anti-backdoor-pairs)
        (bind ?cand (nth$ (- (* 2 ?i) 1) ?*list-of-anti-backdoor-pairs*))
        (bind ?cand2 (nth$ (* 2 ?i) ?*list-of-anti-backdoor-pairs*))
        (printout t crlf "===> Testing if candidate pair " (print-label-pair ?cand  ?cand2) " is a 2-stepper:" crlf)
        (try-to-eliminate-candidates ?cand ?cand2)
        ;;; test if ?cand and ?cand2 have been eliminated
        (if (not (any-factp
                    ((?f candidate))
                    (and (eq ?f:context 0) (or (eq ?f:label ?cand) (eq ?f:label ?cand2)))
            ))
            then (bind ?list-of-2-steppers (create$ ?list-of-2-steppers ?cand ?cand2))
                 (if ?*debug* then (printout t "one 2-stepper found for pair : " (print-label-pair ?cand  ?cand2) crlf))
            else (if ?*debug* then (printout t "no 2-stepper found with pair : " (print-label-pair ?cand  ?cand2) crlf))
        )
        ;;; restore the state after ?RT0
        (init-sukaku-list ?RS-after-RT0)
        (bind ?i (+ ?i 1))
    )
    (if (or (eq ?RT0 BRT) (eq ?RT0 W1)) then
        (bind ?*print-RS-after-Singles* ?*print-RS-after-Singles-backup*)
        (bind ?*print-RS-after-whips[1]* ?*print-RS-after-whips[1]-backup*)
        (bind ?*print-final-RS* ?*print-final-RS-backup*)
    )
    ?list-of-2-steppers
)



(deffunction find-sudoku-2-steppers-wrt-resolution-theory (?RT0 ?sudoku-string)
    (if (not (check-conditions-on-no-step-RT0 ?RT0)) then (return FALSE))
    (bind ?time0 (time))
    ;;; ===> First step:
    ;;; Init the puzzle and find the resolution state ?RS-after-RT0 after the rules in ?RT0 have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (bind ?RS-after-RT0 (compute-state-after-RT0-sudoku-string ?RT0 ?sudoku-string))
    ;;; At this point, context 0 is initialised with the state after rules from ?RT0 have been applied.
    
    ;;; ===> Second step:
    ;;; Find the 2-steppers
    (bind ?list-of-2-steppers (find-2-steppers-wrt-RT0-in-RS-after-RT0 ?RT0 ?RS-after-RT0))
    (bind ?nb-2-steppers (div (length$ ?list-of-2-steppers) 2))

    (printout t crlf "Total computation time = " (seconds-to-hours (- (time) ?time0)) crlf)
    (if (eq ?nb-2-steppers 0) then (printout t "There is no 2-step solution for the current set of rules." crlf))
    (if (eq ?nb-2-steppers 1) then
        (printout t "There is one 2-step solution for the current set of rules, based on the following pair:" crlf)
        (print-list-of-label-pairs ?list-of-2-steppers)
    )
    (if (> ?nb-2-steppers 1) then
        (printout t "===> There are " ?nb-2-steppers " 2-step solutions for the current set of rules, based on the following pairs: " crlf)
        (print-list-of-label-pairs ?list-of-2-steppers)
    )
    (printout t crlf)
    ?list-of-2-steppers
)


(deffunction find-sukaku-2-steppers-wrt-resolution-theory (?RT0 ?sukaku-list)
    (if (not (check-conditions-on-no-step-RT0 ?RT0)) then (return FALSE))
    (bind ?time0 (time))
    ;;; ===> First step:
    ;;; Init the puzzle and find the resolution state ?RS-after-RT0 after the rules in ?RT0 have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (bind ?RS-after-RT0 (compute-state-after-RT0-sukaku-list ?RT0 ?sukaku-list))
    ;;; At this point, context 0 is initialised with the state after rules from ?RT0 have been applied.
    
    ;;; ===> Second step:
    ;;; Find the 2-steppers
    (bind ?list-of-2-steppers (find-2-steppers-wrt-RT0-in-RS-after-RT0 ?RT0 ?RS-after-RT0))
    (bind ?nb-2-steppers (div (length$ ?list-of-2-steppers) 2))

    (printout t crlf "Total computation time = " (seconds-to-hours (- (time) ?time0)) crlf)
    (if (eq ?nb-2-steppers 0) then (printout t "There is no 2-step solution for the current set of rules." crlf))
    (if (eq ?nb-2-steppers 1) then
        (printout t "There is one 2-step solution for the current set of rules, based on the following pair:" crlf)
        (print-list-of-label-pairs ?list-of-2-steppers)
    )
    (if (> ?nb-2-steppers 1) then
        (printout t "===> There are " ?nb-2-steppers " 2-step solutions for the current set of rules, based on the following pairs: " crlf)
        (print-list-of-label-pairs ?list-of-2-steppers)
    )
    (printout t crlf)
    ?list-of-2-steppers
)



;;; Abbreviations:
(deffunction find-sudoku-2-steppers-wrt-BRT (?sudoku-string)
    (find-sudoku-2-steppers-wrt-resolution-theory BRT ?sudoku-string)
)

(deffunction find-sudoku-2-steppers-wrt-W1 (?sudoku-string)
    (find-sudoku-2-steppers-wrt-resolution-theory W1 ?sudoku-string)
)

(deffunction find-sukaku-2-steppers-wrt-BRT ($?sukaku-list)
    (find-sukaku-2-steppers-wrt-resolution-theory BRT ?sukaku-list)
)

(deffunction find-sukaku-2-steppers-wrt-W1 ($?sukaku-list)
    (find-sukaku-2-steppers-wrt-resolution-theory W1 ?sukaku-list)
)


;;; Also add this abbreviation for the most usual case:

(deffunction find-2-steppers (?sudoku-string)
    (find-sudoku-2-steppers-wrt-resolution-theory W1 ?sudoku-string)
)
