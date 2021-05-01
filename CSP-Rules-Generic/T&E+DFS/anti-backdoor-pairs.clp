
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              ANTI-BACKDOOR-PAIRS
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
;;;
;;; Find all the T-anti-backdoor-pairs of a puzzle
;;; T is the theory (set of rules) loaded in the config file
;;; T must have the confluence property
;;; T can reasonably only be BRT, W1, S2, S3 or S.
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction print-list-of-label-pairs ($?list)
    (bind ?len (length$ ?list))
    (bind ?i 1)
    (while (<= ?i ?len)
        (printout t (print-label (nth$ ?i ?list)) " ")
        (bind ?i (+ ?i 1))
        (printout t (print-label (nth$ ?i ?list)))
        (printout t "     ")
        (bind ?i (+ ?i 1))
    )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; User functions
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; There are two user functions:
;;; - one that will find all the T-anti-backdoor-pairs
;;; - one that wil find only those that have at least one candidate in ?*erasable-cands*
;;; The second one is much faster when the proper list of erasable candidates has been pre-computed

(deffunction find-anti-backdoor-pairs ()
    ;;; the anti-backdoor-pairs are looked for in the current resolution state
    (bind ?*context-counter* 0)
    (bind ?*list-of-anti-backdoor-pairs* (create$))
    (bind ?time1 (time))
    ;;; start the search for anti-backdoor-pairs
    (assert (find-anti-backdoor-pairs 0))
    (bind ?n (run))
    ;;; print the results
    (bind ?time2 (time))
    (bind ?solve-time (- ?time2 ?time1))
    (bind ?len (div (length$ ?*list-of-anti-backdoor-pairs*) 2))
    (bind ?rat (str-cat ?*rating-type* "-"))
    (bind ?back (if (eq ?len 1) then "ANTI-BACKDOOR-PAIR" else "ANTI-BACKDOOR-PAIRS"))
    (printout t crlf  ?len " " (str-cat ?rat ?back " FOUND: ") crlf)
    (print-list-of-label-pairs ?*list-of-anti-backdoor-pairs*)
    (printout t crlf crlf)
    (printout t "computation time = " (seconds-to-hours ?solve-time) crlf)
    (printout t "nb-facts=" ?*nb-facts* crlf)
    (print-banner)
    (printout t crlf)
)


(deffunction find-anti-backdoor-pairs-with-one-cand-in-list ($?cands)
    ;;; The anti-backdoor-pairs are looked for in the current resolution state.
    ;;; Search is restricted to pairs containing at least one candidate that can be eliminated.
    (bind ?*context-counter* 0)
    (foreach ?cand ?cands
        (assert (erasable-cand 0 ?cand))
    )
    (bind ?*list-of-anti-backdoor-pairs* (create$))
    (bind ?time0 (time))
    ;;; start the search for anti-backdoor-pairs
    (assert (find-anti-backdoor-pairs-with-one-cand-in-list 0))
    (bind ?n (run))
    ;;; print the results
    (bind ?compute-time (- (time) ?time0))
    (bind ?len (div (length$ ?*list-of-anti-backdoor-pairs*) 2))
    (bind ?rat (str-cat ?*rating-type* "-"))
    (bind ?back (if (eq ?len 1) then "ANTI-BACKDOOR-PAIR" else "ANTI-BACKDOOR-PAIRS"))
    (printout t crlf  ?len " " (str-cat ?rat ?back " FOUND: ") crlf)
    (print-list-of-label-pairs ?*list-of-anti-backdoor-pairs*)
    (printout t crlf crlf)
    (printout t "computation time = " (seconds-to-hours ?compute-time) crlf)
    (printout t "nb-facts=" ?*nb-facts* crlf)
    (print-banner)
    (printout t crlf)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ACTIVATION RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Both of the user functions will acivate the anti-backdoor-pairs rules

(defrule activate-anti-backdoor-pairs
    (declare (salience ?*activate-TE-salience*))
    (logical (play) (context (name ?cont&0)))
    (not (deactivate ?cont anti-backdoor-pairs))
    (or
        (find-anti-backdoor-pairs ?cont)
        (find-anti-backdoor-pairs-with-one-cand-in-list ?cont)
    )
=>
    (if ?*print-levels* then (printout t Entering_level_ABDP))
    (assert (technique ?cont anti-backdoor-pairs))
    (bind ?*technique* ABDP)
)


(defrule track-anti-backdoor-pairs
    (declare (salience ?*activate-TE-salience*))
    (logical (play) (context (name ?cont)))
    (not (deactivate ?cont anti-backdoor-pairs))
    ?level <- (technique ?cont anti-backdoor-pairs)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT INITIALISATION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule Anti-backdoor-pairs-init-non-first-context-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience*))
    (technique 0 anti-backdoor-pairs)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand) (generating-cand2 ?gen-cand2))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have been eliminated
    (duplicate ?cv (context ?cont) (flag 0))
)


