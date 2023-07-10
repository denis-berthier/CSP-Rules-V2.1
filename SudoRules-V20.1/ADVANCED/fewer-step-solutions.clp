
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
               ;;;            January 2006 - December 2021            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-








;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Rules for initialising a context
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
    ?brt <- (technique ?cont BRT)
=>
    (retract ?brt)
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
;;; Auxiliary function for finding the most promising next step
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction FEWST-find-and-apply-best-step-wrt-RT0 (?RT0 ?sequence-of-eliminations)
    ;;; This function applies to the current resolution state in context 0.
    ;;; When it is called, it is supposed that:
    ;;; - the rules not in ?RT0 are disabled in context 0.
    ;;; - the rules in ?RT0 have already been applied in context 0;
    ;;; Upon leaving this function:
    ;;; - the rules not in ?RT0 are disabled in context 0,
    ;;; - the rules in ?RT0 have been applied in context 0.
    ;;; It returns the sequence of eliminations with the chosen candidate added to it.
    (bind ?time0 (time))
    (bind ?RS (compute-current-resolution-state))

    ;;; Find the list of all the candidates (with  status cand) in context 0:
    (bind ?all-cands (create$))
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context 0) (eq ?f:status cand))
        (bind ?all-cands (create$ ?all-cands ?f:label))
    )
    (bind ?nb-cands (length$ ?all-cands))
    (printout t "There remains " ?nb-cands " candidates after the rules in " ?RT0 " have been applied." crlf)

    ;;; ===> First step:
    ;;; Find and evaluate all the candidates erasable in ?RS with all the rules originally activated:
    (mute-print-options)
    ;;; Because the rules not in ?RT0 are disabled when entering this function, re-enable them
    (re-enable-disabled-rules-not-in-RT0 0 ?RT0)
    (bind ?erasable-cands-and-scores (find-erasable-candidates-sukaku-list-and-eval-wrt-RT0 ?RT0 ?RS ?all-cands))
    (bind ?nb-erasable-cands (div (- (length$ ?erasable-cands-and-scores) 1) 2))
    (restore-print-options)
    ;;; At this point,
    ;;; - context 0 has been re-initialised with the same state ?RS as at the start of this function,
    ;;; - the max score, the list of erasable candidates and their scores are in ?erasable-cands-and-scores,
    ;;; - all the original rules are enabled.
    
    ;;; ===> Second step: randomly select one of the best erasable candidates
    ;;; Find the best score:
    (bind ?best-score (nth$ 1 ?erasable-cands-and-scores))
    ;;; Find all the erasable candidates with the best score:
    (bind ?best-cands (create$))
    (bind ?i 2)
    (while (<= ?i (* 2 ?nb-erasable-cands))
        (if (eq (nth$ (+ ?i 1) ?erasable-cands-and-scores) ?best-score)
            then (bind ?best-cands (create$ ?best-cands (nth$ ?i ?erasable-cands-and-scores)))
        )
        (bind ?i (+ ?i 2))
    )
    (bind ?nb-best-cands (length$ ?best-cands))
    (if (eq ?nb-best-cands 1)
        then (printout t "===> Among these, there is only one candidate with this best score: ")
        else (printout t "===> Among these, there are " ?nb-best-cands " candidates with this best score: ")
    )
    (printout t (print-list-of-labels ?best-cands) crlf)
    ;;; Randomly choose one of the erasable candidates with the best score
    (bind ?chosen-cand
        (if (eq ?nb-best-cands 1)
            then (nth$ 1 ?best-cands)
            else (nth$ (random 1 ?nb-best-cands) ?best-cands)
        )
    )
    (if ?*debug* then (printout t "chosen cand = " ?chosen-cand " , value = " ?best-score crlf))

    ;;; ===> Third step: apply the best step
    ; (re-enable-disabled-rules-not-in-RT0 0 ?RT0); useless; they have already been re-enabled
    (restore-print-options)
    (if (eq ?nb-best-cands 1)
        then (printout t "===> Eliminating candidate " (print-label ?chosen-cand))
        else (printout t "===> Eliminating randomly chosen candidate " (print-label ?chosen-cand))
    )
    (printout t " and applying rules in " ?RT0 ", considered as \"zero-step\":" crlf)
    (bind ?*print-RS-after-Singles-backup* ?*print-RS-after-Singles*)
    (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
    (bind ?*print-final-RS-backup* ?*print-final-RS*)
    (bind ?*print-RS-after-Singles* FALSE)
    (bind ?*print-RS-after-whips[1]* FALSE)
    (bind ?*print-final-RS* FALSE)
    ;;; Notice that, in case blocked versions of the rules are chosen
    ;;; (which should obvioulsy be the case when one tries to reduce the number of steps),
    ;;; the following function will eliminate not only ?chosen-cand,
    ;;; but also all those that can be eliminated by the same pattern
    (try-to-eliminate-candidates ?chosen-cand)
    ;;; The following two functions will:
    ;;; - leave all the rules not in ?RT0 disabled;
    ;;; - apply the rules of ?RT0 in context 0 before leaving.
    (disable-rules-not-in-RT0 0 ?RT0)
    (run)
    (if (not ?*solution-found*) then (pretty-print-current-resolution-state))
    (bind ?*print-RS-after-Singles* ?*print-RS-after-Singles-backup*)
    (bind ?*print-RS-after-whips[1]* ?*print-RS-after-whips[1]-backup*)
    (bind ?*print-final-RS* ?*print-final-RS-backup*)
    (bind ?best-step-computation-time (- (time) ?time0))
    (printout t "best-step-computation-time = " (seconds-to-hours ?best-step-computation-time) crlf)
    ;;; Update the sequence of eliminations and return it:
    (create$ ?sequence-of-eliminations ?chosen-cand)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; USER FUNCTIONS FOR FINDING A FEWER-STEPS SOLUTION FOR A SUDOKU OR SUKAKU
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction solve-sudoku-with-fewer-steps-wrt-resolution-theory (?RT0 ?sudoku-string)
    (if (not (check-conditions-on-no-step-RT0 ?RT0)) then (return FALSE))
    (bind ?time0 (time))
    ;;; initialise the seed of the random numbers generator
    (seed (integer ?time0))
    (bind ?sequence-of-eliminations (create$))

    ;;; ===> First step:
    ;;; Init the puzzle and apply the rules in ?RT0;
    ;;; it will be the starting point for all the subsequent calculations.
    (compute-state-after-RT0-sudoku-string ?RT0 ?sudoku-string)
    ;;; At this point:
    ;;; - the rules not in ?RT0 are disabled in context 0;
    ;;; - the rules in ?RT0 have been applied in context 0.

    ;;; ===> Second step: iterate until solution found
    ;;; This step applies entirely to the current resolution state in context 0.
   (bind ?step 0)
    (while (not ?*solution-found*)
        (bind ?step (+ ?step 1))
        (printout t crlf crlf)
        (printout t "=====> STEP #" ?step crlf)
        (bind ?sequence-of-eliminations (FEWST-find-and-apply-best-step-wrt-RT0 ?RT0 ?sequence-of-eliminations))
    )
    (printout t crlf)
    (printout t "Total computation time = " (seconds-to-hours (- (time) ?time0)) crlf)
    (printout t "sequence of " ?step " eliminations = ")
    (print-list-of-labels ?sequence-of-eliminations)
    (printout t crlf)
    ?sequence-of-eliminations
)


