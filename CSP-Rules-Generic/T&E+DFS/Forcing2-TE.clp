
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                                  FORCING-T&E
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBALS AND TEMPLATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*F2TE-strategy* = ANTICIPATIVE) ; allowed-values: SIMPLE ANTICIPATIVE ; forthcoming: CLIPS RANDOM

(deftemplate F2TE-strategy
    (slot name (type SYMBOL) (default ANTICIPATIVE) (allowed-values SIMPLE ANTICIPATIVE)) ; forthcoming: CLIPS RANDOM))
)


;;; templates used by all the strategies

(deftemplate F2TE-try-pair
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
    (slot execute (type SYMBOL) (default FALSE) (allowed-values TRUE FALSE))
)


(deftemplate F2TE-simple-tried-pair
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
)


(deftemplate F2TE-bivalue-pair-simple-result
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
    (multislot common-deleted-cands (default (create$))) ; a list of labels
    (multislot c-values-added-to-cont1  (default (create$))) ; a list of labels
    (multislot c-values-added-to-cont2  (default (create$))) ; a list of labels
    (multislot common-asserted-c-values  (default (create$))) ; a list of labels
    (slot value (type INTEGER) (default 0))
)


;;; template used only for ANTICIPATIVE strategy:

(deftemplate F2TE-bivalue-pair-anticipative-result
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
    (slot anticipative-value (type INTEGER) (default 0))
)



(defglobal ?*F2TE-debug* = FALSE)


(defglobal ?*F2TE-initial-context* = 0)
(defglobal ?*F2TE-first-branch-context* = 1)
(defglobal ?*F2TE-second-branch-context* = 2)
(defglobal ?*F2TE-fused-branch-context* = 3)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT COMPARISON FUNCTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction F2TE-compare-two-branches (?cont0 ?cont1 ?cont2 ?cand1 ?cand2)
    ;;; 1) candidates (both statuses: cand and c-value)
    ;;; find all the candidates (their labels) in ?cont0
    (bind ?cont0-candidates (create$))
    (do-for-all-facts
        ((?cand0 candidate))
        (= ?cand0:context ?cont0)
        (bind ?cont0-candidates (create$ ?cont0-candidates ?cand0:label))
    )
    ;;; find all the candidates (their labels) remaining in ?cont1
    (bind ?cont1-candidates (create$))
    (do-for-all-facts
        ((?cand1 candidate))
        (= ?cand1:context ?cont1)
        (bind ?cont1-candidates (create$ ?cont1-candidates ?cand1:label))
    )
    ;;; find all the candidates (their labels) remaining in ?cont2
    (bind ?cont2-candidates (create$))
    (do-for-all-facts
        ;;; find all candidates remaining in ?cont2
        ((?cand2 candidate))
        (= ?cand2:context ?cont2)
        (bind ?cont2-candidates (create$ ?cont2-candidates ?cand2:label))
    )
    ;;; find the candidates (their labels) that have been deleted from both ?cont1 and ?cont2:
    ;;; (because it's all aboout labels, the candidates that disappeared both as c-values and as cands
    ;;; are those that were eliminated - not those that changed status)
    (bind ?candidates-deleted-in-both-cases (create$))
    (foreach ?cand ?cont0-candidates
        (if (and (not (member$ ?cand ?cont1-candidates)) (not (member$ ?cand ?cont2-candidates)))
            then (bind ?candidates-deleted-in-both-cases (create$ ?candidates-deleted-in-both-cases ?cand))
        )
    )

    ;;; 2) c-values
    ;;; find all the c-values (their labels) in ?cont0
    (bind ?cont0-values (create$))
    (do-for-all-facts
        ((?cand0 candidate))
        (and (= ?cand0:context ?cont0) (eq ?cand0:status c-value))
        (bind ?cont0-values (create$ ?cont0-values ?cand0:label))
    )
    ;;; find all the c-values (their labels) in ?cont1
    (bind ?cont1-values (create$))
    (do-for-all-facts
        ((?cand1 candidate))
        (and (= ?cand1:context ?cont1) (eq ?cand1:status c-value))
        (bind ?cont1-values (create$ ?cont1-values ?cand1:label))
    )
    ;;; find all the c-values (their labels) in ?cont2
    (bind ?cont2-values (create$))
    (do-for-all-facts
        ((?cand2 candidate))
        (and (= ?cand2:context ?cont2) (eq ?cand2:status c-value))
        (bind ?cont2-values (create$ ?cont2-values ?cand2:label))
    )
    ;;; find the c-values (their labels) that have been added to ?cont1:
    (bind ?values-added-to-cont1 (create$))
    (foreach ?cand ?cont1-values
        (if (not (member$ ?cand ?cont0-values))
            then (bind ?values-added-to-cont1 (create$ ?values-added-to-cont1 ?cand))
        )
    )
    ;;; find the c-values (their labels) that have been added to ?cont2:
    (bind ?values-added-to-cont2 (create$))
    (foreach ?cand ?cont2-values
        (if (not (member$ ?cand ?cont0-values))
            then (bind ?values-added-to-cont2 (create$ ?values-added-to-cont2 ?cand))
        )
    )
    ;;; find the c-values (their labels) that have been asserted in both contexts
    (bind ?values-asserted-in-both-cases (set-intersection ?values-added-to-cont1 ?values-added-to-cont2))

    ;;; 3) conclusions
    ;;; This gives the total number of candidates having disappeared as candidates:
    (bind ?value (+ (length$ ?candidates-deleted-in-both-cases) (length$ ?values-asserted-in-both-cases)))
    (assert
        (F2TE-bivalue-pair-simple-result
            (context ?cont0)
            (label1 ?cand1)
            (label2 ?cand2)
            (common-deleted-cands ?candidates-deleted-in-both-cases)
            (c-values-added-to-cont1 ?values-added-to-cont1)
            (c-values-added-to-cont2 ?values-added-to-cont2)
            (common-asserted-c-values ?values-asserted-in-both-cases)
            (value ?value)
        )
    )
    (if ?*F2TE-debug* then (printout t "Simple value of " ?cand1 ", " ?cand2 " = " ?value crlf))
    (return ?value)
)



