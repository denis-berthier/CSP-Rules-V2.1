
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              SPECIAL TRIAL AND ERROR, DEPTH 1
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





(defrule TE1-generate-special-context
    (declare (salience ?*level1-generate-special-context-salience*))
    (technique 0 TE)
    ;;; currently only one level of T&E: T&E(1)
    (context (name ?par&0) (depth ?depth&0))
    ;;; only one context other than 0 is considered at a time:
    (not (context (name ?cont&~?par) (parent ?par)))
    ;;; each remaining cand will be re-tried in each phase, but not re-tried in the same phase
    (phase ?par ?ph)
    ?gen <- (candidate (context ?par) (status cand) (label ?gen-cand) (type H|V))
    (bivalue ?cont ?gen-cand ? ?)
    (not (TE-tried ?par ?ph ?gen-cand))
    
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    ;;; t-whips should not be used if the focus list is not empty (this would restrict them improperly)
    (or (not (candidate-in-focus (context ?par))) (candidate-in-focus (context ?par) (label ?zzz) (context 0)))

=>
    ;;; choose ?gen-cand as a hypothesis
    (bind ?*context-counter* (+ ?*context-counter* 1))
    (bind ?depth1 (+ 1 ?depth))
    (if (or ?*print-actions* ?*print-hypothesis*) then
    (printout t "GENERATING CONTEXT " ?*context-counter* " AT DEPTH " ?depth1 ", SON OF CONTEXT " ?par ", FROM BIVALUE HYPOTHESIS " (print-label ?gen-cand) "." crlf)
    )
    ;;; assert the new context
    (assert (context (name ?*context-counter*) (parent ?par) (depth ?depth1) (generating-cand ?gen-cand)))
    (assert (technique ?*context-counter* BRT))
    ;;; assert the generating value of the new context, with flag 0
    (duplicate ?gen (context ?*context-counter*) (status c-value) (flag 0))
    ;;; remember that ?gen-cand was tried in ?par at phase ?ph
    (assert (TE-tried ?par ?ph ?gen-cand))
)
