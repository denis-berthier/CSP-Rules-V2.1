
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              ANTI-BACKDOORS
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
;;; Find all the T-anti-backdoors of a puzzle
;;; T is the theory (set of rules) loaded in the config file
;;; T must have the confluence property
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction find-anti-backdoors ()
    ;;; the anti-backdoors are looked for in the current resolution state
    (bind ?*list-of-anti-backdoors* (create$))
    (bind ?time1 (time))
    (assert (find-anti-backdoors 0))
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?solve-time (- ?time2 ?time1))
    (bind ?len (length$ ?*list-of-anti-backdoors*))
    (bind ?rat (str-cat ?*rating-type* "-"))
    (bind ?back (if (eq ?len 1) then "ANTI-BACKDOOR" else "ANTI-BACKDOORS"))
    (printout t crlf  ?len " " (str-cat ?rat ?back " FOUND: ") crlf)
    (print-list-of-labels ?*list-of-anti-backdoors*)
    (printout t crlf crlf)
    (printout t "computation time = " (seconds-to-hours ?solve-time) crlf)
    (printout t "nb-facts=" ?*nb-facts* crlf)
    ;(printout t "nb rules " ?nb-rules crlf)
    ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
    (print-banner)
    (printout t crlf)
)




;;; rules

(defrule activate-anti-backdoors
    (declare (salience ?*activate-TE-salience*))
    (logical (play) (context (name ?cont&0)))
    (not (deactivate ?cont anti-backdoors))
    (find-anti-backdoors ?cont)
=>
    (if ?*print-levels* then (printout t Entering_level_ABD))
    (assert (technique ?cont anti-backdoors))
    (bind ?*technique* ABD)
)


(defrule track-anti-backdoors
    (declare (salience ?*activate-TE-salience*))
    (logical (play) (context (name ?cont)))
    ?level <- (technique ?cont anti-backdoors)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT INITIALISATION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule Anti-backdoors-init-non-first-context-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience*))
    (technique 0 anti-backdoors)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have been eliminated
    (duplicate ?cv (context ?cont) (flag 0))
)


(defrule Anti-backdoors-init-non-first-context-candidates
    "copy all the candidates from the parent context, except the generating candidate"
    (declare (salience ?*init-context-salience*))
    (technique 0 anti-backdoors)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cd <- (candidate (context ?par) (status cand) (label ?cand&~?gen-cand))
=>
    (duplicate ?cd (context ?cont))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CLEANING OF TRIED CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; should use (do-for-all-facts ...)

(defrule Anti-backdoors-clean-context-technique
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoors)
    (clean-and-retract ?cont)
    ?xx <- (technique ?cont $?)
=>
    (retract ?xx)
)


(defrule Anti-backdoors-clean-context-candidates
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoors)
    (clean-and-retract ?cont)
    ?cand <- (candidate (context ?cont))
=>
    (retract ?cand)
)


(defrule Anti-backdoors-clean-context-csp-linked
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoors)
    (clean-and-retract ?cont)
    ?xx <- (csp-linked ?cont $?)
=>
    (retract ?xx)
)


(defrule Anti-backdoors-clean-context-exists-link
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoors)
    (clean-and-retract ?cont)
    ?xx <- (exists-link ?cont $?)
=>
    (retract ?xx)
)


(defrule Anti-backdoors-clean-context-chains
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoors)
    (clean-and-retract ?cont)
    ?xx <- (chain (context ?cont))
=>
    (retract ?xx)
)


(defrule Anti-backdoors-clean-context-end
    (declare (salience ?*clean-context-salience*))
    (technique 0 anti-backdoors)
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
;;; DETECTION OF NOT AN ANTI-BACKDOOR
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule Anti-backdoors-no-contradiction-in-non-first-context
    (declare (salience ?*level1-no-contrad-found-in-context-salience*))
    ;;; after all the resolution rules have been applied
    (technique 0 anti-backdoors)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand))
    ?pl <- (technique ?cont BRT)
=>
    (if (or ?*print-actions* ?*print-hypothesis*) then
        (printout t "NO ANTI-BACKDOOR FOUND IN CONTEXT " ?cont "." crlf)
    )
    ;;; properly destroy the present context so as not to saturate memory
    (assert (clean-and-retract ?cont))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF SOLUTION IN NON-INITIAL CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule Anti-backdoor-pairs-detect-anti-backdoor
    (declare (salience ?*solution-found-salience*))
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand))
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
    (bind ?*list-of-anti-backdoors* (create$ ?*list-of-anti-backdoors* ?gen-cand))
    (printout t "ONE ANTI-BACKDOOR FOUND: " ?gen-cand crlf)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START T&E, CONTEXT GENERATION AND PHASE ITERATION IN A CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule Anti-backdoors-generate-context
    (declare (salience ?*level1-generate-context-salience*))
    (context (name ?par&0) (depth ?depth&0))
    (technique 0 anti-backdoors)
    ;;; only one context other than 0 is considered at a time:
    (not (context (name ?cont&~?par) (parent ?par)))
    (candidate (context ?par) (status cand) (label ?gen-cand))
    (not (anti-backdoors-tried ?par ?gen-cand))
=>
    ;;; choose ?gen-cand as a hypothesis
    (bind ?*context-counter* (+ ?*context-counter* 1))
    (bind ?depth1 (+ 1 ?depth))
    (if (or ?*print-actions* ?*print-hypothesis*) then
        (printout t "GENERATING CONTEXT " ?*context-counter* " AT DEPTH " ?depth1 ", SON OF CONTEXT " ?par ", FROM HYPOTHESIS: not " (print-label ?gen-cand) "." crlf)
    )
    ;;; assert the new context
    (assert (context (name ?*context-counter*) (parent ?par) (depth ?depth1) (generating-cand ?gen-cand)))
    (assert (technique ?*context-counter* BRT))
    ;;; remember that ?gen-cand was tried in ?par at phase ?ph
    (assert (anti-backdoors-tried ?par ?gen-cand))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CLEAN WHAT'S LEFT BY ANTI-BACKDOORS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule Anti-backdoors-clean-1
    (declare (salience ?*TE-clean-salience*))
    ?f <- (technique 0 anti-backdoors)
=>
    (retract ?f)
)


(defrule Anti-backdoor-pairs-clean-2a
    (declare (salience ?*TE-clean-salience*))
    (not (technique 0 anti-backdoors))
    ?f <- (find-anti-backdoors 0)
=>
    (retract ?f)
)


(defrule Anti-backdoors-clean-3
    (declare (salience ?*TE-clean-salience*))
    (not (technique 0 anti-backdoors))
    ?f <- (anti-backdoors-tried 0 ?)
=>
    (retract ?f)
)




