
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              ONE STEP SOLUTIONS
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







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Rules for initialising a context
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule ABD-init-non-first-context-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience*))
    (technique 0 ABD)
    (context (name ?cont&~0) (parent ?cont0) (generating-cand ?gen-cand) (generating-cand2 0))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have been eliminated
    (duplicate ?cv (context ?cont) (flag 0))
)


(defrule ABD-init-non-first-context-candidates
    "copy all the candidates from the parent context, except the generating candidate"
    (declare (salience ?*init-context-salience*))
    (technique 0 ABD)
    (context (name ?cont&~0) (parent ?cont0) (generating-cand ?gen-cand) (generating-cand2 0))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cd <- (candidate (context ?par) (status cand) (label ?cand&~?gen-cand))
=>
    (duplicate ?cd (context ?cont))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Rules for detecting an anti-backdoor or not
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule ABD-anti-backdoor-not-found
    (declare (salience ?*level1-no-contrad-found-in-context-salience*))
    ;;; after all the resolution rules have been applied
    (technique 0 ABD)
    (context (name ?cont&~0) (parent ?cont0) (generating-cand ?gen-cand) (generating-cand2 0))
    ?pl <- (technique ?cont BRT)
    (not (ABD-found ?cont))
=>
    (retract ?pl)
    (if (and ?*print-actions* ?*print-hypothesis*) then
        (printout t "No anti-backdoor found: " (print-label ?gen-cand) crlf)
    )
    (halt)
)


(defrule ABD-anti-backdoor-found
    (declare (salience ?*solution-found-salience*))
    (technique 0 ABD)
    (context (name ?cont&~0) (parent ?cont0) (generating-cand ?gen-cand) (generating-cand2 0))
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
    (bind ?*list-of-anti-backdoors* (create$ ?*list-of-anti-backdoors* ?gen-cand))
    (if ?*print-actions* then
        (printout t "One anti-backdoor found: " (print-label ?gen-cand) crlf)
    )
    (assert (ABD-found ?cont))
    (halt)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for initialising and cleaning contexts
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction ABD-init-new-context-for-RT-from-cand (?cont0 ?cont ?RT0 ?cand)
    ;;; Firstly, allow only the rules in ?RT0 in the new context:
    (disable-rules-not-in-RT0 ?cont ?RT0)
    ;;; Secondly, init the new context with ?RS, but supposing ?cand is deleted
    (assert (context (name ?cont) (parent ?cont0) (generating-cand ?cand)))
    (assert (technique ?cont BRT))
    ;;; the following will initialise context ?cont
    (run)
)



(defrule ABD-dummy-rule
    (init-context 0)
    (technique 0)
    (csp-linked 0)
    (exists-link 0)
    (bivalue 0)
    (ABD-found 0)
    (solution-found 0)
    (print-solution-in-context 0)
=>
)


(deffunction ABD-clean-new-context (?cont)
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
        ((?fact ABD-found)) (eq (nth$ 1 ?fact:implied ) ?cont) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact solution-found)) (eq (nth$ 1 ?fact:implied ) 0) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact print-solution-in-context)) (eq (nth$ 1 ?fact:implied ) 0) (retract ?fact)
    )
    (do-for-all-facts
        ((?fact deactivate)) (eq (nth$ 1 ?fact:implied )  ?cont) (retract ?fact)
    )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for finding anti-backdoors
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction ABD-use-cont-to-test-candidate-as-RT0-anti-backdoor-in-cont0 (?cont0 ?cont ?RT0 ?cand)
    ;;; this function has the side effect of updating global variable ?*list-of-anti-backdoors*
    (ABD-init-new-context-for-RT-from-cand ?cont0 ?cont ?RT0 ?cand)
    (run)
    (ABD-clean-new-context ?cont)
)