(deffunction solve-sukaku-with-fewer-steps-wrt-resolution-theory (?RT0 $?sukaku-list)
    (if (not (check-conditions-on-no-step-RT0 ?RT0)) then (return FALSE))
    (bind ?time0 (time))
    ;;; initialise the seed of the random numbers generator
    (seed (integer ?time0))
    (bind ?sequence-of-eliminations (create$))

    ;;; ===> First step:
    ;;; Init the puzzle and apply the rules in ?RT0;
    ;;; it will be the starting point for all the subsequent calculations.
    (compute-state-after-RT0-sukaku-list ?RT0 ?sukaku-list)
    ;;; At this point:
    ;;; - the rules not in ?RT0 are disabled in context 0;
    ;;; - the rules in ?RT0 have been applied in context 0.

    ;;; ===> Second step: iterate until solution found
    ;;; This step applies entirely to the current resolution state in context 0.
    (bind ?step 0)
    (while (not ?*solution-found*)
        (printout t crlf crlf)
        (bind ?step (+ ?step 1))
        (printout t "=====> STEP #" ?step crlf)
        (bind ?sequence-of-eliminations (FEWST-find-and-apply-best-step-wrt-RT0 ?RT0 ?sequence-of-eliminations))
    )
    (printout t crlf)
    (printout t "Total computation time = " (seconds-to-hours (- (time) ?time0)) crlf)
    (printout t "sequence of " ?step " eliminations = ")
    (print-list-of-labels ?sequence-of-eliminations)
    (printout t crlf)
    ?sequence-of-eliminations
)


