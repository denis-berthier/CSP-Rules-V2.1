
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BLOCKED RULES
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





;;; this file allows to print all the targets of a rule on the same line

(deffunction add-elimination-to-blocked-rule (?elim)
    (if (eq (length$ ?*blocked-rule-eliminations*) 0)
        then (bind ?*blocked-rule-eliminations* ?elim)
        else (bind ?*blocked-rule-eliminations* (str-cat ?*blocked-rule-eliminations* ", " ?elim))
    )
)


(deffunction print-blocked-rule ()
    (if (and ?*print-actions* (neq (length$ ?*blocked-rule-eliminations*) 0)) then
        (printout t ?*blocked-rule-description* ?*implication-sign* ?*blocked-rule-eliminations* crlf)
    )
    (bind ?*blocked-rule-description* "")
    (bind ?*blocked-rule-eliminations* "")
    TRUE
)



(defrule end-apply-a-blocked-rule-1
    (declare (salience ?*end-apply-a-blocked-rule-salience-1*))
    (logical (context (name ?cont)))
    ?apply <- (apply-rule-as-a-block ?cont)
    ?blocked <- (blocked ?cont $?)
=>
    (print-blocked-rule)
    (retract ?blocked)
    (retract ?apply)
)


(defrule end-apply-a-blocked-rule-2
    (declare (salience ?*end-apply-a-blocked-rule-salience-2*))
    (logical (context (name ?cont)))
    ?apply <- (apply-rule-as-a-block ?cont)
=>
    (print-blocked-rule)
    (retract ?apply)
)


;;; when a rule works as usual for its first target, but more targets are looked for
(defrule end-apply-a-pseudo-blocked-rule
    (declare (salience ?*end-apply-a-blocked-rule-salience*))
    (logical (context (name ?cont)))
    ?apply <- (apply-rule-as-a-pseudo-block ?cont)
    ?pseudo-blocked <- (pseudo-blocked ?cont $?)
=>
    (if ?*print-actions* then (printout t crlf))
    (retract ?pseudo-blocked)
    (retract ?apply)
)