(defrule Anti-backdoor-pairs-init-non-first-context-candidates
    "copy all the candidates from the parent context, except the generating candidates"
    (declare (salience ?*init-context-salience*))
    (technique 0 anti-backdoor-pairs)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand) (generating-cand2 ?gen-cand2))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cd <- (candidate (context ?par) (status cand) (label ?cand&~?gen-cand&~?gen-cand2))
=>
    (duplicate ?cd (context ?cont))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CLEANING OF TRIED CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; should use (do-for-all-facts ...)

(defrule Anti-backdoor-pairs-clean-context-technique
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoor-pairs)
    (clean-and-retract ?cont)
    ?xx <- (technique ?cont $?)
=>
    (retract ?xx)
)


(defrule Anti-backdoor-pairs-clean-context-candidates
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoor-pairs)
    (clean-and-retract ?cont)
    ?cand <- (candidate (context ?cont))
=>
    (retract ?cand)
)


(defrule Anti-backdoor-pairs-clean-context-csp-linked
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoor-pairs)
    (clean-and-retract ?cont)
    ?xx <- (csp-linked ?cont $?)
=>
    (retract ?xx)
)


(defrule Anti-backdoor-pairs-clean-context-exists-link
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoor-pairs)
    (clean-and-retract ?cont)
    ?xx <- (exists-link ?cont $?)
=>
    (retract ?xx)
)


(defrule Anti-backdoor-pairs-clean-context-chains
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoor-pairs)
    (clean-and-retract ?cont)
    ?xx <- (chain (context ?cont))
=>
    (retract ?xx)
)


(defrule Anti-backdoor-pairs-clean-context-end
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoor-pairs)
    ?ctx <- (context (name ?cont&~0) (parent ?par&0))
    ?rr <- (clean-and-retract ?cont)
    (not (init-context ?cont))
    (not (candidate (context ?cont)))
    (not (csp-linked ?cont $?))
    (not (exists-link ?cont $?))
    (not (chain (context ?cont)))
=>
    (retract ?rr)
    (retract ?ctx)
    (if (or ?*print-actions* ?*print-hypothesis*) then
        (printout t "BACK IN CONTEXT " ?par " with " ?*nb-csp-variables-solved* " csp-variables solved and " ?*nb-candidates* " candidates remaining." crlf crlf)
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF NOT AN ANTI-BACKDOOR-PAIR
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule Anti-backdoor-pairs-no-contradiction-in-non-first-context
    (declare (salience ?*level1-no-contrad-found-in-context-salience*))
    ;;; after all the resolution rules have been applied
    (technique 0 anti-backdoor-pairs)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand) (generating-cand2 ?gen-cand2))
    ?pl <- (technique ?cont BRT)
=>
    (if (or ?*print-actions* ?*print-hypothesis*) then
        (printout t "NO ANTI-BACKDOOR-PAIR FOUND IN CONTEXT " ?cont "." crlf)
    )
    ;;; properly destroy the present context so as not to saturate memory
    (assert (clean-and-retract ?cont))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF SOLUTION IN NON-INITIAL CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule Anti-backdoor-pairs-detect-anti-backdoor-pair
    (declare (salience ?*solution-found-salience*))
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand) (generating-cand2 ?gen-cand2))
    ?pl <- (technique ?cont BRT)
    ;;; the presence of a c-value for all the csp-variables (of some type) means that a solution has been found in context ?cont
    (forall (csp-variable (name ?csp))
        (exists (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
            (candidate (context ?cont) (status c-value) (label ?lab))
        )
    )
=>
    (retract ?pl)
    (assert (clean-and-retract ?cont))
    (bind ?*list-of-anti-backdoor-pairs* (create$ ?*list-of-anti-backdoor-pairs* ?gen-cand ?gen-cand2))
    (printout t "ONE ANTI-BACKDOOR-PAIR FOUND: " ?gen-cand " " ?gen-cand2 crlf)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START T&E AND CONTEXT GENERATION IN A CONTEXT
;;; THIS THE ONLY PLACE WHERE THE TWO USER FUCTION WILL IMPLY A DIFFERENT TREATMENT
;;; FEWER PAIRS ARE CONSIDERED IN THE FOCUSED VERSION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule Anti-backdoor-pairs-generate-context
    (declare (salience ?*level1-generate-context-salience*))
    (context (name ?par&0) (depth ?depth&0))
    (technique ?par anti-backdoor-pairs)
    (find-anti-backdoor-pairs ?par)
    ;;; only one context other than 0 is considered at a time:
    (not (context (name ?cont&~?par) (parent ?par)))
    (candidate (context ?par) (status cand) (label ?gen-cand))
    (candidate (context ?par) (status cand) (label ?gen-cand2&:(< ?gen-cand ?gen-cand2)))
    (not (bivalue 0 ?gen-cand ?gen-cand2 ?))
    (not (Anti-backdoor-pairs-tried ?par ?gen-cand ?gen-cand2))
=>
    ;;; choose ?gen-cand ?gen-cand2 as a hypothesis
    (bind ?*context-counter* (+ ?*context-counter* 1))
    (bind ?depth1 (+ 1 ?depth))
    (if (or ?*print-actions* ?*print-hypothesis*) then
        (printout t "GENERATING CONTEXT " ?*context-counter* " AT DEPTH " ?depth1 ", SON OF CONTEXT " ?par ", FROM HYPOTHESIS: not " (print-label ?gen-cand) " and not " (print-label ?gen-cand2) "." crlf)
    )
    ;;; assert the new context
    (assert (context (name ?*context-counter*) (parent ?par) (depth ?depth1) (generating-cand ?gen-cand) (generating-cand2 ?gen-cand2)))
    (assert (technique ?*context-counter* BRT))
    ;;; remember that ?gen-cand was tried in ?par at phase ?ph
    (assert (Anti-backdoor-pairs-tried ?par ?gen-cand ?gen-cand2))
)