;;; Abbreviations:
(deffunction solve-sudoku-with-fewer-steps-wrt-W1 (?sudoku-string)
    (solve-sudoku-with-fewer-steps-wrt-resolution-theory W1 ?sudoku-string)
)

(deffunction solve-sukaku-with-fewer-steps-wrt-W1 ($?sukaku-list)
    (solve-sukaku-with-fewer-steps-wrt-resolution-theory W1 ?sukaku-list)
)


;;; Non-smart iterations and their abbreviations:
(deffunction solve-ntimes-sudoku-with-fewer-steps-wrt-resolution-theory (?ntimes ?RT0 ?sudoku-string)
    (loop-for-count (?i 1 ?ntimes)
        (printout t crlf crlf "************************* TRY # " ?i " *************************" crlf crlf)
        (solve-sudoku-with-fewer-steps-wrt-resolution-theory ?RT0 ?sudoku-string)
    )
)

(deffunction solve-ntimes-sukaku-with-fewer-steps-wrt-resolution-theory (?ntimes ?RT0 $?sukaku-list)
    (loop-for-count (?i 1 ?ntimes)
        (printout t crlf crlf "************************* TRY # " ?i " *************************" crlf crlf)
        (solve-sukaku-with-fewer-steps-wrt-resolution-theory ?RT0 ?sukaku-list)
    )
)

(deffunction solve-ntimes-sudoku-with-fewer-steps-wrt-W1 (?ntimes ?sudoku-string)
    (solve-ntimes-sudoku-with-fewer-steps-wrt-resolution-theory ?ntimes W1 ?sudoku-string)
)

(deffunction solve-ntimes-sukaku-with-fewer-steps-wrt-W1 (?ntimes $?sukaku-list)
    (solve-ntimes-sukaku-with-fewer-steps-wrt-resolution-theory ?ntimes W1 ?sukaku-list)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; USER FUNCTIONS FOR SMARTER ITERATION IN THE SEARCH FOR A FEWER STEPS SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction solve-sukaku-with-restricted-fewer-steps-wrt-resolution-theory (?max-nb-steps ?RT0 ?RS0)
    ;;; This function applies entirely to the current resolution state in context 0.
   (bind ?time0 (time))
    (bind ?sequence-of-eliminations (create$))

    ;;; Iterate until solution found or nb-steps exceeded
    (bind ?step 0)
    (while (and (not ?*solution-found*) (< ?step ?max-nb-steps))
        (printout t crlf crlf)
        (bind ?step (+ ?step 1))
        (printout t "=====> STEP #" ?step crlf)
        ;;; This function applies entirely to the current resolution state in context 0:
       (bind ?sequence-of-eliminations (FEWST-find-and-apply-best-step-wrt-RT0 ?RT0 ?sequence-of-eliminations))
    )
    (printout t crlf)
    (printout t "Total computation time = " (seconds-to-hours (- (time) ?time0)) crlf)
    (printout t "Sequence of " ?step " eliminations = ")
    (printout t crlf)
    (print-list-of-labels ?sequence-of-eliminations)
    (printout t crlf)
    (if (not ?*solution-found*) then (printout t "Current best number of steps exceeded; stopped before solution is found." crlf))
    (printout t crlf)
    ?sequence-of-eliminations
)