(deffunction F2TE-compare-initial-and-anticipated-contexts (?cont0 ?cont3 ?cand1 ?cand2)
    ;;; 1) candidates (both statuses: cand and c-value
    ;;; find all the candidates (their labels) in ?cont0
    (bind ?cont0-candidates (create$))
    (do-for-all-facts
        ((?cand0 candidate))
        (= ?cand0:context ?cont0)
        (bind ?cont0-candidates (create$ ?cont0-candidates ?cand0:label))
    )
    ;;; find all the candidates (their labels) remaining in ?cont3
    (bind ?cont3-candidates (create$))
    (do-for-all-facts
        ((?cand3 candidate))
        (= ?cand3:context ?cont3)
        (bind ?cont3-candidates (create$ ?cont3-candidates ?cand3:label))
    )
    ;;; find the candidates (their labels) that have been deleted in ?cont3:
    (bind ?candidates-deleted-in-cont3 (create$))
    (foreach ?cand ?cont0-candidates
        (if (not (member$ ?cand ?cont3-candidates)) then
            (bind ?candidates-deleted-in-cont3 (create$ ?candidates-deleted-in-cont3 ?cand))
        )
    )

    ;;; 2) c-values
    ;;; find all the c-values (their labels) in ?cont0
    (bind ?cont0-values (create$))
    (do-for-all-facts
        ((?cand0 candidate))
        (and (= ?cand0:context ?cont0) (eq ?cand0:status c-value))
        (bind ?cont0-values (create$ ?cont0-values ?cand0:label))
    )
    ;;; find all the c-values (their labels) in ?cont3
    (bind ?cont3-values (create$))
    (do-for-all-facts
        ((?cand3 candidate))
        (and (= ?cand3:context ?cont3) (eq ?cand3:status c-value))
        (bind ?cont3-values (create$ ?cont3-values ?cand3:label))
    )
    ;;; find the c-values (their labels) that have been added to ?cont3:
    (bind ?values-added-to-cont3 (create$))
    (foreach ?cand ?cont3-values
        (if (not (member$ ?cand ?cont0-values))
            then (bind ?values-added-to-cont3 (create$ ?values-added-to-cont3 ?cand))
        )
    )

    ;;; 3) conclusions
    ;;; This gives the total number of candidates having disappeared as candidates:
    (bind ?anticipated-value (+ (length$ ?candidates-deleted-in-cont3) (length$ ?values-added-to-cont3)))
    (if ?*F2TE-debug* then (printout t "Anticipative value of " ?cand1 ", " ?cand2 " = " ?anticipated-value crlf))
    (return ?anticipated-value)
)



