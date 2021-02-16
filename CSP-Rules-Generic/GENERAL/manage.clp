
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
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; this is the generic version
;;; for efficiency reasons, some of the rules below may be redefined in application-specific ways
;;; e.g. by using application-specific slots of predicate "candidate"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; MANAGE THE TYPED CHAINS
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
;;; START RESOLUTION (AFTER INITIALISATION)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


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
;;; DETECT CONTRADICTION AND HALT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Generic detection of a contradiction.

(defrule no-solution-at-all
	(declare (salience ?*contradiction-salience*))
	(context (name 0))
    (technique 0 BRT)

    ;;; the next condition can be restricted to some complete set of csp-variables, 
    ;;; e.g. by adding a condition on the type of csp-variables
    (csp-variable (name ?csp)) ; (type ?type&:(is-basic-csp-variable-type ?type))
    (forall (is-csp-variable-for-label (csp-var ?csp) (label ?lab)) 
        (not (candidate (context 0) (label ?lab)))
    )
=>
	(printout t crlf "PUZZLE HAS NO SOLUTION : NO CANDIDATE FOR CSP-VARIABLE " (csp-variable-name ?csp) crlf)
	(printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	;(if ?*add-grid-to-solved-list* then
	;	(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	;)
	(halt)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT AND PRINT SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-solution-in-initial-context
	(declare (salience ?*solution-found-salience*))
    (context (name ?cont&0))
	?pl <- (technique ?cont BRT)
	;;; the presence of a c-value for all the csp-variables (of some type) means that a solution has been found in context ?cont
	(forall (csp-variable (name ?csp))
        (exists (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
            (candidate (context ?cont) (status c-value) (label ?lab))
		)
        ;;; rewritten for JESS:
		;(not (not (and
        ;(candidate (context 0) (status c-value) (label ?lab))
		;	(is-csp-variable-for-label (csp-var ?csp) (label ?lab))
		;)))
	)
=>
	(printout t "PUZZLE SOLVED.")
	(printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(retract ?pl)
	(assert (solution-found ?cont))
)


(defrule delete-BRT
	(declare (salience ?*solution-found-salience*))
	?sol <- (solution-found ?cont)
    ?pl <- (technique ?cont BRT)
=>
	(retract ?pl)
)	


(defrule delete-play
	(declare (salience ?*solution-found-salience*))
	?sol <- (solution-found ?cont)
    ?pl <- (play)
=>
	(retract ?pl)
)	


(defrule record-number-of-facts
	(declare (salience ?*solution-found-salience*))
	?sol <- (solution-found ?cont)
    (not (play))
    (not (technique ?cont BRT))
=>
	(bind ?*nb-facts* ?sol)
	(if (or ?*print-solution* ?*save-solutions*)
		then (assert (print-solution ?cont)) else (halt)
	)
)	




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; PRINT CURRENT RESOLUTION STATE, IN PARTICULAR IF NO SOLUTION IS FOUND
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction print-current-resolution-state-in-context (?cont) TRUE)

(deffunction print-current-resolution-state ()
    (print-current-resolution-state-in-context 0)
)

(defrule print-unsolved-final-state
	(declare (salience ?*print-final-state-salience*))
	(context (name ?cont&0))
	(not (solution-found ?cont))
=>
	(printout t "PUZZLE NOT SOLVED. " (- ?*nb-csp-variables*  ?*nb-csp-variables-solved*) " VALUES MISSING." crlf)
    (print-current-resolution-state)
	(halt)
)


