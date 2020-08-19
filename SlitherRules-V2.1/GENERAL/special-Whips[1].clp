
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              SPECIAL WHIPS[1]
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





;;; As they are written, these rules can only be applied after init-links

(defrule activate-special-whip[1]
	(declare (salience ?*activate-special-whip[1]-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate ?cont whip))
=>
	(if ?*print-levels* then (printout t Entering_level_sW1))
	(assert (technique ?cont special-whip[1]))
	(bind ?*technique* sW[1])
)



(defrule track-special-whip[1]
	(declare (salience ?*activate-special-whip[1]-salience*))
	?level <- (technique ?cont special-whip[1])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)




(defrule HV-whip[1]
	(declare (salience ?*HV-whip[1]-salience*))
    ;;; as ?*whip[1]-salience* is < ?*single-salience*, ?csp1 has at least two candidates when this rule applies
    (technique ?cont special-whip[1])
    (exists-link ?cont ?zzz ?llc1)
    (is-csp-variable-for-label (csp-var ?csp1) (label ?llc1))
    (forall (csp-linked ?cont ?llc1 ?xxx ?csp1) (exists-link ?cont ?xxx ?zzz))

    (candidate (context ?cont) (status cand) (label ?zzz) (type ?typez) (row ?rowz) (column ?colz) (value ?valz))
    (candidate (context ?cont) (status cand) (label ?llc1) (type ?type1) (row ?row1) (column ?col1) (value ?val1))
    (is-csp-variable-for-label (csp-var ?csp2) (label ?zzz))
    (csp-variable (name ?csp2) (type ?type2&H|V))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-whip[1] ?csp1 ?llc1 ?zzz ?csp2))
	(if (or ?*print-actions* ?*print-L1* ?*print-whip* ?*print-whip-1*) then
        (bind ?*blocked-rule-description* (str-cat "HV-whip[1]: " ?type1 (row-name ?row1) (column-name ?col1) ?*starting-cell-symbol* (value-name ?val1 ?type1) ?*separation-sign-in-cell* ?*dot-in-cell* ?*ending-cell-symbol*))
        (bind ?elim (str-cat ?typez (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (value-name ?valz ?typez)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


(defrule P-whip[1]
	(declare (salience ?*P-whip[1]-salience*))
    ;;; as ?*whip[1]-salience* is < ?*single-salience*, ?csp1 has at least two candidates when this rule applies
    (technique ?cont special-whip[1])
    (exists-link ?cont ?zzz ?llc1)
    (is-csp-variable-for-label (csp-var ?csp1) (label ?llc1))
    (forall (csp-linked ?cont ?llc1 ?xxx ?csp1) (exists-link ?cont ?xxx ?zzz))

    (candidate (context ?cont) (status cand) (label ?zzz) (type ?typez) (row ?rowz) (column ?colz) (value ?valz))
    (candidate (context ?cont) (status cand) (label ?llc1) (type ?type1) (row ?row1) (column ?col1) (value ?val1))
    (is-csp-variable-for-label (csp-var ?csp2) (label ?zzz))
    (csp-variable (name ?csp2) (type ?type2&P))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-whip[1] ?csp1 ?llc1 ?zzz ?csp2))
	(if (or ?*print-actions* ?*print-L1* ?*print-whip* ?*print-whip-1*) then
        (bind ?*blocked-rule-description* (str-cat "P-whip[1]: " ?type1 (row-name ?row1) (column-name ?col1) ?*starting-cell-symbol* (value-name ?val1 ?type1) ?*separation-sign-in-cell* ?*dot-in-cell* ?*ending-cell-symbol*))
        (bind ?elim (str-cat ?typez (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (value-name ?valz ?typez)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


(defrule B-whip[1]
	(declare (salience ?*B-whip[1]-salience*))
    ;;; as ?*whip[1]-salience* is < ?*single-salience*, ?csp1 has at least two candidates when this rule applies
    (technique ?cont special-whip[1])
    (exists-link ?cont ?zzz ?llc1)
    (is-csp-variable-for-label (csp-var ?csp1) (label ?llc1))
    (forall (csp-linked ?cont ?llc1 ?xxx ?csp1) (exists-link ?cont ?xxx ?zzz))

    (candidate (context ?cont) (status cand) (label ?zzz) (type ?typez) (row ?rowz) (column ?colz) (value ?valz))
    (candidate (context ?cont) (status cand) (label ?llc1) (type ?type1) (row ?row1) (column ?col1) (value ?val1))
    (is-csp-variable-for-label (csp-var ?csp2) (label ?zzz))
    (csp-variable (name ?csp2) (type ?type2&B))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-whip[1] ?csp1 ?llc1 ?zzz ?csp2))
	(if (or ?*print-actions* ?*print-L1* ?*print-whip* ?*print-whip-1*) then
        (bind ?*blocked-rule-description* (str-cat "B-whip[1]: " ?type1 (row-name ?row1) (column-name ?col1) ?*starting-cell-symbol* (value-name ?val1 ?type1) ?*separation-sign-in-cell* ?*dot-in-cell* ?*ending-cell-symbol*))
        (bind ?elim (str-cat ?typez (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (value-name ?valz ?typez)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


(defrule N-whip[1]
	(declare (salience ?*N-whip[1]-salience*))
    ;;; as ?*whip[1]-salience* is < ?*single-salience*, ?csp1 has at least two candidates when this rule applies
    (technique ?cont special-whip[1])
    (exists-link ?cont ?zzz ?llc1)
    (is-csp-variable-for-label (csp-var ?csp1) (label ?llc1))
    (forall (csp-linked ?cont ?llc1 ?xxx ?csp1) (exists-link ?cont ?xxx ?zzz))

    (candidate (context ?cont) (status cand) (label ?zzz) (type ?typez) (row ?rowz) (column ?colz) (value ?valz))
    (candidate (context ?cont) (status cand) (label ?llc1) (type ?type1) (row ?row1) (column ?col1) (value ?val1))
    (is-csp-variable-for-label (csp-var ?csp2) (label ?zzz))
    (csp-variable (name ?csp2) (type ?type2&N))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-whip[1] ?csp1 ?llc1 ?zzz ?csp2))
	(if (or ?*print-actions* ?*print-L1* ?*print-whip* ?*print-whip-1*) then
        (bind ?*blocked-rule-description* (str-cat "N-whip[1]: " ?type1 (row-name ?row1) (column-name ?col1) ?*starting-cell-symbol* (value-name ?val1 ?type1) ?*separation-sign-in-cell* ?*dot-in-cell* ?*ending-cell-symbol*))
        (bind ?elim (str-cat ?typez (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (value-name ?valz ?typez)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


(defrule I-whip[1]
	(declare (salience ?*I-whip[1]-salience*))
    ;;; as ?*whip[1]-salience* is < ?*single-salience*, ?csp1 has at least two candidates when this rule applies
    (technique ?cont special-whip[1])
    (exists-link ?cont ?zzz ?llc1)
    (is-csp-variable-for-label (csp-var ?csp1) (label ?llc1))
    (forall (csp-linked ?cont ?llc1 ?xxx ?csp1) (exists-link ?cont ?xxx ?zzz))

    (candidate (context ?cont) (status cand) (label ?zzz) (type ?typez) (row ?rowz) (column ?colz) (value ?valz))
    (candidate (context ?cont) (status cand) (label ?llc1) (type ?type1) (row ?row1) (column ?col1) (value ?val1))
    (is-csp-variable-for-label (csp-var ?csp2) (label ?zzz))
    (csp-variable (name ?csp2) (type ?type2&I))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-whip[1] ?csp1 ?llc1 ?zzz ?csp2))
	(if (or ?*print-actions* ?*print-L1* ?*print-whip* ?*print-whip-1*) then
        (bind ?*blocked-rule-description* (str-cat "I-whip[1]: " ?type1 (row-name ?row1) (column-name ?col1) ?*starting-cell-symbol* (value-name ?val1 ?type1) ?*separation-sign-in-cell* ?*dot-in-cell* ?*ending-cell-symbol*))
        (bind ?elim (str-cat ?typez (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (value-name ?valz ?typez)))
        (add-elimination-to-blocked-rule ?elim)
    )
)




(defrule special-whip[1]-apply-1
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (technique ?cont special-whip[1])
    (exists-link ?cont ?zzz2 ?llc1)
    (is-csp-variable-for-label (csp-var ?csp1) (label ?llc1))
    (forall (csp-linked ?cont ?llc1 ?xxx ?csp1) (exists-link ?cont ?xxx ?zzz2))

    ?cand2 <- (candidate (context ?cont) (status cand) (label ?zzz2) (type ?typez2) (row ?rowz2) (column ?colz2) (value ?valz2))
    (is-csp-variable-for-label (csp-var ?csp2) (label ?zzz2))

    (blocked ?cont special-whip[1] ?csp1 ?llc1 ?zzz&~?zzz2 ?csp2)
=>
	(if (or ?*print-actions* ?*print-L1* ?*print-whip* ?*print-whip-1*) then
        (bind ?elim 
                ;(str-cat ?typez2 (row-name ?rowz2) (column-name ?colz2) ?*non-equal-sign*
                    (value-name ?valz2 ?typez2)
                ;)
        )
        (add-elimination-to-blocked-rule ?elim)
	)
)



;;; for the next rules, (apply-rule-as-a-block ?cont) has already been deleted by rule end-apply-a-blocked-rule

(defrule special-whip[1]-apply-2
	(declare (salience ?*end-apply-a-blocked-rule-salience-2*))
    (technique ?cont special-whip[1])
    (exists-link ?cont ?zzz2 ?llc1)
    (is-csp-variable-for-label (csp-var ?csp1) (label ?llc1))
    (forall (csp-linked ?cont ?llc1 ?xxx ?csp1) (exists-link ?cont ?xxx ?zzz2))
    ?cand2 <- (candidate (context ?cont) (status cand) (label ?zzz2) (type ?typez2) (row ?rowz2) (column ?colz2) (value ?valz2))
    (is-csp-variable-for-label (csp-var ?csp2) (label ?zzz2))

    (blocked ?cont special-whip[1] ?csp1 ?llc1 ?zzz&~?zzz2 ?csp2)
=>
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(retract ?cand2)
)



(defrule special-whip[1]-apply-3
	(declare (salience ?*end-apply-a-blocked-rule-salience-3*))
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
    ?st <- (blocked ?cont special-whip[1] ?csp1 ?llc1 ?zzz ?csp2)
=>
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(retract ?cand)
    (retract ?st)
)