(deffunction F2TE-apply-chosen-pair (?cont0 ?F2TE-bivalue-pair-simple-result)
    ;;; ?F2TE-bivalue-pair-simple-result is supposed to be a F2TE-bivalue-pair-simple-result template.
    ;;; Eliminate from ?cont0 the candidates (defined by their labels) deleted in both branches:
    (do-for-all-facts
        ((?cand candidate))
        (and (= ?cand:context ?cont0)
            (member$ ?cand:label (fact-slot-value ?F2TE-bivalue-pair-simple-result common-deleted-cands))
        )
        (retract ?cand)
    )
    ;;; and add to ?cont0 the candidates (defined by their labels) asserted in the two branches:
    (do-for-all-facts
        ((?cand candidate))
        (and (= ?cand:context ?cont0)
            (eq ?cand:status cand)
            (member$ ?cand:label (fact-slot-value ?F2TE-bivalue-pair-simple-result common-asserted-c-values))
        )
        (modify ?cand (status c-value))
    )

    ;;; restore initial print options:
    (restore-print-options)
    
    ;;; print what has been done and then the resulting resolution state
    (bind ?cand1 (fact-slot-value ?F2TE-bivalue-pair-simple-result label1))
    (bind ?cand2 (fact-slot-value ?F2TE-bivalue-pair-simple-result label2))
    (bind ?candidates-deleted-in-both-cases (fact-slot-value ?F2TE-bivalue-pair-simple-result common-deleted-cands))
    (bind ?nb-deleted (length$ ?candidates-deleted-in-both-cases))
    (bind ?values-added-to-cont1 (fact-slot-value ?F2TE-bivalue-pair-simple-result c-values-added-to-cont1))
    (bind ?nb-added-to-cont1 (length$ ?values-added-to-cont1))
    (bind ?values-added-to-cont2 (fact-slot-value ?F2TE-bivalue-pair-simple-result c-values-added-to-cont2))
    (bind ?nb-added-to-cont2 (length$ ?values-added-to-cont2))
    (bind ?values-asserted-in-both-cases (fact-slot-value ?F2TE-bivalue-pair-simple-result common-asserted-c-values))
    (bind ?nb-asserted-in-both-cases (length$ ?values-asserted-in-both-cases))

    (printout t crlf)
    (printout t "FORCING-T&E(" ?*rating-type* ") applied to bivalue candidates " (print-label ?cand1) " and " (print-label ?cand2) " : " crlf)
    (printout t ".... " ?nb-added-to-cont1 " values decided by " (print-label ?cand1) " : ")
    (print-list-of-labels ?values-added-to-cont1)
    (printout t crlf)
    (printout t ".... " ?nb-added-to-cont2 " values decided by " (print-label ?cand2) " : ")
    (print-list-of-labels ?values-added-to-cont2)
    (printout t crlf)

    (printout t "===> " ?nb-asserted-in-both-cases " values decided in both cases: ")
    (print-list-of-labels ?values-asserted-in-both-cases)
    (printout t crlf)
    (printout t "===> " ?nb-deleted " candidates eliminated in both cases: ")
    (print-list-of-labels ?candidates-deleted-in-both-cases)
    (printout t crlf)
    (printout t crlf)
    (printout t "CURRENT RESOLUTION STATE: " crlf)
    (print-current-resolution-state-in-context ?cont0)
    
    ;;; clean contexts, if any remaining
    (do-for-all-facts ((?cont context)) (neq ?cont:name 0) (retract ?cont))
    
    ;;; return the score of this pair
    (return ?nb-deleted)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; USER FUNCTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction apply-F2TE-to-bivalue-pair (?cand1 ?cand2 ?execute)
    ;;; This function is applied in context 0, in the current resolution  state.
    ;;; It can only be used after a first application of some "solve" or "init" function
    ;;; Notice that (bivalue 0 ?cand1 ?cand2 ?csp) is NOT checked directly by this function
    ;;; But, if this condition is not satisfied, nothing happens.

    ;;; mute the printing
    (mute-print-options)
    ;;; assert the condition for creating a new context for each of the two candidates and for trying them in parallel:
    (assert (F2TE-try-pair (context ?*F2TE-initial-context*) (label1 ?cand1) (label2 ?cand2) (execute ?execute)))
    (run)
)



