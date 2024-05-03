
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                                ORk-FORCING
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2022             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





; (defglobal ?*fused* = FALSE)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ACTIVATE OR-k-FT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule ORkF-activate-OR-k-Forcing
    (declare (salience ?*activate-TE-salience*))
    (logical
        (play)
        (context (name ?cont0&0))
        (not (deactivate OR-k-Forcing))
    )
=>
    (if ?*print-levels* then (printout t Entering_relation_OR-k-Forcing))
    (assert (technique ?cont0 OR-k-Forcing))
    (bind ?*technique* OR-k-Forcing)
)


(defrule ORkF-track-OR-k-Forcing
    (declare (salience ?*activate-TE-salience*))
    ?level <- (technique ?cont0 OR-k-Forcing)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START FORCING-T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule ORkF-start-OR-k-Forcing
    (declare (salience ?*start-TE-salience*))
    (logical
        (context (name ?cont0))
        (technique ?cont0 OR-k-Forcing)
    )
    (OR-k
        (context ?cont0)
        (candidates $?cand-list)
    )
    (candidate (context ?cont0) (label ?lab&:(member$ ?lab ?cand-list)))
=>
    (bind ?*context-counter* (+ ?*context-counter* 1))
    (printout t crlf "Creating context " ?*context-counter* " for guardian " (print-label ?lab) ", starting from resolution state:"crlf)
    (pretty-print-RS)
    (assert (context (name ?*context-counter*) (parent ?cont0) (depth 1) (generating-cand ?lab)))
    
    ;;; This assertion is now enough for the context initialisation rules to apply
    ;;; and for normal resolution rules to be applied in the generated contexts.
    ;;; When all these contexts have been created and initialised,
    ;;; the following rule will be applied.
)
 
 
(defrule ORkF-continue-OR-k-Forcing
    "Ensure that all the context have been developed before fusing them"
    (declare (salience ?*TE-salience*))
    (logical
        (context (name ?cont0))
        (technique ?cont0 OR-k-Forcing)
    )
    (OR-k
        (context ?cont0)
        (candidates $?cand-list)
    )
    (forall (candidate (context ?cont0) (label ?lab&:(member$ ?lab ?cand-list)))
        (exists (context (name ?cont&~?cont0)) (candidate (context ?cont) (label ?lab)))
    )
=>
    ;;; Create a number for the fusion context but do not yet define this context:
    (printout t crlf "Fusing the " (length$ ?cand-list) " contexts. ")
    ;(loop-for-count (?i 1 (length$ ?cand-list)) do
    ;    (pretty-print-current-resolution-state-in-context ?i)
    ;)
    (bind ?*context-counter* (+ ?*context-counter* 1))
    (assert (fuse-context ?*context-counter*))
)


(defrule ORkF-fuse-all-branches-c-values
    "When this rule is applied, all the contexts have been fully explored.
    Copy to context ?*context-counter* all the c-values common to all the branches,
    but do not yet define this context."
    (declare (salience ?*TE-salience*))
    (logical
        (context (name ?cont0))
        (technique ?cont0 OR-k-Forcing)
    )
    (OR-k
        (context ?cont0)
        (candidates $?cand-list)
    )
    (fuse-context ?fuse-context)
    ?cand <- (candidate (context ?cont0) (label ?lab))
    (forall (context (name ?cont&~?cont0))
        (candidate (context ?cont) (status c-value) (label ?lab))
    )
=>
    (duplicate ?cand (context ?fuse-context) (status c-value))
)


(defrule ORkF-fuse-all-branches-candidates
    "When this rule is applied, all the contexts have been fully explored.
    Copy to context ?*context-counter* all the candidates remaining in at least one branch,
    but do not yet define this context."
    (declare (salience ?*TEb-salience*))
    (logical
        (context (name ?cont0))
        (technique ?cont0 OR-k-Forcing)
    )
    (OR-k
        (context ?cont0)
        (candidates $?cand-list)
    )
    (fuse-context ?fuse-context)
    ?cand <- (candidate (context ?cont0) (status cand) (label ?lab))
    (exists (context (name ?cont&~?cont0&~?fuse-context))
        (candidate (context ?cont) (label ?lab))
    )
    (not (candidate (context ?fuse-context) (status c-value) (label ?lab)))
=>
    (duplicate ?cand (context ?fuse-context))
)


(defrule ORkF-end
    "Compute and print the results"
    (declare (salience ?*end-TE-salience*))
    (logical
        (context (name ?cont0))
        (technique ?cont0 OR-k-Forcing)
    )
=>
    (printout t "Resulting state:" crlf)
    (bind ?fused-state (compute-current-resolution-state-in-context ?*context-counter*))
    (pretty-print-sukaku-list ?fused-state)
    ;;; loop
    ;(if (not ?*fused*) then
    ;    (printout t "Now solving this puzzle" crlf)
    ;    (solve-sukaku-list ?fused-state)
    ;    (bind ?*fused* TRUE)
    ;)
    (halt)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT INITIALISATION FOR OR-k-FORCING
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; These initialisation rules are applied as soon as the new contexts are created

(defrule ORkF-init-alternative-contexts-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience*))
    (logical
        (context (name ?par&0))
        (technique ?par OR-k-Forcing)
        (context (name ?conti&~?par) (parent ?par) (depth 1) (generating-cand ?candi))
    )
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have already been eliminated
    (duplicate ?cv (context ?conti) (flag 0))
)


(defrule ORkF-init-alternative-contexts-candidates
    "copy all the candidates from the parent context, except the generating one
    (including those linked to the generating c-value, contrary to ordinary T&E)"
    (declare (salience ?*init-context-salience*))
    (logical
        (context (name ?par&0))
        (technique ?par OR-k-Forcing)
        (context (name ?conti&~?par) (parent ?par) (depth 1) (generating-cand ?candi))
    )
    ?cand <- (candidate (context ?par) (status cand) (label ?xxx&~?candi))
=>
    (duplicate ?cand (context ?conti))
)


(defrule ORkF-init-alternative-contexts-generating-candidates
    "copy the generating candidate as a c-value"
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (technique ?par OR-k-Forcing)
        (context (name ?conti&~?par) (parent ?par) (depth 1) (generating-cand ?candi))
    )
    ?gen <- (candidate (context ?par) (status cand) (label ?candi))
=>
    ;;; assert the generating value of the new context, with flag 1 (contrary to 0 in ordinary T&E,
    ;;; so that the eliminations due to it can be counted)
    (duplicate ?gen (context ?conti) (status c-value) (flag 1))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CLEAN WHAT'S LEFT BY OR-k-FORCING
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule ORkF-clean
    (declare (salience ?*TE-clean-salience*))
    ?t <- (technique 0 OR-k-Forcing)
=>
    (retract ?t)
)


