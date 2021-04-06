
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              SPECIAL TRIAL & ERROR depth 2
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - April 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-






(defrule TE2-generate-special-context-level2
	(declare (salience ?*level2-generate-special-context-salience*))
    (technique 0 TE2)
    ;;; level 2
	(context (name ?par) (depth ?depth&1))
    ;;; only one context with parent ?par will be considered at a time:
	(not (context (name ?cont&~?par) (parent ?par)))
	;;; each remaining cand of ?par will be re-tried in each phase, but not re-tried in the same phase
	(phase ?par ?ph) 
    ?gen <- (candidate (context ?par) (status cand) (label ?gen-cand))
    (bivalue ?cont ?gen-cand ? ?)
	(not (TE2-tried ?par ?ph ?gen-cand))
=>
	;;; choose ?gen-cand as a hypothesis	
	(bind ?*context-counter* (+ ?*context-counter* 1))
	(bind ?depth1 (+ 1 ?depth))
	(if (or ?*print-actions* ?*print-hypothesis*) then 
		(printout t crlf "GENERATING CONTEXT " ?*context-counter* " AT DEPTH " ?depth1 ", SON OF CONTEXT " ?par ", FROM HYPOTHESIS " ?gen-cand "." crlf)
	)
	;;; assert the new context
	(assert (context (name ?*context-counter*) (parent ?par) (depth ?depth1) (generating-cand ?gen-cand)))
	(assert (technique ?*context-counter* BRT))
	;;; assert the generating value of the new context, with flag 0
	(duplicate ?gen (context ?*context-counter*) (status c-value) (flag 0))
	;;; remember that ?gen-cand was tried in ?par at phase ?ph
	(assert (TE2-tried ?par ?ph ?gen-cand))
)




(defrule TE2-generate-special-context-level1
	(declare (salience ?*level1-generate-special-context-salience*))
    (technique 0 TE2)
    ;;; level 1
	(context (name ?par&0) (depth ?depth&0))
    ;;; only one context other than 0 with parent 0 is considered at a time:
	(not (context (name ?cont&~?par) (parent ?par)))
	;;; each remaining cand of ?par will be re-tried in each phase, but not re-tried in the same phase
	(phase ?par ?ph) 
    ?gen <- (candidate (context ?par) (status cand) (label ?gen-cand))
    (bivalue ?cont ?gen-cand ? ?)
	(not (TE2-tried ?par ?ph ?gen-cand))
    
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    ;;; t-whips should not be used if the focus list is not empty (this would restrict them improperly)
    (or (not (candidate-in-focus (context ?par))) (candidate-in-focus (context ?par) (label ?zzz)))
=>
	;;; choose ?gen-cand as a hypothesis	
	(bind ?*context-counter* (+ ?*context-counter* 1))
	(bind ?depth1 (+ 1 ?depth))
	(if (or ?*print-actions* ?*print-hypothesis*) then 
		(printout t crlf "GENERATING CONTEXT " ?*context-counter* " AT DEPTH " ?depth1 ", SON OF CONTEXT " ?par ", FROM HYPOTHESIS " ?gen-cand "." crlf)
	)
	;;; assert the new context
	(assert (context (name ?*context-counter*) (parent ?par) (depth ?depth1) (generating-cand ?gen-cand)))
	(assert (technique ?*context-counter* BRT))
	;;; assert the generating value of the new context, with flag 0
	(duplicate ?gen (context ?*context-counter*) (status c-value) (flag 0))
	;;; remember that ?gen-cand was tried in ?par at phase ?ph
	(assert (TE2-tried ?par ?ph ?gen-cand))
)