(deffunction apply-F2TE-to-all-bivalue-pairs (?execute)
    ;;; This function is applied in context 0, in the current resolution  state.
    ;;; It can only be used after a first application of some "solve" or "init" function

    ;;; mute the printing
    (mute-print-options)
    ;;; assert the condition for trying all the bivalue pairs:
    (assert (start-F2TE-for-all-bivalue-pairs ?*F2TE-initial-context* ?execute))
    
    ;;; assert strategy to be used:
    (if (eq ?*F2TE-strategy* SIMPLE) then (assert (F2TE-strategy (name SIMPLE))))
    (if (eq ?*F2TE-strategy* ANTICIPATIVE) then (assert (F2TE-strategy (name ANTICIPATIVE))))
    ;;; the following two strategies are not yet implemented
    ;(if (eq ?*F2TE-strategy* CLIPS) then (assert (F2TE-strategy (name CLIPS))))
    ;(if (eq ?*F2TE-strategy* RANDOM) then (assert (F2TE-strategy (name RANDOM))))
    (run)
)

;;; Abbreviation
(deffunction apply-F2TE-to-pair (?cand1 ?cand2)
    (apply-F2TE-to-bivalue-pair ?cand1 ?cand2 TRUE)
)
(deffunction apply-F2TE() (apply-F2TE-to-all-bivalue-pairs TRUE))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START FORCING-T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule F2TE-start-trying-all-bivalue-pairs
    "try Forcing-TE for all the bivalue pairs, one pair at a time"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F2TE-for-all-bivalue-pairs ?cont ?execute)
    )
    (not (context (name ?contx&~?cont0)))
    ;;; select the different bivalue pairs, only once (even if it is bivalue for multiple csp variables)
    (bivalue ?cont0 ?cand1 ?cand2&:(< ?cand1 ?cand2) ?csp)
    (not (F2TE-simple-tried-pair (context ?cont0) (label1 ?cand1) (label2 ?cand2)))
=>
    (assert
        (F2TE-try-pair (context ?cont0) (label1 ?cand1) (label2 ?cand2) (execute FALSE))
    )
)


(defrule F2TE-start-trying-bivalue-pair-start-two-branches
    "start the two branches of Forcing-TE for a bivalue pair, regardless of whether they should be executed"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (F2TE-try-pair (context ?cont0) (label1 ?cand1) (label2 ?cand2))
    )
    (not (context (name ?contx&~?cont0)))
    ;;; check that the pair is bivalue and that Forcing-TE has not yet been tried for it;
    ;;; (it is ecessary to re-check here in case only one pair is tried
    ;;; in a call from "apply-F2TE-to-bivalue-pair")
    (bivalue ?cont0 ?cand1 ?cand2&:(< ?cand1 ?cand2) ?csp)
    (not (F2TE-simple-tried-pair (context ?cont0) (label1 ?cand1) (label2 ?cand2)))
=>
    (if ?*F2TE-debug* then (printout t "Trying bivalue pair: " ?cand1 ", " ?cand2 crlf))
    ;;; assert the conditions that will start the two alternative contexts:
    (assert (context (name 1) (parent ?cont0) (depth 1) (generating-cand ?cand1)))
    (assert (context (name 2) (parent ?cont0) (depth 1) (generating-cand ?cand2)))
    ;;; These two conditions are now enough for the context initialisation rules to apply
    ;;; and for normal resolution rules to be applied in the two contexts.
    ;;; From which point the following rule will be applied.
)


