
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





;;; This file allows to manage the "blocked rules" and "pseudo-blocked rules" behaviour
;;; (print all the targets of a rule on the same line)

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

