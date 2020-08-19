
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BLOCKED-WHIP[1]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2020             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; SPECIAL CASE. DO NOT USE THE AUTOMATIC GENERATOR


(defrule activate-whip[1]
	(declare (salience ?*activate-whip[1]-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate ?cont whip))
=>
	(if ?*print-levels* then (printout t Entering_level_W1))
	(assert (technique ?cont whip[1]))
	(bind ?*technique* W[1])
)



(defrule track-whip[1]
	(declare (salience ?*activate-whip[1]-salience*))
	?level <- (technique ?cont whip[1])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)




;;; whip elimination rule

(defrule whip[1]
	(declare (salience ?*whip[1]-salience*))
    ;;; ?*whip[1]-salience* < ?*single-salience* implies that ?csp1 has at least two candidates when this rule applies
    (exists-link ?cont ?llc1 ?zzz&:(not (known-to-be-in-solution ?zzz)))

    (technique ?cont whip[1])
    (is-csp-variable-for-label (csp-var ?csp1) (label ?llc1))

    ;;; the following condition implies that ?zzz is not csp-linked to ?llc1 by ?csp1
    ;;; i.e. that ?csp1 is not a csp-variable for ?zzz
    (forall (csp-linked ?cont ?llc1 ?xxx ?csp1) (test (linked ?xxx ?zzz)))

    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L1* ?*print-whip* ?*print-whip-1*) then
			(print-whip-without-crlf 1 ?zzz (create$) (create$) (create$) ?llc1 . ?csp1)
	)
    (assert (apply-rule-as-a-pseudo-block ?cont))
    (assert (pseudo-blocked ?cont whip[1] ?zzz ?csp1 ?llc1))
)



;;; additional eliminations

(defrule apply-whip[1]-to-more-targets
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont whip[1] ?zzz ?csp1 ?llc1)

    ;;; identify the other targets ?zzz
    ;;; the following condition implies that ?zzz2 is not csp-linked to ?llc1 by ?csp1
    ;;; i.e. that ?csp1 is not a csp-variable for ?zzz2
    (exists-link ?cont ?llc1 ?zzz2&~?zzz)
    (forall (csp-linked ?cont ?llc1 ?xxx ?csp1) (test (linked ?xxx ?zzz2)))

    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L1* ?*print-whip* ?*print-whip-1*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)