(defrule F2TE-compare-two-branches-and-evaluate-pair
    "Compare Forcing-TE contexts for a bivalue pair.
    When this rule is applied, the two contexts have been fully explored.
    If Forcing-TE is to be applied to the pair, then assert it as the chosen one."
    (declare (salience ?*level1-generate-context-salience*))
    (logical (context (name ?cont0&0)))
    (F2TE-try-pair (context ?cont0) (label1 ?cand1) (label2 ?cand2) (execute ?execute))
    (context (name 1) (parent ?cont0) (depth 1) (generating-cand ?cand1))
    (context (name 2) (parent ?cont0) (depth 1) (generating-cand ?cand2))
=>
    ;;; compare the two branches:
    (F2TE-compare-two-branches ?cont0 1 2 ?cand1 ?cand2)
    ;;; at this point, the F2TE-bivalue-pair-simple-result for ?cand1 and ?cand2 has been asserted
    (assert (F2TE-simple-tried-pair (context ?cont0) (label1 ?cand1) (label2 ?cand2)))

    ;;; clean the two contexts, i.e.:
    ;;; - eliminate any candidate in any context other than ?cont0:
    (do-for-all-facts ((?candx candidate)) (not (= ?candx:context ?cont0)) (retract ?candx))
    ;;; - eliminate any context other than ?cont0:
    (do-for-all-facts ((?contx context)) (not (= ?contx:name ?cont0)) (retract ?contx))
    
    ;;; the following will apply in particular when function "apply-F2TE-to-bivalue-pair"
    ;;; is called with ?execute = TRUE
    (if ?execute then (assert (F2TE-chosen-bivalue-pair ?cont0 ?cand1 ?cand2)))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; FIND AND APPLY BEST FORCING-T&E PAIR
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule F2TE-simple-strategy-all-bivalue-pairs-evaluated
    "apply Forcing-TE for the most promising bivalue pair"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F2TE-for-all-bivalue-pairs ?cont0 TRUE)
    )
    (not (F2TE-chosen-bivalue-pair ?cont0 ? ?))
    ;;; make sure all the bivalue pairs have been evaluated according to the simplest evaluation strategy:
    (not (and
        (candidate (context ?cont0) (status cand) (label ?candx))
        (candidate (context ?cont0) (status cand) (label ?candy&:(< ?candx ?candy)))
        (exists (bivalue ?cont0 ?candx ?candy ?cspxy))
        (not (F2TE-bivalue-pair-simple-result (context ?cont0) (label1 ?candx) (label2 ?candy)))
    ))
=>
    (if ?*F2TE-debug* then (printout t "All the bivalue pairs have been evaluated for the simple strategy." crlf))
    (assert (F2TE-all-bivalue-pairs-evaluated-for-simple-strategy ?cont0))
)



(defrule F2TE-anticipative-strategy-all-bivalue-pairs-evaluated
    "apply Forcing-TE for the most promising bivalue pair"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F2TE-for-all-bivalue-pairs ?cont0 TRUE)
    )
    (not (context (name ?contx&~?cont0)))
    (not (F2TE-chosen-bivalue-pair ?cont0 ? ?))
    ;;; make sure all the bivalue pairs have been evaluated according to the simple evaluation strategy:
    (F2TE-all-bivalue-pairs-evaluated-for-simple-strategy ?cont0)
    ;;; make sure all the bivalue pairs have been evaluated according to the anticipative evaluation strategy:
    (not (and
        (candidate (context ?cont0) (status cand) (label ?candx))
        (candidate (context ?cont0) (status cand) (label ?candy&:(< ?candx ?candy)))
        (exists (bivalue ?cont0 ?candx ?candy ?cspxy))
        (not (F2TE-bivalue-pair-anticipative-result (context ?cont0) (label1 ?candx) (label2 ?candy)))
    ))

=>
    (if ?*F2TE-debug* then (printout t "All the bivalue pairs have been evaluated for the anticipative strategy." crlf))
    (assert (F2TE-all-bivalue-pairs-evaluated-for-anticipative-strategy ?cont0))
)



(defrule F2TE-simple-strategy-choose-most-promising-bivalue-pair
    "choose the most promising bivalue pair for FTE"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F2TE-for-all-bivalue-pairs ?cont0 TRUE)
    )
    (not (context (name ?contx&~?cont0))) ; useless? <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    (not (F2TE-chosen-bivalue-pair ?cont0 ? ?))
    
    ;;; First, make sure all the bivalue pairs have been evaluated according to the simplest evaluation strategy:
    (F2TE-all-bivalue-pairs-evaluated-for-simple-strategy ?cont0)

    ;;; select the most promising bivalue pair:
    ;(candidate (context ?cont0) (status cand) (label ?cand1))
    ;(candidate (context ?cont0) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
    (F2TE-strategy (name SIMPLE))
    (F2TE-bivalue-pair-simple-result (context ?cont0) (label1 ?cand1) (label2 ?cand2) (value ?val12))
    (not (F2TE-bivalue-pair-simple-result (context ?cont0) (value ?valxy&:(> ?valxy ?val12))))
=>
    (assert (F2TE-chosen-bivalue-pair ?cont0 ?cand1 ?cand2))
)