(deffunction ABD-find-anti-backdoors-wrt-RT0-in-current-resolution-state (?RT0)
    ;;; the anti-backdoors are looked for in the current resolution state
    (bind ?time1 (time))
    (if ?*print-actions* then (printout t "===> Looking for the " ?RT0 "-anti-backdoors:" crlf))
    ;;; find the list of all candidates
    (bind ?cand-list (create$))
    (do-for-all-facts
        ((?fact candidate))
        (and (eq ?fact:context 0) (eq ?fact:status cand))
        (bind ?cand-list (create$ ?cand-list ?fact:label))
    )

    (assert (technique 0 ABD))
    (bind ?*list-of-anti-backdoors* (create$))
    ;;; for each undecided candidate, check whether it is an anti-backdoor
    (foreach ?cand ?cand-list
        (bind ?*solution-found* FALSE)
        (bind ?*context-counter* (+ ?*context-counter* 1))
        (bind ?cont ?*context-counter*)
        (if ?*debug*
            then (printout t "=> Testing " (print-label ?cand) " as a possible " ?RT0 "-anti-backdoor." crlf)
            else (printout t ".")
        )
        (mute-print-options)
        (ABD-use-cont-to-test-candidate-as-RT0-anti-backdoor-in-cont0 0 ?cont ?RT0 ?cand)
        (restore-print-options)
    )
    (if (not ?*debug*) then (printout t crlf))
    (bind ?*solution-found* FALSE)
    (do-for-all-facts
        ((?fact technique))
        (and (eq (nth$ 1 ?fact:implied ) 0) (eq (nth$ 2 ?fact:implied ) sudoku-anti-backdoors))
        (retract ?fact)
    )

    ;;; print the list of anti-backdoors in the output format
    (bind ?anti-backdoors-computation-time (- (time) ?time1))
    (printout t "anti-backdoors computation time = " (seconds-to-hours ?anti-backdoors-computation-time) crlf)
    (bind ?len (length$ ?*list-of-anti-backdoors*))
    (bind ?back (if (eq ?len 1) then "-anti-backdoor" else "-anti-backdoors"))
    (printout t  "===> There are " ?len " " (str-cat ?RT0 ?back ": ") crlf)
    (print-list-of-labels ?*list-of-anti-backdoors*)
    (printout t crlf crlf)
    ;;; return the list of anti-backdoors (in the internal format compatible with ?*rating-type*)
    ?*list-of-anti-backdoors*
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for finding a 1-step solution for a Sudoku or Sukaku
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction find-1-steppers-wrt-RT0-in-RS-after-RT0 (?RT0 ?RS-after-RT0)
    ;;; Remember that:
    ;;; - the rules not in ?RT0 have been disabled in the calculation of ?RS-after-RT0;
    ;;; - context 0 represents this state.
    
    ;;; ===> First step:
    ;;; Do not re-activate yet the rules not in ?RT0, so that they continue not to apply in ?cont0
    ;;; Look for the ?RT0 anti-backdoors in the current resolution state (?RS-after-RT0)
    (ABD-find-anti-backdoors-wrt-RT0-in-current-resolution-state ?RT0)
    ;;; Put an end to the search for anti-backdoors
    (do-for-all-facts
        ((?f technique))
        (and (eq (nth$ 1 ?f:implied) 0) (eq (nth$ 2 ?f:implied) ABD))
        (retract ?f)
    )
    ;;; The ?RT0 anti-backdoors are now in ?*list-of-anti-backdoors*
    
    ;;; ===> Second step:
    ;;; Find which of these ?RT0 anti-backdoors can be eliminated with the original set of rules,
    ;;; i.e. find which of these candidates are indeed ?RT0 1-steppers
    (re-enable-disabled-rules-not-in-RT0 0 ?RT0)
    (if ?*print-actions* then
        (printout t "===> Testing each of the " (length$ ?*list-of-anti-backdoors*) " "
            ?RT0 "-anti-backdoors for a single step solution:" crlf crlf)
    )
    (if (eq ?RT0 W1) then
        (bind ?*print-RS-after-Singles-backup* ?*print-RS-after-Singles*)
        (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
        (bind ?*print-final-RS-backup* ?*print-final-RS*)
        (bind ?*print-RS-after-Singles* FALSE)
        (bind ?*print-RS-after-whips[1]* FALSE)
        (bind ?*print-final-RS* FALSE)
    )
    (bind ?list-of-1-steppers (create$))
    (foreach ?cand ?*list-of-anti-backdoors*
        (printout t crlf crlf "===> Testing if candidate " (print-label ?cand) " is a 1-stepper:" crlf)
        (init-sukaku-list ?RS-after-RT0)
        (try-to-eliminate-candidates ?cand)
        ;;; test if ?cand has been eliminated
        (if (not (any-factp
                    ((?f candidate))
                    (and (eq ?f:context 0) (eq ?f:label ?cand))
            ))
            then (bind ?list-of-1-steppers (create$ ?list-of-1-steppers ?cand))
        )
    )

    (if (eq ?RT0 W1) then
        (bind ?*print-RS-after-Singles* ?*print-RS-after-Singles-backup*)
        (bind ?*print-RS-after-whips[1]* ?*print-RS-after-whips[1]-backup*)
        (bind ?*print-final-RS* ?*print-final-RS-backup*)
    )
    ;;; return the list of 1-steppers
    ?list-of-1-steppers
)



(deffunction find-sudoku-1-steppers-wrt-resolution-theory (?RT0 ?sudoku-string)
    (if (not (check-conditions-on-no-step-RT0 ?RT0)) then (return FALSE))
    (bind ?time0 (time))
    
    ;;; ===> First step:
    ;;; Find the resolution state ?RS-after-RT0 after the rules in ?RT0 have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (bind ?RS-after-RT0 (compute-state-after-RT0-sudoku-string ?RT0 ?sudoku-string))
    ;;; At this point:
    ;;; - context 0 is initialised with the state after rules in ?RT0 have been applied;
    ;;; - the rules not in ?RT0 are kept disabled.
    
    ;;; ===> Second step:
    (bind ?list-of-1-steppers (find-1-steppers-wrt-RT0-in-RS-after-RT0 ?RT0 ?RS-after-RT0))
    (bind ?len (length$ ?list-of-1-steppers))
    (printout t "Total computation time = " (seconds-to-hours (- (time) ?time0)) crlf)
    (if (eq ?len 0) then (printout t "===> There is no 1-step solution for the current set of rules." crlf))
    (if (eq ?len 1) then
        (printout t "===> There is one 1-step solution for the current set of rules, based on the following anti-backdoor:" crlf)
        (print-list-of-labels ?list-of-1-steppers)
    )
    (if (> ?len 1) then
        (printout t "===> There are " ?len " 1-step solutions for the current set of rules, based on the following anti-backdoors:" crlf)
        (print-list-of-labels ?list-of-1-steppers)
    )
    (printout t crlf)
    ?list-of-1-steppers
)


(deffunction find-sukaku-1-steppers-wrt-resolution-theory (?RT0 $?sukaku-list)
    (if (not (check-conditions-on-no-step-RT0 ?RT0)) then (return FALSE))
    (bind ?time0 (time))
    
    ;;; ===> First step:
    ;;; Find the resolution state ?RS-after-RT0 after the rules in ?RT0 have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (bind ?RS-after-RT0 (compute-state-after-RT0-sukaku-list ?RT0 ?sukaku-list))
    ;;; At this point:
    ;;; - context 0 is initialised with the state after rules in ?RT0 have been applied;
    ;;; - the rules not in ?RT0 are kept disabled.

    ;;; ===> Second step:
    (bind ?list-of-1-steppers (find-1-steppers-wrt-RT0-in-RS-after-RT0 ?RT0 ?RS-after-RT0))
    (bind ?len (length$ ?list-of-1-steppers))
    (printout t "Total computation time = " (seconds-to-hours (- (time) ?time0)) crlf)
    (if (eq ?len 0) then (printout t "===> There is no 1-step solution for the current set of rules." crlf))
    (if (eq ?len 1) then
        (printout t "===> There is one 1-step solution for the current set of rules, based on the following anti-backdoor:" crlf)
        (print-list-of-labels ?list-of-1-steppers)
    )
    (if (> ?len 1) then
        (printout t "===> There are " ?len " 1-step solutions for the current set of rules, based on the following anti-backdoors:" crlf)
        (print-list-of-labels ?list-of-1-steppers)
    )
    (printout t crlf)
    ?list-of-1-steppers
)


;;; Abbreviations:

(deffunction find-sudoku-1-steppers-wrt-W1 (?sudoku-string)
    (find-sudoku-1-steppers-wrt-resolution-theory W1 ?sudoku-string)
)

(deffunction find-sukaku-1-steppers-wrt-W1 ($?sukaku-list)
    (find-sukaku-1-steppers-wrt-resolution-theory W1 ?sukaku-list)
)

;;; syntactic sugar for grid form:

(deffunction find-sukaku-grid-1-steppers-wrt-W1 ($?sukaku-list)
    (find-sukaku-1-steppers-wrt-resolution-theory W1 (clean-grid-list ?sukaku-list))
)


;;; Also add these abbreviations for the most usual case:

(deffunction find-1-steppers (?sudoku-string)
    (find-sudoku-1-steppers-wrt-resolution-theory W1 ?sudoku-string)
)

(deffunction find-sukaku-1-steppers ($?sukaku-list)
    (clean-grid-list
        (find-sukaku-1-steppers-wrt-resolution-theory W1 ?sukaku-list)
    )
)


