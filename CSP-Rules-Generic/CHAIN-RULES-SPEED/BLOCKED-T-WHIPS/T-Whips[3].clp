
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BLOCKED-T-WHIP[3]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2021             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; SPECIAL CASE. DO NOT USE THE AUTOMATIC GENERATOR


(defrule activate-t-whip[3]
	(declare (salience ?*activate-t-whip[3]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont t-whip))
    )
=>
	(if ?*print-levels* then (printout t Entering_level_tW3))
    (assert (technique ?cont partial-whip[2]))
    (assert (technique ?cont t-whip[3]))
	(bind ?*technique* tW[3])
)



(defrule track-t-whip[3]
	(declare (salience ?*activate-t-whip[3]-salience*))
	?level <- (technique ?cont t-whip[3])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; t-whip elimination rule

(defrule t-whip[3]
	(declare (salience ?*t-whip[3]-salience*))
	(chain
		(type partial-whip)
		(context ?cont)
		(length 2)
		(target ?zzz1)
		(llcs $?llcs)
		(rlcs $?rlcs)
		(csp-vars $?csp-vars)
		(last-rlc ?last-rlc)
	)
	
	;;; front part
	(chain
		(type partial-whip)
		(context ?cont)
		(length 1)
		(target ?zzz&~?zzz1&:(not (member$ ?zzz $?llcs))&:(not (member$ ?zzz $?rlcs)))
		(llcs ?llc0&~?zzz1&:(not (member$ ?llc0 $?llcs))&:(not (member$ ?llc0 $?rlcs)))
		(rlcs ?zzz1) ; ?rlc0 = ?zzz1 makes the junction between the two partial-whips
		(csp-vars ?csp0&:(not (member$ ?csp0 $?csp-vars)))
		(last-rlc ?zzz1)
	)
	
	(exists-link ?cont ?zzz ?last-rlc)
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L3* ?*print-t-whip* ?*print-t-whip-3*) then
		(print-t-whip-without-crlf 3 ?zzz
			(create$ ?llc0 (first$ $?llcs))
			(create$ ?zzz1 (first$ $?rlcs))
			(create$ ?csp0 (first$ $?csp-vars))
			(nth$ 2 $?llcs) . (nth$ 2 $?csp-vars)
		)
	)
    (assert (apply-rule-as-a-pseudo-block ?cont))
    (assert (pseudo-blocked ?cont t-whip[3] ?zzz ?zzz1 $?csp-vars $?llcs $?rlcs ?last-rlc ?zzz ?csp0 ?llc0 ?zzz1))
)



(defrule apply-t-whip[3]-to-more-targets
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont t-whip[3] ?zzz ?zzz1 $?csp-vars $?llcs $?rlcs ?last-rlc ?zzz ?csp0 ?llc0 ?zzz1)

    ;;; identify the other targets ?zzz-bis
    (chain
        (type partial-whip)
        (context ?cont)
        (length 1)
        (target ?zzz-bis&~?zzz&~?zzz1&:(not (member$ ?zzz-bis $?llcs))&:(not (member$ ?zzz-bis $?rlcs)))
        (llcs ?llc0&~?zzz-bis&~?zzz1&:(not (member$ ?llc0 $?llcs))&:(not (member$ ?llc0 $?rlcs)))
        (rlcs ?zzz1) ; ?rlc0 = ?zzz1 makes the junction between the two partial-whips
        (csp-vars ?csp0)
        (last-rlc ?zzz1)
    )

    (exists-link ?cont ?zzz-bis ?last-rlc)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz-bis))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-t-whip* ?*print-t-whip-3*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz-bis)
    )
)