(defrule F2TE-anticipative-strategy-choose-most-promising-bivalue-pair
    "choose the most promising bivalue pair for FTE"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F2TE-for-all-bivalue-pairs ?cont0 TRUE)
    )
    (not (context (name ?contx&~?cont0))) ; useless? <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    (not (F2TE-chosen-bivalue-pair ?cont0 ? ?))
    
    ;;; First, make sure all the bivalue pairs have been evaluated according to the simple strategy:
    (F2TE-all-bivalue-pairs-evaluated-for-simple-strategy ?cont0)
    ;(candidate (context ?cont0) (status cand) (label ?cand1))
    ;(candidate (context ?cont0) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
    (F2TE-strategy (name ANTICIPATIVE))
    ;;; make sure all the bivalue pairs have been evaluated according to the anticipative strategy:
    (F2TE-all-bivalue-pairs-evaluated-for-anticipative-strategy ?cont0)
    
    ;;; now, choose the best pair
    (F2TE-bivalue-pair-simple-result
        (context ?cont0)
        (label1 ?cand1)
        (label2 ?cand2)
        (value ?value12)
    )
    (F2TE-bivalue-pair-anticipative-result
        (context ?cont0)
        (label1 ?cand1)
        (label2 ?cand2)
        (anticipative-value ?antval12)
    )
    (not (F2TE-bivalue-pair-anticipative-result
            (context ?cont0) (label1 ?candx) (label2 ?candy) (anticipative-value ?antvalxy&:(> ?antvalxy ?antval12))
        )
    )
    ;;; make sure that, if there are other pairs with the same anticipative value,
    ;;; then a pair with the largest simple value is chosen:
    (forall
        (F2TE-bivalue-pair-anticipative-result
            (context ?cont0) (label1 ?candx1) (label2 ?candy1&:(or (neq ?candx1 ?cand1) (neq ?candy1 ?cand2))) (anticipative-value ?antvalx1y1&:(= ?antvalx1y1 ?antval12))
        )
        (not
            (F2TE-bivalue-pair-simple-result
                (context ?cont0)
                (label1 ?candx1)
                (label2 ?candy1)
                (value ?valueuv&:(> ?valueuv ?value12))
            )
        )
    )
=>
    (assert (F2TE-chosen-bivalue-pair ?cont0 ?cand1 ?cand2))
)



(defrule F2TE-apply-chosen-bivalue-pair
    "apply Forcing-TE for the most promising bivalue pair"
    (declare (salience ?*level2-generate-context-salience*))
    (logical (context (name ?cont0&0)))
    (F2TE-chosen-bivalue-pair ?cont0 ?cand1 ?cand2)
    ?F2TE-bivalue-pair-simple-result <- (F2TE-bivalue-pair-simple-result (context ?cont0) (label1 ?cand1) (label2 ?cand2))
=>
    ;;; restore initial print options:
    ; (restore-print-options)
    ;;; and apply the results:
    (F2TE-apply-chosen-pair ?cont0 ?F2TE-bivalue-pair-simple-result)
    
    ;;; clean everything
    (do-for-all-facts
        ((?fact start-F2TE-for-all-bivalue-pairs F2TE-try-pair F2TE-simple-tried-pair F2TE-bivalue-pair-simple-result F2TE-all-bivalue-pairs-evaluated-for-simple-strategy F2TE-all-bivalue-pairs-evaluated-for-anticipative-strategy
            F2TE-bivalue-pair-anticipative-result F2TE-chosen-bivalue-pair))
        TRUE
        (retract ?fact)
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT INITIALISATION FOR FORCING-T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; These initialisation rules are applied as soon as two new contexts are created

(defrule F2TE-init-two-alternative-contexts-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience*))
    (logical
        (context (name ?par&0))
        (F2TE-try-pair (context ?par&0) (label1 ?cand1) (label2 ?cand2))
        (context (name ?cont1&~?par) (parent ?par) (depth 1) (generating-cand ?cand1))
        (context (name ?cont2&~?par) (parent ?par) (depth 1) (generating-cand ?cand2))
    )
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have already been eliminated
    (duplicate ?cv (context ?cont1) (flag 0))
    (duplicate ?cv (context ?cont2) (flag 0))
)


