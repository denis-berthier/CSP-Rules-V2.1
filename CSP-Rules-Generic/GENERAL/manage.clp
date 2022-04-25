
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              MANAGE
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





;;; This file contains the general management rules of resolution with CSP-Rules.
;;; Notice that the rules for ECP and Singles are in separate files.
;;; This is the generic version.
;;; For efficiency reasons, some of the rules below may be redefined in application-specific ways,
;;; e.g. by using application-specific slots of predicate "candidate".
;;; When no more rule in BRT can be applied, the following happens:
;;; - if a solution has been found, CSP-Rules prints it (if the print options require it) and halts
;;; - otherwise, if no other rule has been enabled,
;;; ---- then CSP-Rules prints that the solution has not been found and then prints the final resolution state
;;; ---- else, there are two possibilities:
;;; ------- at least whips[1] have been enabled: in this case, links are computed and (play) is asserted,
;;;         which starts the application of the other rules (including possibly rules for T&E or DFS)
;;; ------- or some form of T&E or DFS has been activated: in this case, only (play) is asserted,
;;;         which starts the application of the selecetd form of T&E, DFS,...

;;; When no more rule can be applied, the solution (if found) or the final resolution state is printed,
;;; depending on the choice of the variables that control printing.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; MANAGE THE PRESENCE OF TYPED CHAINS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; DO NOT change this rule:

(defrule manage-the-presence-of-typed-chains
    (declare (salience ?*Typed-Chains-related-salience*))
=>
    (if ?*t-Whips* then (assert (t-Whips)))
    (if ?*Typed-t-Whips* then (assert (Typed-t-Whips)))
    (if ?*Typed-Chains* then (assert (typed-chains)))
    (if (not ?*restrict-csp-types-in-typed-chains*) then
        (assert (unrestricted-csp-types-in-typed-chains))
    )
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START BRT: START RESOLUTION (AFTER INITIALISATION)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Initialisation of a new CSP instance normally ends by the assertion of fact (context (name 0)).
;;; As soon as any context is created, the following rule automatically activates the rules of BRT in it.

(defrule activate-BRT
	(declare (salience ?*activate-BRT-salience*))
	(logical (context (name ?cont)))
	(not (deactivate BRT))
=>
	(if ?*print-levels* then 
        (printout t "entering BRT")
        (if (neq ?cont 0) then (printout t " for context " ?cont))
        (printout t crlf)
    )
	(assert (technique ?cont BRT))
	(bind ?*technique* BRT)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; BRT: DETECT CONTRADICTION IN INITIAL CONTEXT AND HALT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Generic detection of a contradiction in the initial context

(defrule no-solution-at-all
	(declare (salience ?*contradiction-salience*))
	(context (name 0))
    (technique 0 BRT)

    ;;; the next condition can be restricted to some complete set of csp-variables, 
    ;;; e.g. by adding a condition on the type of csp-variables in an application
    (csp-variable (name ?csp))
    (forall (is-csp-variable-for-label (csp-var ?csp) (label ?lab)) 
        (not (candidate (context 0) (label ?lab)))
    )
=>
    (if ?*print-actions* then
        (printout t crlf "CSP HAS NO SOLUTION : NO CANDIDATE FOR CSP-VARIABLE " (csp-variable-name ?csp) crlf)
        (printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    )
	;(if ?*add-grid-to-solved-list* then
	;	(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	;)
	(halt)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; BRT: DETECT AND PRINT SOLUTION IN INITIAL CONTEXT; CLEAN CONTROL FACTS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; The forall part of this rule may be re-written in application-specific ways,
;;; but the rest shoudln't be changed.
;;; Notice also that this rule must be restricted to context 0.
;;; Otherwise, unwanted things might happen in T&E.

(defrule detect-solution-in-initial-context
	(declare (salience ?*solution-found-salience*))
    (logical (context (name ?cont&0)))
    ?brt <- (technique ?cont BRT)
	;;; the presence of a c-value for all the csp-variables (possibly restricted to some type in applications)
    ;;; means that a solution has been found in context ?cont
	(forall (csp-variable (name ?csp))
        (exists (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
            (candidate (context ?cont) (status c-value) (label ?lab))
		)
	)
=>
    (if ?*print-actions* then
        (printout t "CSP IS SOLVED.")
        (printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    )
	(retract ?brt)
	(assert (solution-found ?cont))
    (bind ?*solution-found* TRUE)
)


(defrule delete-play
    (declare (salience ?*solution-found-salience*))
    ?sol <- (solution-found ?cont)
    ?pl <- (play)
=>
    (retract ?pl)
)


;;; The following two rules for printing the solution could be fused into one,
;;; but this form allows more varied forms of application-specific printing.

(defrule prepare-printing-of-solution
    (declare (salience ?*solution-found-salience*))
    ?sol <- (solution-found ?cont)
    (not (play))
    (not (technique ?cont BRT))
=>
    (bind ?*nb-facts* ?sol)
    (if (or ?*print-solution* ?*save-solutions*)
        then (assert (print-solution-in-context ?cont)) else (halt)
    )
)


(defrule print-solution
    (declare (salience ?*solution-found-salience*))
    ?sol <- (solution-found ?cont)
    (print-solution-in-context ?cont)
=>
    (if (or ?*print-solution* ?*save-solutions*) then
        (print-solution-in-context ?cont)
        (printout t "nb-facts = " ?sol crlf)
    )
    (halt)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT AND PRINT FINAL STATE IF NO SOLUTION FOUND
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule detetct-and-print-unsolved-final-state
	(declare (salience ?*print-final-state-salience*))
	(context (name ?cont&0))
	(not (solution-found ?cont))
=>
    (if ?*print-final-RS* then
        (printout t "CSP IS NOT SOLVED. " (- ?*nb-csp-variables*  ?*nb-csp-variables-solved*) " VALUES MISSING." crlf)
        (printout t "Final resolution state:" crlf)
        (pretty-print-current-resolution-state)
    )
    (bind ?*solution-found* FALSE)
	(halt)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; PRINT RESOLUTION STATE AFTER WHIPS[1],
;;; in case the application has whips[1] and whips[1] are active
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule print-RS-after-whips[1]
    (declare (salience ?*end-whip[1]-salience*))
    (play)
    (context (name ?cont&0))
    (technique ?cont whip[1])
=>
    (if (and ?*has-whips[1]* ?*print-RS-after-whips[1]*) then
        (printout t crlf "Resolution state after Singles and whips[1]:" crlf)
        (pretty-print-current-resolution-state)
        (printout t ?*nb-candidates* " candidates." crlf crlf)
    )
)

