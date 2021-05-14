
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BLOCKED-BIVALUE-CHAIN[2]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - February 2021            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; SPECIAL CASE. DO NOT USE THE AUTOMATIC GENERATOR


(defrule activate-bivalue-chain[2]
	(declare (salience ?*activate-bivalue-chain[2]-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate ?cont bivalue-chain))
=>
	(if ?*print-levels* then (printout t Entering_level_BC2))
	(assert (technique ?cont bivalue-chain[2]))
	(bind ?*technique* BC[2])
)



(defrule track-bivalue-chain[2]
	(declare (salience ?*activate-bivalue-chain[2]-salience*))
	?level <- (technique ?cont bivalue-chain[2])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; partial-bivalue-chain detection rule

(defrule partial-bivalue-chain[2]
    (declare (salience ?*partial-bivalue-chain[2]-salience*))
    (logical
        ;;; as bivalue chains are reversible, one might think that one can always choose a starting direction
        ;;; But NO, because the next rules extend it only to the right
        ;;;; (bivalue ?cont ?llc1 ?rlc1&:(< ?llc1 ?rlc1) ?csp1) ;;; <<<< corrected 2013/08/20
        
        (bivalue ?cont ?llc1 ?rlc1 ?csp1)
        (technique ?cont bivalue-chain[2])
        ;;; ?new-llc
        (exists-link ?cont ?rlc1 ?new-llc&~?llc1)
        ;;; ?new-rlc and ?new-csp
        ;;; the following condition implies that new-csp is not a csp variable for llc1 or rlc1
        (bivalue ?cont ?new-llc ?new-rlc&~?llc1&~?rlc1 ?new-csp&~?csp1)
    )
=>
    (assert
        (chain
            (type bivalue-chain)
            (context ?cont)
            (length 2)
            (llcs ?llc1 ?new-llc)
            (rlcs ?rlc1 ?new-rlc)
            (csp-vars ?csp1 ?new-csp)
            (last-rlc ?new-rlc)
        )
    )
)


;;; bivalue-chain elimination rules

(defrule apply1-bivalue-chain[2]
	(declare (salience ?*bivalue-chain[2]-salience*))
	(chain
		(type bivalue-chain)
		(context ?cont)
		(length 2)
		(llcs $?llcs)
		(rlcs $?rlcs)
		(csp-vars $?csp-vars)
		(last-rlc ?last-rlc)
	)
    
    ;;; identify a first target
	(exists-link ?cont ?zzz ?last-rlc)
	(exists-link ?cont ?zzz ?uuu&:(eq ?uuu (first $?llcs)))
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
    ;;; if the focus list is not empty, the following condition restricts the search to the bivalue-chains that have a target in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-bivalue-chain* ?*print-bivalue-chain-2*) then
		(print-bivalue-chain-without-crlf 2 ?zzz $?llcs $?rlcs $?csp-vars)
	)
    (assert (apply-rule-as-a-pseudo-block ?cont))
    (assert (pseudo-blocked ?cont bivalue-chain[2] 2 ?zzz $?llcs $?rlcs $?csp-vars))
)


(defrule apply2-bivalue-chain[2]
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (chain
        (type bivalue-chain)
        (context ?cont)
        (length 2)
        (llcs $?llcs)
        (rlcs $?rlcs)
        (csp-vars $?csp-vars)
        (last-rlc ?last-rlc)
    )
    (apply-rule-as-a-pseudo-block ?cont)
    (pseudo-blocked ?cont bivalue-chain[2] 2 ?zzz $?llcs $?rlcs $?csp-vars)
    
    ;;; identify one more target
    (exists-link ?cont ?zzz2&~?zzz ?last-rlc)
    (exists-link ?cont ?zzz2 ?uuu1&:(eq ?uuu1 (first $?llcs)))
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-bivalue-chain* ?*print-bivalue-chain-2*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)