(deffunction smart-solve-ntimes-sudoku-with-fewer-steps-wrt-resolution-theory (?ntimes ?RT0 ?sudoku-string)
    (if (not (check-conditions-on-no-step-RT0 ?RT0)) then (return FALSE))
    (bind ?time0 (time))
    ;;; initialise the seed of the random numbers generator
    (seed (integer ?time0))
    (bind ?best-try 0)
    (bind ?best-try-nb-steps 1000)
    (bind ?best-try-sequence-of-eliminations (create$))

    ;;; ===> First step:
    ;;; Init the puzzle and apply the rules in ?RT0;
    ;;; it will be the starting point for all the subsequent calculations.
    (bind ?RS0 (compute-state-after-RT0-sudoku-string ?RT0 ?sudoku-string))
    ;;; At this point:
    ;;; - the rules not in ?RT0 are disabled in context 0;
    ;;; - the rules in ?RT0 have been applied in context 0.
    (if ?*solution-found* then (return))
    
    ;;; The first step should be given special treatment
    ;;; The list of erasable candidates at the start should be kept for all paths.
    ;;; If a 1-step solution is obtained, a special case should be set
    ;;; and function find-sudoku-1-steppers should be called.

    (bind ?*print-RS-after-Singles-backup* ?*print-RS-after-Singles*)
    (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
    (bind ?*print-RS-after-Singles* FALSE)
    (bind ?*print-RS-after-whips[1]* FALSE)
    (bind ?nb-try 0)
    (while (< ?nb-try ?ntimes)
        (printout t crlf crlf crlf)
        (bind ?nb-try (+ ?nb-try 1))
        (printout t "************************* TRY # " ?nb-try " *************************" crlf crlf)
        (bind ?RS0 (compute-state-after-RT0-sudoku-string ?RT0 ?sudoku-string)) ; should be simplified
        ;;; At this point:
        ;;; - the rules not in ?RT0 are disabled in context 0;
        ;;; - the rules in ?RT0 have been applied in context 0.
        ;;; This function applies entirely to the current resolution state in context 0, ?RS0:
        (bind ?seq-elim (solve-sukaku-with-restricted-fewer-steps-wrt-resolution-theory ?best-try-nb-steps ?RT0 ?RS0))
        (bind ?len (length$ ?seq-elim))
        (if (and ?*solution-found* (< ?len ?best-try-nb-steps)) then
            (bind ?best-try ?nb-try)
            (bind ?best-try-nb-steps ?len)
            (bind ?best-try-sequence-of-eliminations ?seq-elim)
        )
    )
    (printout t crlf crlf)
    (bind ?*print-RS-after-Singles* ?*print-RS-after-Singles-backup*)
    (bind ?*print-RS-after-whips[1]* ?*print-RS-after-whips[1]-backup*)
    (printout t "************************* SUMMARY of " ?ntimes " TRIES *************************" crlf)
    (printout t "Total computation time for all the tries = " (seconds-to-hours (- (time) ?time0)) crlf)
    (printout t "Best sequence is # " ?best-try " and has " ?best-try-nb-steps " eliminations: ")
    (print-list-of-labels ?best-try-sequence-of-eliminations)
    (printout t crlf crlf)
    (internal-reconstruct-sudoku-resolution-path-wrt-RT0 ?RT0 ?sudoku-string ?best-try-sequence-of-eliminations)
)


(deffunction smart-solve-ntimes-sudoku-with-fewer-steps-wrt-W1 (?ntimes ?sudoku-string)
    (smart-solve-ntimes-sudoku-with-fewer-steps-wrt-resolution-theory ?ntimes W1 ?sudoku-string)
)

(deffunction smart-solve-ntimes-with-fewer-steps (?ntimes ?sudoku-string)
    (smart-solve-ntimes-sudoku-with-fewer-steps-wrt-resolution-theory ?ntimes W1 ?sudoku-string)
)

(deffunction smart-solve (?ntimes ?sudoku-string)
    (smart-solve-ntimes-sudoku-with-fewer-steps-wrt-resolution-theory ?ntimes W1 ?sudoku-string)
)
