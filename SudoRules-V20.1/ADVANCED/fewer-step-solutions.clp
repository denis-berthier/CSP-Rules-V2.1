
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                               FEWER STEP SOLUTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - July 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







(defglobal ?*sequence-of-eliminations* = (create$)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Context initialisation
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule FEWST-init-non-first-context-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience*))
    (technique 0 FEWST)
    (context (name ?cont&~0) (parent ?cont0) (generating-cand ?gen-cand))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have been eliminated
    (duplicate ?cv (context ?cont) (flag 0))
)


(defrule FEWST-init-non-first-context-candidates
    "copy all the candidates from the parent context, except the generating candidate"
    (declare (salience ?*init-context-salience*))
    (technique 0 FEWST)
    (context (name ?cont&~0) (parent ?cont0) (generating-cand ?gen-cand))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cd <- (candidate (context ?par) (status cand) (label ?cand&~?gen-cand))
=>
    (duplicate ?cd (context ?cont))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Rule for ending the evaluation
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule FEWST-end-evaluate-cand
    (declare (salience ?*level1-no-contrad-found-in-context-salience*))
    ;;; after all the resolution rules have been applied
    (technique 0 FEWST)
    (context (name ?cont&~0) (parent ?cont0) (generating-cand ?gen-cand))
    ?pl <- (technique ?cont BRT)
=>
    (retract ?pl)
    (halt)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for cleaning contexts
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule FEWST-dummy-rule
    ;;; necessary for the next function to work
    (init-context 0)
    (technique 0)
    (csp-linked 0)
    (exists-link 0)
    (bivalue 0)
=>
)


(deffunction FEWST-clean-new-context(?cont)
    (do-for-all-facts ((?fact technique)) (eq (nth$ 1 ?fact:implied ) ?cont) (retract ?fact))
    (do-for-all-facts ((?fact candidate)) (eq ?fact:context ?cont) (retract ?fact))
    (do-for-all-facts ((?fact g-candidate)) (eq ?fact:context ?cont) (retract ?fact))
    (do-for-all-facts ((?fact blocked)) (eq (nth$ 1 ?fact:implied ) ?cont) (retract ?fact))
    (do-for-all-facts ((?fact csp-linked)) (eq (nth$ 1 ?fact:implied ) ?cont) (retract ?fact))
    (do-for-all-facts ((?fact exists-link)) (eq (nth$ 1 ?fact:implied ) ?cont) (retract ?fact))
    (do-for-all-facts ((?fact bivalue)) (eq (nth$ 1 ?fact:implied ) ?cont) (retract ?fact))
    (do-for-all-facts ((?fact chain)) (eq ?fact:context ?cont) (retract ?fact))
    (do-for-all-facts ((?fact typed-chain)) (eq ?fact:context ?cont) (retract ?fact))
    (do-for-all-facts ((?fact csp-chain)) (eq ?fact:context ?cont) (retract ?fact))
    (do-for-all-facts ((?fact chain2r)) (eq ?fact:context ?cont) (retract ?fact))
    (do-for-all-facts ((?fact context)) (eq ?fact:name ?cont) (retract ?fact))
    (do-for-all-facts ((?fact deactivate)) (eq (nth$ 1 ?fact:implied )  ?cont) (retract ?fact))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Auxiliary functions for finding fewer step solutions
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction FEWST-use-cont-to-evaluate-candidate-wrt-RT (?cont ?RT ?cand  ?all-cands)
    ;;; When this functions is called, it is supposed that:
    ;;; - the rules in ?RT have already been applied in context 0;
    ;;; - the rules not in ?RT have been kept disabled in context 0.
    ;;; Firstly, allow only the rules of ?RT in the new context:
    (disable-rules-not-in-RT ?cont ?RT)
    (mute-print-options)
    ;;; Secondly, init the new context with ?RS, but supposing ?cand has been deleted, and apply the rules of ?RT in it
    (assert (context (name ?cont) (parent 0) (generating-cand ?cand)))
    (assert (technique ?cont BRT))
    ;;; and run the rules of ?RT in it (they will not run in context 0, in which they have already been used)
    (run)
    ;;; At this point all the consequences in ?RT of having deleted ?cand are visible in ?cont.
    ;;; Find the candidates in context 0 that have been deleted in ?cont
    (bind ?value 0)
    (foreach ?cand2 ?all-cands
        (if (not (any-factp ((?f candidate)) (and (eq ?f:context ?cont) (eq ?f:status cand) (eq ?f:label ?cand2))))
            then (bind ?value (+ ?value 1))
        )
    )
    (FEWST-clean-new-context ?cont)
    (restore-print-options)
    ?value
)