(defrule F2TE-init-two-alternative-contexts-candidates
    "copy all the candidates from the parent context
    (including those linked to the generating c-value, contrary to ordinary T&E)"
    (declare (salience ?*init-context-salience*))
    (logical
        (context (name ?par&0))
        (F2TE-try-pair (context ?par) (label1 ?cand1) (label2 ?cand2))
        (context (name ?cont1&~?par) (parent ?par) (depth 1) (generating-cand ?cand1))
        (context (name ?cont2&~?par) (parent ?par) (depth 1) (generating-cand ?cand2))
    )
    ?cand <- (candidate (context ?par) (status cand))
=>
    (duplicate ?cand (context ?cont1))
    (duplicate ?cand (context ?cont2))
)


(defrule F2TE-init-two-alternative-contexts-generating-candidates
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F2TE-try-pair (context ?par) (label1 ?cand1) (label2 ?cand2))
    )
    (context (name ?conti&~?par&~3) (parent ?par) (depth 1) (generating-cand ?candi))
    ?gen <- (candidate (context ?par) (status cand) (label ?candi))
=>
    (if (and ?*F2TE-debug* ?*print-actions*) then (printout t "asserting generating candidate as value in context " ?conti crlf))
    ;;; assert the generating value of the new context, with flag 1 (contrary to 0 in ordinary T&E,
    ;;; so that the eliminations due to it can be counted
    (duplicate ?gen (context ?conti) (status c-value) (flag 1))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ONLY IN CASE OF ANTICIPATIVE EVALUATION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; In this version, anticipative evaluations will start only after all the simple evaluations have been done.

(defrule F2TE-create-context-for-further-anticipative-elims
    "Explore the eliminations that would result of applying Forcing-T&E to the two candidates"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (F2TE-try-pair (context ?cont0) (label1 ?cand1) (label2 ?cand2))
        (F2TE-simple-tried-pair (context ?cont0) (label1 ?cand1) (label2 ?cand2))
    )
    (F2TE-all-bivalue-pairs-evaluated-for-simple-strategy ?cont0)
    (F2TE-strategy (name ANTICIPATIVE))
    (not (context (name ?contx&~?cont0)))
    (not (F2TE-anticipative-eval-done ?cont0 ?cand1 ?cand2))
    (not (F2TE-chosen-bivalue-pair ?cont0 ?cand1 ?cand2))
=>
    (if ?*F2TE-debug* then (printout t "elaborating evaluation of pair " ?cand1 ", " ?cand2 crlf))
    (assert (context (name 3) (parent ?cont0) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2)))
    ;;; the last assertion will start initialisation of context 3 and further resolution in it
)


(defrule F2TE-compare-initial-and-anticipated-contexts
    "Compare initial and final Forcing-TE contexts for a bivalue pair.
    When this rule is applied, the two branches and the third context derived
    from their common deletions and assertions have been fully explored."
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?par&0))
        (F2TE-try-pair (context ?par) (label1 ?cand1) (label2 ?cand2) (execute ?execute))
        (F2TE-simple-tried-pair (context ?par) (label1 ?cand1) (label2 ?cand2))
    )
    (context (name 3) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2))
    (F2TE-all-bivalue-pairs-evaluated-for-simple-strategy ?par)
    (F2TE-strategy (name ANTICIPATIVE))
    (not (F2TE-anticipative-eval-done ?par ?cand1 ?cand2))
    (not (F2TE-chosen-bivalue-pair ?par ?cand1 ?cand2))
=>
    ;;; compare the two branches and assert the F2TE-bivalue-pair-anticipative-result:
    (bind ?anticipative-value (F2TE-compare-initial-and-anticipated-contexts ?par 3 ?cand1 ?cand2))
    (assert (F2TE-bivalue-pair-anticipative-result
                (context ?par) (label1 ?cand1) (label2 ?cand2) (anticipative-value ?anticipative-value)
            )
    )
    ;;; at this point, the anticipated bivalue-pair result for ?cand1 and ?cand2 has been computed
    (assert (F2TE-anticipative-eval-done ?par ?cand1 ?cand2))

    ;;; clean the third context, i.e.:
    ;;; - eliminate any candidate in it:
    (do-for-all-facts ((?candx candidate)) (not (= ?candx:context ?par)) (retract ?candx))
    ;;; - eliminate any context other than ?cont0:
    (do-for-all-facts ((?contx context)) (not (= ?contx:name ?par)) (retract ?contx))
)


