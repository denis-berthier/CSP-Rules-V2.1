
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
               ;;;              January 2006 - May 2021               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT INITIALISATION
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

(deffunction ABD-init-new-context-for-RT-from-cand (?cont0 ?cont ?RT ?cand)
    ;;; Firstly, allow only the rules in ?RT in the new context:
    (disable-rules-not-in-RT ?cont ?RT)
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

(deffunction ABD-use-cont-to-test-candidate-as-anti-backdoor-for-RT-in-cont0 (?cont0 ?cont ?RT ?cand)
    ;;; this function has the side effect of updating global variable ?*list-of-anti-backdoors*
    (ABD-init-new-context-for-RT-from-cand ?cont0 ?cont ?RT ?cand)
    (run)
    (ABD-clean-new-context ?cont)
)


(deffunction ABD-find-anti-backdoors-for-resolution-theory-RT-in-current-resolution-state (?RT)
    ;;; the anti-backdoors are looked for in the current resolution state
    (bind ?time1 (time))
    (if ?*print-actions* then (printout t "===> Looking for the " ?RT "-anti-backdoors:" crlf))
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
            then (printout t "=> Testing " (print-label ?cand) " as a possible " ?RT "-anti-backdoor." crlf)
            else (printout t ".")
        )
        (mute-print-options)
        (ABD-use-cont-to-test-candidate-as-anti-backdoor-for-RT-in-cont0 0 ?cont ?RT ?cand)
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
    (printout t  "===> There are " ?len " " (str-cat ?RT ?back ": ") crlf)
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

(deffunction find-1-steppers-for-RT-in-RS-after-RT (?RT ?RS-after-RT)
    ;;; Remember that the rules in ?RS-after-RT have been disabled in the calculation of ?RS-after-RT
    ;;; and that context 0 represents this state.
    
    ;;; ===> First step:
    ;;; Do not re-activate yet the rules not in ?RT, so that they continue not to apply in ?cont0
    ;;; Look for the ?RT anti-backdoors in the current resolution state (?RS-after-RT)
    (ABD-find-anti-backdoors-for-resolution-theory-RT-in-current-resolution-state ?RT)
    ;;; Put an end to the search for anti-backdoors
    (do-for-all-facts
        ((?f technique))
        (and (eq (nth$ 1 ?f:implied) 0) (eq (nth$ 2 ?f:implied) ABD))
        (retract ?f)
    )
    ;;; The ?RT anti-backdoors are now in ?*list-of-anti-backdoors*
    
    ;;; ===> Second step:
    ;;; Find which of these ?RT anti-backdoors can be eliminated with the original set of rules,
    ;;; i.e. find which of these candidates are indeed ?RT 1-steppers
    (re-enable-disabled-rules-not-in-RT 0 ?RT)
    (if ?*print-actions* then
        (printout t "===> Testing each of the " (length$ ?*list-of-anti-backdoors*) " "
            ?RT "-anti-backdoors for a single step solution:" crlf crlf)
    )
    (bind ?list-of-1-steppers (create$))
    (foreach ?cand ?*list-of-anti-backdoors*
        (printout t "Testing if candidate " (print-label ?cand) " is a 1-stepper:" crlf)
        (init-sukaku-list ?RS-after-RT)
        (try-to-eliminate-candidates ?cand)
        ;;; test if ?cand has been eliminated
        (if (not (any-factp
                    ((?f candidate))
                    (and (eq ?f:context 0) (eq ?f:label ?cand))
            ))
            then (bind ?list-of-1-steppers (create$ ?list-of-1-steppers ?cand))
        )
    )

    (if (or (eq ?RT BRT) (eq ?RT W1)) then
        (bind ?*print-RS-after-Singles* ?*print-RS-after-Singles-backup*)
        (bind ?*print-RS-after-whips[1]* ?*print-RS-after-whips[1]-backup*)
        (bind ?*print-final-RS* ?*print-final-RS-backup*)
    )
    ;;; return the list of 1-steppers
    ?list-of-1-steppers
)



(deffunction find-sudoku-1-steppers-wrt-resolution-theory (?RT ?sudoku-string)
    (if (not (check-conditions-for-resolution-theory-in-1or2-steppers ?RT)) then (return FALSE))
    (bind ?time0 (time))
    ;;; ===> First step:
    ;;; Find the resolution state ?RS-after-RT after the rules in ?RT have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (bind ?RS-after-RT (compute-state-after-RT-sudoku-string ?RT ?sudoku-string))
    ;;; At this point, context 0 is initialised with the state after rules from ?RT have been applied.
    ;;; ===> Second step:
    (bind ?list-of-1-steppers (find-1-steppers-for-RT-in-RS-after-RT ?RT ?RS-after-RT))
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


(deffunction find-sukaku-1-steppers-wrt-resolution-theory (?RT $?sukaku-list)
    (if (not (check-conditions-for-resolution-theory-in-1or2-steppers ?RT)) then (return FALSE))
    (bind ?time0 (time))
    ;;; ===> First step:
    ;;; Find the resolution state ?RS-after-RT after the rules in ?RT have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (bind ?RS-after-RT (compute-state-after-RT-sukaku-list ?RT ?sukaku-list))
    ;;; At this point, context 0 is initialised with the state after rules from ?RT have been applied.
    ;;; ===> Second step:
    (bind ?list-of-1-steppers (find-1-steppers-for-RT-in-RS-after-RT ?RT ?RS-after-RT))
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