(defrule Anti-backdoor-pairs-with-one-cand-in-list-generate-context
    (declare (salience ?*level1-generate-context-salience*))
    (context (name ?par&0) (depth ?depth&0))
    (technique ?par anti-backdoor-pairs)
    (find-anti-backdoor-pairs-with-one-cand-in-list ?par)
    ;;; only one context other than 0 is considered at a time:
    (not (context (name ?cont&~?par) (parent ?par)))
    (candidate (context ?par) (status cand) (label ?gen-cand))
    (erasable-cand ?par ?gen-cand)
    ;(candidate (context ?par) (status cand) (label ?gen-cand2&~?gen-cand))
    ; avoid redundant pairs
    (candidate (context ?par) (status cand) (label ?gen-cand2&~?gen-cand))
    (or (not (erasable-cand ?par ?gen-cand2))
        (test (< ?gen-cand ?gen-cand2))
    )
    (not (bivalue ?par ?gen-cand ?gen-cand2 ?))
    (not (Anti-backdoor-pairs-tried ?par ?gen-cand ?gen-cand2))
=>
    ;;; choose ?gen-cand ?gen-cand2 as a hypothesis
    (bind ?*context-counter* (+ ?*context-counter* 1))
    (bind ?depth1 (+ 1 ?depth))
    (if (or ?*print-actions* ?*print-hypothesis*) then
        (printout t "GENERATING CONTEXT " ?*context-counter* " AT DEPTH " ?depth1 ", SON OF CONTEXT " ?par ", FROM HYPOTHESIS: not " (print-label ?gen-cand) " and not " (print-label ?gen-cand2) "." crlf)
    )
    ;;; assert the new context
    (assert (context (name ?*context-counter*) (parent ?par) (depth ?depth1) (generating-cand ?gen-cand) (generating-cand2 ?gen-cand2)))
    (assert (technique ?*context-counter* BRT))
    ;;; remember that ?gen-cand was tried in ?par
    (assert (Anti-backdoor-pairs-tried ?par ?gen-cand ?gen-cand2))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CLEAN WHAT'S LEFT BY ANTI-BACKDOOR-PAIRS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule Anti-backdoor-pairs-clean-1
    (declare (salience ?*TE-clean-salience*))
    ?f <- (technique 0 anti-backdoor-pairs)
=>
    (retract ?f)
)


(defrule Anti-backdoor-pairs-clean-2a
    (declare (salience ?*TE-clean-salience*))
    (not (technique 0 anti-backdoor-pairs))
    ?f <- (find-anti-backdoor-pairs 0)
=>
    (retract ?f)
)


(defrule Anti-backdoor-pairs-clean-2b
    (declare (salience ?*TE-clean-salience*))
    (not (technique 0 anti-backdoor-pairs))
    ?f <- (find-anti-backdoor-pairs-with-one-cand-in-list 0)
=>
    (retract ?f)
)


(defrule Anti-backdoor-pairs-clean-2c
    (declare (salience ?*TE-clean-salience*))
    (not (technique 0 anti-backdoor-pairs))
    ?f <- (erasable-cand 0 ?)
=>
    (retract ?f)
)


(defrule Anti-backdoor-pairs-clean-3
    (declare (salience ?*TE-clean-salience*))
    (not (technique 0 anti-backdoor-pairs))
    ?f <- (Anti-backdoor-pairs-tried 0 ? ?)
=>
    (retract ?f)
)