(deffunction FEWST-evaluate-candidates-for-RT (?RT ?cands-to-evaluate ?all-cands)
    ;;; When this functions is called, it is supposed that:
    ;;; - the rules in ?RT have already been applied in context 0;
    ;;; - the rules not in ?RT have been kept disabled in context 0.
    ;;; Evaluate each of the erasable candidates (i.e. count how many candidates it allows to eliminate in ?RT).
    (bind ?time1 (time))
    (assert (technique 0 FEWST))
    (bind ?nb-cands-to-evaluate (length$ ?cands-to-evaluate))
    (bind ?nb-cands (length$ ?all-cands))
    (bind ?cands-to-evaluate-values (create$))
    (if ?*debug* then (printout t crlf "===> Evaluating " ?nb-cands-to-evaluate " candidates." crlf))
    (bind ?i 1)
    (while (<= ?i ?nb-cands-to-evaluate)
        (bind ?cand (nth$ ?i ?cands-to-evaluate))
        ;;; Evaluate ?cand
        (bind ?*solution-found* FALSE)
        (bind ?*context-counter* (+ ?*context-counter* 1))
        (bind ?cont ?*context-counter*)
        ;;; use ?cont to evaluate ?cand wrt ?RT in context 0
        (bind ?value (FEWST-use-cont-to-evaluate-candidate-wrt-RT ?cont ?RT ?cand  ?all-cands))
        (bind ?cands-to-evaluate-values (create$ ?cands-to-evaluate-values ?value))
        (bind ?i (+ ?i 1))
    )
    (if ?*debug* then (printout t crlf "Evaluation time = " (seconds-to-hours (- (time) ?time1)) crlf))
    ?cands-to-evaluate-values
)



(deffunction find-and-apply-best-step-wrt-RT (?RT)
    ;;; This function applies to the current resolution state in context 0.
    ;;; When it is called, it is supposed that
    ;;; - the rules in ?RT have already been applied in context 0;
    ;;; - the rules not in ?RT have been kept disabled in context 0.
    ;;; Upon leaving this function, the rules not in ?RT are still disabled in context 0.
    (bind ?time1 (time))
    (bind ?RS (compute-current-resolution-state))

    ;;; Find the list of all the candidates (with  status cand) in context 0:
    (bind ?all-cands (create$))
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context 0) (eq ?f:status cand))
        (bind ?all-cands (create$ ?all-cands ?f:label))
    )
    (bind ?nb-cands (length$ ?all-cands))
    (printout t "There remains " ?nb-cands " candidates after the rules in " ?RT " have been applied." crlf)

    ;;; ===> First step:
    ;;; Find the candidates erasable in ?RS with all the rules originally activated:
    (mute-print-options)
    ;;; because the rules not in ?RT are disabled upon entering this function, re-enable them
    (re-enable-disabled-rules-not-in-RT 0 ?RT)
    (bind ?erasable-cands (find-erasable-candidates-sukaku-list ?RS ?all-cands))
    (bind ?nb-erasable-cands (length$ ?erasable-cands))
    (restore-print-options)
    ;;; At this point,
    ;;; - context 0 has been re-initialised with the same state ?RS as at the start of this function,
    ;;; - the list of erasable candidates has been found,
    ;;; - all the original rules are enabled.
    
    ;;; ===> Second step:
    ;;; Evaluate each of the erasable candidates.
    ;;; Disable the rules not in ?RT in context 0, in order to prevent them from firing when other contexts are tested.
    (disable-rules-not-in-RT 0 ?RT)
    ;;; Find the values of all the erasable candidates
    (bind ?erasable-cands-values (FEWST-evaluate-candidates-for-RT ?RT ?erasable-cands ?all-cands))
    ;;; Put an end to the search for the best elimination step
    (do-for-all-facts ((?f technique)) (and (eq (nth$ 1 ?f:implied) 0) (eq (nth$ 2 ?f:implied) FEWST)) (retract ?f))
    ;;; At this point,
    ;;; - context 0 is still representing the same state ?RS as at the start of this function
    ;;; - the list of respective values of ?erasable-cands is in ?erasable-cands-values

    ;;; ===> Third step: randomly select one of the best erasable candidates
    ;;; Find the best score
    (bind ?best-score (funcall max (expand$ ?erasable-cands-values)))
    ;;; Find all the erasable candidates with the best score:
    (bind ?best-cands (create$))
    (bind ?i 1)
    (while (<= ?i ?nb-erasable-cands)
        (if (eq (nth$ ?i ?erasable-cands-values) ?best-score)
            then (bind ?best-cands (create$ ?best-cands (nth$ ?i ?erasable-cands)))
        )
        (bind ?i (+ ?i 1))
    )
    (bind ?nb-best-cands (length$ ?best-cands))
    (if (eq ?nb-best-cands 1)
        then (printout t "===> Among these, there is only one candidate with the best score (" ?best-score ")." crlf)
        else (printout t "===> Among these, there are " ?nb-best-cands " candidates with the best score (" ?best-score ")." crlf)
    )
    ;;; Randomly choose one of the erasable candidates with the best score
    (bind ?chosen-cand
        (if (eq ?nb-best-cands 1)
            then (nth$ 1 ?best-cands)
            else (nth$ (random 1 ?nb-best-cands) ?best-cands)
        )
    )
    (if ?*debug* then (printout t "chosen cand = " ?chosen-cand " , value = " ?best-score crlf))

    ;;; ===> Fourth step: re-enable the rules not in ?RT and apply the best step
    (re-enable-disabled-rules-not-in-RT 0 ?RT)
    (restore-print-options)
    (if (eq ?nb-best-cands 1)
        then (printout t "===> Eliminating candidate " (print-label ?chosen-cand))
        else (printout t "===> Eliminating randomly chosen candidate " (print-label ?chosen-cand))
    )
    (printout t " and applying rules in " ?RT ", considered as \"zero-step\"" crlf)
    (try-to-eliminate-candidates ?chosen-cand)
    (bind ?*sequence-of-eliminations* (create$ ?*sequence-of-eliminations* ?chosen-cand))
    ;;; The sequence of eliminations up to this point is now in ?*sequence-of-eliminations*
    (bind ?best-step-computation-time (- (time) ?time1))
    (printout t "best-step-computation-time = " (seconds-to-hours ?best-step-computation-time) crlf)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; USER FUNCTIONS FOR FINDING A FEWER-STEPS SOLUTION FOR A SUDOKU OR SUKAKU
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction solve-sudoku-with-fewer-steps-wrt-resolution-theory (?RT ?sudoku-string)
    (if (not (check-conditions-on-nostep-resolution-theory ?RT)) then (return FALSE))
    (bind ?time0 (time))
    ;;; initialise the seed of the random numbers generator
    (seed (integer ?time0))
    (bind ?*sequence-of-eliminations* (create$))

    ;;; ===> First step:
    ;;; Init the puzzle and find the resolution state ?RS after the rules in ?RT have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (bind ?RS (compute-state-after-RT-sudoku-string ?RT ?sudoku-string))
    ;;; At this point:
    ;;; - context 0 is initialised with the state after the rules in ?RT have been applied;
    ;;; - the rules not in ?RT have been kept disabled.
    
    ;;; ===> Second step:
    (bind ?step 1)
    (printout t "===> STEP #" ?step crlf)
    (find-and-apply-best-step-wrt-RT ?RT)
    (printout t crlf crlf)

    ;;; ===> Third step: if solution not found, iterate
    (while (not ?*solution-found*)
        (bind ?step (+ ?step 1))
        (printout t "===> STEP #" ?step crlf)
        (disable-rules-not-in-RT 0 ?RT)
        (find-and-apply-best-step-wrt-RT ?RT)
        (printout t crlf crlf)
    )
    (printout t "Total computation time = " (seconds-to-hours (- (time) ?time0)) crlf)
    (printout t "sequence of " ?step " eliminations = ")
    (print-list-of-labels ?*sequence-of-eliminations*)
    (printout t crlf)
    (printout t crlf)
)