;;; The following initialisation rules are applied as soon as a third context is created

(defrule F2TE-init-fusion-context-old-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F2TE-try-pair (context ?par) (label1 ?cand1) (label2 ?cand2) (execute ?execute))
        (F2TE-simple-tried-pair (context ?par) (label1 ?cand1) (label2 ?cand2))
        (context (name 3) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2))
    )
    (F2TE-strategy (name ANTICIPATIVE))
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have already been eliminated
    (duplicate ?cv (context 3) (flag 0))
)


(defrule F2TE-init-fusion-context-old-candidates
    "copy all the candidates from the parent context
    (including those linked to the generating c-value, contrary to ordinary T&E)"
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F2TE-try-pair (context ?par) (label1 ?cand1) (label2 ?cand2))
        (F2TE-simple-tried-pair (context ?par) (label1 ?cand1) (label2 ?cand2))
        (context (name 3) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2))
    )
    (F2TE-strategy (name ANTICIPATIVE))
    ?cand <- (candidate (context ?par) (status cand))
=>
    (duplicate ?cand (context 3))
)


(defrule F2TE-init-fusion-context-assert-common-c-values
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F2TE-try-pair (context ?par) (label1 ?cand1) (label2 ?cand2))
        (F2TE-simple-tried-pair (context ?par) (label1 ?cand1) (label2 ?cand2))
        (context (name 3) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2))
    )
    (F2TE-strategy (name ANTICIPATIVE))
    (F2TE-bivalue-pair-simple-result
         (context ?par)
         (label1 ?cand1)
         (label2 ?cand2)
         (common-deleted-cands $?common-deleted-cands)
         (common-asserted-c-values $?common-asserted-c-values)
    )
    ?cval <- (candidate (context 3) (status cand) (label ?lab&:(member$ ?lab ?common-asserted-c-values)))
=>
    (modify ?cval (status c-value))
)


(defrule F2TE-init-fusion-context-delete-common-candidates
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F2TE-try-pair (context ?par) (label1 ?cand1) (label2 ?cand2) (execute ?execute))
        (F2TE-simple-tried-pair (context ?par) (label1 ?cand1) (label2 ?cand2))
        (context (name 3) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2))
    )
    (F2TE-strategy (name ANTICIPATIVE))
    (F2TE-bivalue-pair-simple-result
         (context ?par)
         (label1 ?cand1)
         (label2 ?cand2)
         (common-deleted-cands $?common-deleted-cands)
         (common-asserted-c-values $?common-asserted-c-values)
    )
    ?cand <- (candidate (context 3) (status cand) (label ?lab&:(member$ ?lab ?common-deleted-cands)))
=>
    (retract ?cand)
)


(defrule F2TE-init-fusion-context
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F2TE-try-pair (context ?par) (label1 ?cand1) (label2 ?cand2))
        (F2TE-simple-tried-pair (context ?par) (label1 ?cand1) (label2 ?cand2))
        (context (name 3) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2))
    )
    (F2TE-strategy (name ANTICIPATIVE))
    (F2TE-bivalue-pair-simple-result
         (context ?par)
         (label1 ?cand1)
         (label2 ?cand2)
         (common-deleted-cands $?common-deleted-cands)
         (common-asserted-c-values $?common-asserted-c-values)
    )
=>
    ;;; copy the c-value of the initial context
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context ?par) (eq ?f:status c-value))
        (duplicate ?f (context 3))
    )
    ;;; copy the candidates of the initial context not deleted in the two branches
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context ?par) (eq ?f:status candidate) (not (member$ ?f:label ?common-deleted-cands)))
        (duplicate ?f (context 3))
    )
    ;;; copy as c-values the candidates of the initial contexts asserted in the two branches
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context ?par) (eq ?f:status candidate) (member$ ?f:label ?common-asserted-c-values))
        (duplicate ?f (context 3) (status cand))
    )
)
;;; Doesn't work
(defrule F2TE-init-fusion-context =>)


