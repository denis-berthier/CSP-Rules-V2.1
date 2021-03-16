
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BACKDOORS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;           January 2006 - December 2020             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Find all the T-backdoors of a puzzle
;;; T is the theory (set of rules) loaded in the config file
;;; T must have the confluence property
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction find-backdoors ()
    ;;; the backdoors are looked for in the current resolution state
    (bind ?*list-of-backdoors* (create$))
    (bind ?n (run))
    (bind ?time2 (time))
    (bind ?len (length$ ?*list-of-backdoors*))
    (bind ?rat (str-cat ?*rating-type* "-"))
    (bind ?back (if (or (eq ?len 0) (eq ?len 1)) then "BACKDOOR" else "BACKDOORS"))
    (printout t crlf  (length$ ?*list-of-backdoors*) " " (str-cat ?rat ?back " FOUND: ") crlf)
    (print-list-of-labels ?*list-of-backdoors*)
    (printout t crlf crlf)
    (printout t "nb-facts=" ?*nb-facts* crlf)
    ;(printout t "nb rules " ?nb-rules crlf)
    ;(printout t "rules per second " (/ ?nb-rules ?solve-time) crlf crlf) ; provisoire
    (print-banner)
    (printout t crlf)
)

;;; rules

(defrule activate-backdoors
    (declare (salience ?*activate-TE-salience*))
    (logical (play) (context (name ?cont&0)))
    (not (deactivate ?cont backdoors))
=>
    (if ?*print-levels* then (printout t Entering_level_BD))
    (assert (technique ?cont backdoors))
    (bind ?*technique* BD)
)


(defrule track-backdoors
    (declare (salience ?*activate-TE-salience*))
    (logical (play) (context (name ?cont)))
    ?level <- (technique ?cont backdoors)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT INITIALIZATION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule Backdoors-init-non-first-context-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience*))
    (technique 0 backdoors)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have been eliminated
    (duplicate ?cv (context ?cont) (flag 0))
)


(defrule Backdoors-init-non-first-context-candidates
    "copy all the candidates from the parent context, except those linked to the generating c-value"
    (declare (salience ?*init-context-salience*))
    (technique 0 backdoors)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand))
    (technique ?cont BRT)
    (not (clean-and-retract ?cont))
    ?cd <- (candidate (context ?par) (status cand) (label ?xxx&~?gen-cand&:(not (labels-linked ?xxx ?gen-cand))))
=>
    (duplicate ?cd (context ?cont))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CLEANING OF TRIED CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; should use (do-for-all-facts ...)

(defrule Backdoors-clean-context-technique
    (declare (salience ?*clean-context-salience*))
    (technique 0 backdoors)
    (clean-and-retract ?cont)
    ?xx <- (technique ?cont $?)
=>
    (retract ?xx)
)


(defrule Backdoors-clean-context-candidates
    (declare (salience ?*clean-context-salience*))
    (technique 0 backdoors)
    (clean-and-retract ?cont)
    ?cand <- (candidate (context ?cont))
=>
    (retract ?cand)
)


(defrule Backdoors-clean-context-csp-linked
    (declare (salience ?*clean-context-salience*))
    (technique 0 backdoors)
    (clean-and-retract ?cont)
    ?xx <- (csp-linked ?cont $?)
=>
    (retract ?xx)
)


(defrule Backdoors-clean-context-exists-link
    (declare (salience ?*clean-context-salience*))
    (technique 0 backdoors)
    (clean-and-retract ?cont)
    ?xx <- (exists-link ?cont $?)
=>
    (retract ?xx)
)


(defrule Backdoors-clean-context-chains
    (declare (salience ?*clean-context-salience*))
    (technique 0 backdoors)
    (clean-and-retract ?cont)
    ?xx <- (chain (context ?cont))
=>
    (retract ?xx)
)


(defrule Backdoors-clean-context-end
    (declare (salience ?*clean-context-salience*))
    (technique 0 backdoors)
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
;;; DETECTION OF NOT A BACKDOOR
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule Backdoors-no-contradiction-in-non-first-context
    (declare (salience ?*level1-no-contrad-found-in-context-salience*))
    ;;; after all the resolution rules have been applied
    (technique 0 backdoors)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand))
    ?pl <- (technique ?cont BRT)
=>
    (if (or ?*print-actions* ?*print-hypothesis*) then
        (printout t "NO BACKDOOR FOUND IN CONTEXT " ?cont "." crlf)
    )
    ;;; properly destroy the present context so as not to saturate memory
    (assert (clean-and-retract ?cont))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF SOLUTION IN NON-INITIAL CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule detect-backdoor
    (declare (salience ?*solution-found-salience*))
    (grid ?g)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand))
    ?pl <- (technique ?cont BRT)
    ;;; the presence of a c-value for all the csp-variables (of some type) means that a solution has been found in context ?cont
    (forall (csp-variable (name ?csp))
        (exists (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
            (candidate (context ?cont) (status c-value) (label ?lab))
        )
        ;;; rewritten for JESS:
        ;(not (not (and
        ;(candidate (context 0) (status c-value) (label ?lab))
        ;    (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
        ;)))
    )
=>
    (retract ?pl)
    (assert (clean-and-retract ?cont))
    (bind ?*list-of-backdoors* (create$ ?*list-of-backdoors* ?gen-cand))
    (printout t "ONE BACKDOOR FOUND: " ?gen-cand crlf)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START T&E, CONTEXT GENERATION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule Backdoors-generate-context
    (declare (salience ?*level1-generate-context-salience*))
    (context (name ?par&0) (depth ?depth&0))
    (technique 0 backdoors)
    ;;; only one context other than 0 is considered at a time:
    (not (context (name ?cont&~?par) (parent ?par)))
    ?gen <- (candidate (context ?par) (status cand) (label ?gen-cand))
    (not (Backdoors-tried ?par ?gen-cand))
=>
    ;;; choose ?gen-cand as a hypothesis
    (bind ?*context-counter* (+ ?*context-counter* 1))
    (bind ?depth1 (+ 1 ?depth))
    (if (or ?*print-actions* ?*print-hypothesis*) then
        (printout t "GENERATING CONTEXT " ?*context-counter* " AT DEPTH " ?depth1 ", SON OF CONTEXT " ?par ", FROM HYPOTHESIS " (print-label ?gen-cand) "." crlf)
    )
    ;;; assert the new context
    (assert (context (name ?*context-counter*) (parent ?par) (depth ?depth1) (generating-cand ?gen-cand)))
    (assert (technique ?*context-counter* BRT))
    ;;; assert the generating value of the new context, with flag 0
    (duplicate ?gen (context ?*context-counter*) (status c-value) (flag 0))
    ;;; remember that ?gen-cand was tried 
    (assert (Backdoors-tried ?par ?gen-cand))
)