(deffunction solve-sukaku-with-fewer-steps-wrt-resolution-theory (?RT $?sukaku-list)
    (if (not (check-conditions-on-nostep-resolution-theory ?RT)) then (return FALSE))
    (bind ?time0 (time))
    ;;; initialise the seed of the random numbers generator
    (seed (integer ?time0))
    (bind ?*sequence-of-eliminations* (create$))

    ;;; ===> First step:
    ;;; Init the puzzle and find the resolution state ?RS after the rules in ?RT have been applied;
    ;;; it will be the starting point for all the subsequent calculations.
    (bind ?RS (compute-state-after-RT-sukaku-list ?RT ?sukaku-list))
    ;;; At this point:
    ;;; - context 0 is initialised with the state after rules in ?RT have been applied;
    ;;; - the rules not in ?RT have been kept disabled.
    
    ;;; ===> Second step:
    (bind ?step 1)
    (printout t "===> STEP #" ?step crlf)
    (find-and-apply-best-step-wrt-RT ?RT)
    (printout t crlf crlf)

    ;;; ===> Third step: if solution not found, iterate
    (while (not ?*solution-found*)
        (bind ?step (+ ?step 1))
        (printout t "===> STEP #" ?step crlf)
        (disable-rules-not-in-RT 0 ?RT)
        (find-and-apply-best-step-wrt-RT ?RT)
        (printout t crlf crlf)
    )
    (printout t "Total computation time = " (seconds-to-hours (- (time) ?time0)) crlf)
    (printout t "sequence of " ?step " eliminations = ")
    (print-list-of-labels ?*sequence-of-eliminations*)
    (printout t crlf)
    (printout t crlf)
)


;;; Abbreviations:
(deffunction solve-sudoku-with-fewer-steps-wrt-BRT (?sudoku-string)
    (solve-sudoku-with-fewer-steps-wrt-resolution-theory BRT ?sudoku-string)
)

(deffunction solve-sudoku-with-fewer-steps-wrt-W1 (?sudoku-string)
    (solve-sudoku-with-fewer-steps-wrt-resolution-theory W1 ?sudoku-string)
)

(deffunction solve-sukaku-with-fewer-steps-wrt-BRT ($?sukaku-list)
    (solve-sukaku-with-fewer-steps-wrt-resolution-theory BRT ?sukaku-list)
)

(deffunction solve-sukaku-with-fewer-steps-wrt-W1 ($?sukaku-list)
    (solve-sukaku-with-fewer-steps-wrt-resolution-theory W1 ?sukaku-list)
)




