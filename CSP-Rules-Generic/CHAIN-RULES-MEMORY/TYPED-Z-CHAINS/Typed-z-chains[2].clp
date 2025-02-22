
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TYPED-Z-CHAIN[2]
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





(defrule activate-typed-z-chain[2]
	(declare (salience ?*activate-typed-z-chain[2]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont typed-z-chain))
    )
=>
	(if ?*print-levels* then (printout t Entering_level_TyZ2))
    (assert (technique ?cont typed-z-chain[2]))
    (assert (technique ?cont typed-partial-whip[1]))
	(bind ?*technique* TyZ[2])
)



(defrule track-typed-z-chain[2]
	(declare (salience ?*activate-typed-z-chain[2]-salience*))
	?level <- (technique ?cont typed-z-chain[2])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; typed-z-chain elimination rule
;;; notice that a typed-partial-z-chain[1] is a mere typed-partial-whip[1]

(defrule typed-z-chain[2]
	(declare (salience ?*typed-z-chain[2]-salience*))
	(typed-chain
		(type typed-partial-whip)
        (csp-type ?csp-type)
		(context ?cont)
		(length 1)
		(target ?zzz)
		(llcs ?llc1)
		(rlcs ?rlc1)
		(csp-vars ?csp1)
		(last-rlc ?last-rlc)
	)
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

	;;; ?new-llc
	(exists-link ?cont ?last-rlc ?new-llc&~?zzz&~?llc1&~?rlc1)
	
	(is-typed-csp-variable-for-label (csp-var ?new-csp&~?csp1) (label ?new-llc) (csp-var-type ?csp-type))
	;;; because, in a partial typed-z-chain, ?zzz cannot be linked to any candidate in $?rlcs
	;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
	;;; i.e. that ?zzz is not a candidate for ?new-csp
	(forall (typed-csp-linked ?cont ?new-llc ?xxx ?new-csp ?csp-type) (test (linked ?xxx ?zzz)))
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-typed-z-chain* ?*print-typed-z-chain-2*) then
		(print-typed-z-chain ?csp-type 2 ?zzz (create$ ?llc1) (create$ ?rlc1) (create$ ?csp1) ?new-llc . ?new-csp)
	)
    (if (not ?*blocked-z-chains*)
       then (printout t crlf)
       else
          ;;; compute the list of z-candidates
          (bind ?z-cands (create$))
          (do-for-all-facts
              ((?f csp-linked))
              (and (eq (nth$ 1 ?f:implied) ?cont)
                  (eq (nth$ 2 ?f:implied) ?llc1)
                  (neq (nth$ 3 ?f:implied) ?rlc1)
                  (eq (nth$ 4 ?f:implied) ?csp1)
              )
              (bind ?new-z-cand (nth$ 3 ?f:implied))
              (if (not (member$ ?new-z-cand ?z-cands)) then (bind ?z-cands (create$ ?z-cands ?new-z-cand)))
          )
          ;;; complete the list of z-candidates
          (do-for-all-facts
              ((?f csp-linked))
              (and (eq (nth$ 1 ?f:implied) ?cont)
                  (eq (nth$ 2 ?f:implied) ?new-llc)
                  (eq (nth$ 4 ?f:implied) ?new-csp)
              )
              (bind ?new-z-cand (nth$ 3 ?f:implied))
              (if (not (member$ ?new-z-cand ?z-cands)) then (bind ?z-cands (create$ ?z-cands ?new-z-cand)))
          )
          (assert (apply-rule-as-a-pseudo-block ?cont))
          (assert (pseudo-blocked ?cont typed-z-chain[2] ?csp-type ?zzz ?llc1 $?z-cands))
    )
 )



 ;;; apply typed-z-chain to more targets

 (defrule apply-typed-z-chain[2]-to-more-targets
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (apply-rule-as-a-pseudo-block ?cont)
    (pseudo-blocked ?cont typed-z-chain[2] ?csp-type ?zzz ?llc1 $?z-cands)
    ;;; identify one more target
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz-bis&~?zzz))
    (exists-link ?cont ?llc1 ?zzz-bis)
    (forall (candidate (context ?cont) (label ?cz&:(member$ ?cz ?z-cands)))
       (exists-link ?cont ?cz ?zzz-bis)
    )
 =>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-typed-z-chain* ?*print-typed-z-chain-2*) then
       (printout t ", ")
       (print-deleted-candidate ?zzz-bis)
    )
 )



 ;;; print z-candidates

 (defrule typed-z-chain[2]-print-z-candidates
    (declare (salience ?*apply-a-blocked-rule-salience-2*))
    (pseudo-blocked ?cont typed-z-chain[2] ?csp-type ?zzz ?llc1 $?z-cands)
 =>
    (if (or ?*print-actions* ?*print-L2* ?*print-typed-z-chain* ?*print-typed-z-chain-2*) then
        (if ?*print-z-candidates* then
           (printout t crlf "     with z-candidates = ")
           (print-list-of-labels $?z-cands)
        )
     )
  )




