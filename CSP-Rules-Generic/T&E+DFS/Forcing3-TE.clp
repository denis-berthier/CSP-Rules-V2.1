
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                                  FORCING[3]-T&E
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

(defglobal ?*F3TE-strategy* = ANTICIPATIVE) ; allowed-values: SIMPLE ANTICIPATIVE ; forthcoming: CLIPS RANDOM

(deftemplate F3TE-strategy
    (slot name (type SYMBOL) (default ANTICIPATIVE) (allowed-values SIMPLE ANTICIPATIVE)) ; forthcoming: CLIPS RANDOM))
)


;;; templates used by all the strategies

(deftemplate F3TE-try-triplet
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
    (slot label3 (type INTEGER))
    (slot execute (type SYMBOL) (default FALSE) (allowed-values TRUE FALSE))
)


(deftemplate F3TE-simple-tried-triplet
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
    (slot label3 (type INTEGER))
)


(deftemplate F3TE-trivalue-triplet-simple-result
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
    (slot label3 (type INTEGER))
    (multislot common-deleted-cands (default (create$))) ; a list of labels
    (multislot c-values-added-to-cont1  (default (create$))) ; a list of labels
    (multislot c-values-added-to-cont2  (default (create$))) ; a list of labels
    (multislot c-values-added-to-cont3  (default (create$))) ; a list of labels
    (multislot common-asserted-c-values  (default (create$))) ; a list of labels
    (slot value (type INTEGER) (default 0))
)


;;; template used only for ANTICIPATIVE strategy:

(deftemplate F3TE-trivalue-triplet-anticipative-result
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
    (slot label3 (type INTEGER))
    (slot anticipative-value (type INTEGER) (default 0))
)



(defglobal ?*F3TE-debug* = FALSE)


(defglobal ?*F3TE-initial-context* = 0)
(defglobal ?*F3TE-first-branch-context* = 1)
(defglobal ?*F3TE-second-branch-context* = 2)
(defglobal ?*F3TE-third-branch-context* = 3)
(defglobal ?*F3TE-fused-branch-context* = 4)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT COMPARISON FUNCTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction F3TE-compare-three-branches (?cont0 ?cont1 ?cont2 ?cont3 ?cand1 ?cand2 ?cand3)
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
    ;;; find all the candidates (their labels) remaining in ?cont3
    (bind ?cont3-candidates (create$))
    (do-for-all-facts
        ;;; find all candidates remaining in ?cont3
        ((?cand3 candidate))
        (= ?cand3:context ?cont3)
        (bind ?cont3-candidates (create$ ?cont3-candidates ?cand3:label))
    )
    ;;; find the candidates (their labels) that have been deleted from ?cont1, ?cont2 and ?cont3:
    ;;; (because it's all aboout labels, the candidates that disappeared both as c-values and as cands
    ;;; are those that were eliminated - not those that changed status)
    (bind ?candidates-deleted-in-three-cases (create$))
    (foreach ?cand ?cont0-candidates
        (if (and
                (not (member$ ?cand ?cont1-candidates))
                (not (member$ ?cand ?cont2-candidates))
                (not (member$ ?cand ?cont3-candidates))
            )
            then (bind ?candidates-deleted-in-three-cases (create$ ?candidates-deleted-in-three-cases ?cand))
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
    ;;; find all the c-values (their labels) in ?cont3
    (bind ?cont3-values (create$))
    (do-for-all-facts
        ((?cand3 candidate))
        (and (= ?cand3:context ?cont3) (eq ?cand3:status c-value))
        (bind ?cont3-values (create$ ?cont3-values ?cand3:label))
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
    ;;; find the c-values (their labels) that have been added to ?cont3:
    (bind ?values-added-to-cont3 (create$))
    (foreach ?cand ?cont3-values
        (if (not (member$ ?cand ?cont0-values))
            then (bind ?values-added-to-cont3 (create$ ?values-added-to-cont3 ?cand))
        )
    )
    ;;; find the c-values (their labels) that have been asserted in the three contexts
    (bind ?values-asserted-in-three-cases
        (set-intersection
            (set-intersection ?values-added-to-cont1 ?values-added-to-cont2)
            ?values-added-to-cont3
        )
    )

    ;;; 3) conclusions
    ;;; This gives the total number of candidates having disappeared as candidates:
    (bind ?value (+ (length$ ?candidates-deleted-in-three-cases) (length$ ?values-asserted-in-three-cases)))
    (assert
        (F3TE-trivalue-triplet-simple-result
            (context ?cont0)
            (label1 ?cand1)
            (label2 ?cand2)
            (label3 ?cand3)
            (common-deleted-cands ?candidates-deleted-in-three-cases)
            (c-values-added-to-cont1 ?values-added-to-cont1)
            (c-values-added-to-cont2 ?values-added-to-cont2)
            (c-values-added-to-cont3 ?values-added-to-cont3)
            (common-asserted-c-values ?values-asserted-in-three-cases)
            (value ?value)
        )
    )
    (if ?*F3TE-debug* then (printout t "Simple value of " ?cand1 ", " ?cand2  ", " ?cand3 " = " ?value crlf))
    (return ?value)
)



(deffunction F3TE-compare-initial-and-anticipated-contexts (?cont0 ?cont4 ?cand1 ?cand2 ?cand3)
    ;;; 1) candidates (both statuses: cand and c-value
    ;;; find all the candidates (their labels) in ?cont0
    (bind ?cont0-candidates (create$))
    (do-for-all-facts
        ((?cand0 candidate))
        (= ?cand0:context ?cont0)
        (bind ?cont0-candidates (create$ ?cont0-candidates ?cand0:label))
    )
    ;;; find all the candidates (their labels) remaining in ?cont4
    (bind ?cont4-candidates (create$))
    (do-for-all-facts
        ((?cand4 candidate))
        (= ?cand4:context ?cont4)
        (bind ?cont4-candidates (create$ ?cont4-candidates ?cand4:label))
    )
    ;;; find the candidates (their labels) that have been deleted in ?cont4:
    (bind ?candidates-deleted-in-cont4 (create$))
    (foreach ?cand ?cont0-candidates
        (if (not (member$ ?cand ?cont4-candidates)) then
            (bind ?candidates-deleted-in-cont4 (create$ ?candidates-deleted-in-cont4 ?cand))
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
    ;;; find all the c-values (their labels) in ?cont4
    (bind ?cont4-values (create$))
    (do-for-all-facts
        ((?cand4 candidate))
        (and (= ?cand4:context ?cont4) (eq ?cand4:status c-value))
        (bind ?cont4-values (create$ ?cont4-values ?cand4:label))
    )
    ;;; find the c-values (their labels) that have been added to ?cont4:
    (bind ?values-added-to-cont4 (create$))
    (foreach ?cand ?cont4-values
        (if (not (member$ ?cand ?cont0-values))
            then (bind ?values-added-to-cont4 (create$ ?values-added-to-cont4 ?cand))
        )
    )

    ;;; 3) conclusions
    ;;; This gives the total number of candidates having disappeared as candidates:
    (bind ?anticipated-value (+ (length$ ?candidates-deleted-in-cont4) (length$ ?values-added-to-cont4)))
    (if ?*F3TE-debug* then (printout t "Anticipative value of " ?cand1 ", " ?cand2 ", " ?cand3 " = " ?anticipated-value crlf))
    (return ?anticipated-value)
)



(deffunction F3TE-apply-chosen-triplet (?cont0 ?F3TE-trivalue-triplet-simple-result)
    ;;; ?F3TE-trivalue-triplet-simple-result is supposed to be a F3TE-trivalue-triplet-simple-result template.
    ;;; Eliminate from ?cont0 the candidates (defined by their labels) deleted in the three branches:
    (do-for-all-facts
        ((?cand candidate))
        (and (= ?cand:context ?cont0)
            (member$ ?cand:label (fact-slot-value ?F3TE-trivalue-triplet-simple-result common-deleted-cands))
        )
        (retract ?cand)
    )
    ;;; and add to ?cont0 the candidates (defined by their labels) asserted in the three branches:
    (do-for-all-facts
        ((?cand candidate))
        (and (= ?cand:context ?cont0)
            (eq ?cand:status cand)
            (member$ ?cand:label (fact-slot-value ?F3TE-trivalue-triplet-simple-result common-asserted-c-values))
        )
        (modify ?cand (status c-value))
    )

    ;;; restore initial print options:
    (restore-print-options)
    
    ;;; print what has been done and then the resulting resolution state
    (bind ?cand1 (fact-slot-value ?F3TE-trivalue-triplet-simple-result label1))
    (bind ?cand2 (fact-slot-value ?F3TE-trivalue-triplet-simple-result label2))
    (bind ?cand3 (fact-slot-value ?F3TE-trivalue-triplet-simple-result label3))
    (bind ?candidates-deleted-in-three-cases (fact-slot-value ?F3TE-trivalue-triplet-simple-result common-deleted-cands))
    (bind ?nb-deleted (length$ ?candidates-deleted-in-three-cases))
    (bind ?values-added-to-cont1 (fact-slot-value ?F3TE-trivalue-triplet-simple-result c-values-added-to-cont1))
    (bind ?nb-added-to-cont1 (length$ ?values-added-to-cont1))
    (bind ?values-added-to-cont2 (fact-slot-value ?F3TE-trivalue-triplet-simple-result c-values-added-to-cont2))
    (bind ?nb-added-to-cont2 (length$ ?values-added-to-cont2))
    (bind ?values-added-to-cont3 (fact-slot-value ?F3TE-trivalue-triplet-simple-result c-values-added-to-cont3))
    (bind ?nb-added-to-cont3 (length$ ?values-added-to-cont3))
    (bind ?values-asserted-in-three-cases (fact-slot-value ?F3TE-trivalue-triplet-simple-result common-asserted-c-values))
    (bind ?nb-asserted-in-three-cases (length$ ?values-asserted-in-three-cases))

    (printout t crlf)
    (printout t "FORCING[3]-T&E(" ?*rating-type* ") applied to trivalue candidates " (print-label ?cand1) ", " (print-label ?cand2) " and " (print-label ?cand3) " : " crlf)
    (printout t ".... " ?nb-added-to-cont1 " values decided by " (print-label ?cand1) " : ")
    (print-list-of-labels ?values-added-to-cont1)
    (printout t crlf)
    (printout t ".... " ?nb-added-to-cont2 " values decided by " (print-label ?cand2) " : ")
    (print-list-of-labels ?values-added-to-cont2)
    (printout t crlf)
    (printout t ".... " ?nb-added-to-cont3 " values decided by " (print-label ?cand3) " : ")
    (print-list-of-labels ?values-added-to-cont3)
    (printout t crlf)

    (printout t "===> " ?nb-asserted-in-three-cases " values decided in the three cases: ")
    (print-list-of-labels ?values-asserted-in-three-cases)
    (printout t crlf)
    (printout t "===> " ?nb-deleted " candidates eliminated in the three cases: ")
    (print-list-of-labels ?candidates-deleted-in-three-cases)
    (printout t crlf)
    (printout t crlf)
    (printout t "CURRENT RESOLUTION STATE: " crlf)
    (print-current-resolution-state-in-context ?cont0)
    
    ;;; clean contexts, if any remaining
    (do-for-all-facts ((?cont context)) (neq ?cont:name 0) (retract ?cont))
    
    ;;; return the score of this triplet
    (return ?nb-deleted)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; USER FUNCTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction apply-F3TE-to-trivalue-triplet (?cand1 ?cand2 ?cand3 ?execute)
    ;;; This function is applied in context 0, in the current resolution  state.
    ;;; It can only be used after a first application of some "solve" or "init" function
    ;;; Notice that (trivalue 0 ?cand1 ?cand2 ?cand3 ?csp) is NOT checked directly by this function
    ;;; But, if this condition is not satisfied, nothing happens.

    ;;; mute the printing
    (mute-print-options)
    ;;; assert the condition for creating a new context for each of the three candidates and for trying them in parallel:
    (assert (F3TE-try-triplet (context ?*F3TE-initial-context*) (label1 ?cand1) (label2 ?cand2)  (label3 ?cand3) (execute ?execute)))
    (run)
)



(deffunction apply-F3TE-to-all-trivalue-triplets (?execute)
    ;;; This function is applied in context 0, in the current resolution  state.
    ;;; It can only be used after a first application of some "solve" or "init" function

    ;;; mute the printing
    (mute-print-options)
    ;;; assert the condition for trying all the trivalue triplets:
    (assert (start-F3TE-for-all-trivalue-triplets ?*F3TE-initial-context* ?execute))
    
    ;;; assert strategy to be used:
    (if (eq ?*F3TE-strategy* SIMPLE) then (assert (F3TE-strategy (name SIMPLE))))
    (if (eq ?*F3TE-strategy* ANTICIPATIVE) then (assert (F3TE-strategy (name ANTICIPATIVE))))
    ;;; the following three strategies are not yet implemented
    ;(if (eq ?*F3TE-strategy* CLIPS) then (assert (F3TE-strategy (name CLIPS))))
    ;(if (eq ?*F3TE-strategy* RANDOM) then (assert (F3TE-strategy (name RANDOM))))
    (run)
)

;;; Abbreviations:
(deffunction apply-F3TE-to-triplet(?cand1 ?cand2 ?cand3)
    (apply-F3TE-to-trivalue-triplet ?cand1 ?cand2 ?cand3 TRUE)
)
(deffunction apply-F3TE() (apply-F3TE-to-all-trivalue-triplets TRUE))





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START TRIVALUE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule activate-trivalue
    (declare (salience ?*activate-3-value-salience*))
    (logical (play) (context (name ?cont)))
    (not (deactivate trivalue))
=>
    (if ?*print-levels* then (printout t Entering_relation_trivalue))
    (assert (technique ?cont trivalue))
    (bind ?*technique* trivalue)
)


(defrule track-trivalue
    (declare (salience ?*activate-3-value-salience*))
    ?level <- (technique ?cont trivalue)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule trivalue
    (declare (salience ?*3-value-salience*))
    (logical
        (technique ?cont trivalue)
        (csp-linked ?cont ?cand1 ?cand2&:(< ?cand1 ?cand2) ?csp)
        (csp-linked ?cont ?cand2 ?cand3&:(< ?cand2 ?cand3) ?csp)
    )
    (not (csp-linked ?cont ?cand1 ?candx&~?cand2&~?cand3 ?csp))
=>
    (assert (trivalue ?cont ?cand1 ?cand2 ?cand3 ?csp))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START FORCING-T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule F3TE-start-trying-all-trivalue-triplets
    "try Forcing-TE for all the trivalue triplets, one triplet at a time"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F3TE-for-all-trivalue-triplets ?cont ?execute)
    )
    (not (context (name ?contx&~?cont0)))
    ;;; select the different trivalue triplets, only once (even if it is trivalue for multiple csp variables)
    (trivalue ?cont0 ?cand1 ?cand2&:(< ?cand1 ?cand2) ?cand3&:(< ?cand2 ?cand3) ?csp)
    (not (F3TE-simple-tried-triplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3)))
=>
    (assert
        (F3TE-try-triplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (execute FALSE))
    )
)


(defrule F3TE-start-trying-trivalue-triplet-start-three-branches
    "start the three branches of Forcing-TE for a trivalue triplet, regardless of whether they should be executed"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (F3TE-try-triplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
    )
    (not (context (name ?contx&~?cont0)))
    ;;; check that the triplet is trivalue and that Forcing-TE has not yet been tried for it;
    ;;; (it is ecessary to re-check here in case only one triplet is tried
    ;;; in a call from "apply-F3TE-to-trivalue-triplet")
    (trivalue ?cont0 ?cand1 ?cand2&:(< ?cand1 ?cand2) ?cand3&:(< ?cand2 ?cand3) ?csp)
    (not (F3TE-simple-tried-triplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3)))
=>
    (if ?*F3TE-debug* then (printout t "Trying trivalue triplet: " ?cand1 ", " ?cand2 ", " ?cand3 crlf))
    ;;; assert the conditions that will start the three alternative contexts:
    (assert (context (name 1) (parent ?cont0) (depth 1) (generating-cand ?cand1)))
    (assert (context (name 2) (parent ?cont0) (depth 1) (generating-cand ?cand2)))
    (assert (context (name 3) (parent ?cont0) (depth 1) (generating-cand ?cand3)))
    ;;; These three conditions are now enough for the context initialisation rules to apply
    ;;; and for normal resolution rules to be applied in the three contexts.
    ;;; From which point the following rule will be applied.
)


(defrule F3TE-compare-three-branches-and-evaluate-triplet
    "Compare Forcing-TE contexts for a trivalue triplet.
    When this rule is applied, the three contexts have been fully explored.
    If Forcing-TE is to be applied to the triplet, then assert it as the chosen one."
    (declare (salience ?*level1-generate-context-salience*))
    (logical (context (name ?cont0&0)))
    (F3TE-try-triplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (execute ?execute))
    (context (name 1) (parent ?cont0) (depth 1) (generating-cand ?cand1))
    (context (name 2) (parent ?cont0) (depth 1) (generating-cand ?cand2))
    (context (name 3) (parent ?cont0) (depth 1) (generating-cand ?cand3))
=>
    ;;; compare the three branches:
    (F3TE-compare-three-branches ?cont0 1 2 3 ?cand1 ?cand2 ?cand3)
    ;;; at this point, the F3TE-trivalue-triplet-simple-result for ?cand1, ?cand2 and ?cand3 has been asserted
    (assert (F3TE-simple-tried-triplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3)))

    ;;; clean the three contexts, i.e.:
    ;;; - eliminate any candidate in any context other than ?cont0:
    (do-for-all-facts ((?candx candidate)) (not (= ?candx:context ?cont0)) (retract ?candx))
    ;;; - eliminate any context other than ?cont0:
    (do-for-all-facts ((?contx context)) (not (= ?contx:name ?cont0)) (retract ?contx))
    
    ;;; the following will apply in particular when function "apply-F3TE-to-trivalue-triplet"
    ;;; is called with ?execute = TRUE
    (if ?execute then (assert (F3TE-chosen-trivalue-triplet ?cont0 ?cand1 ?cand2 ?cand3)))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; FIND AND APPLY BEST FORCING-T&E triplet
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule F3TE-simple-strategy-all-trivalue-triplets-evaluated
    "apply Forcing-TE for the most promising trivalue triplet"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F3TE-for-all-trivalue-triplets ?cont0 TRUE)
    )
    (not (F3TE-chosen-trivalue-triplet ?cont0 ? ? ?))
    ;;; make sure all the trivalue triplets have been evaluated according to the simplest evaluation strategy:
    (not (and
        (candidate (context ?cont0) (status cand) (label ?candx))
        (candidate (context ?cont0) (status cand) (label ?candy&:(< ?candx ?candy)))
        (candidate (context ?cont0) (status cand) (label ?candz&:(< ?candy ?candz)))
        (exists (trivalue ?cont0 ?candx ?candy ?candz ?cspxyz))
        (not (F3TE-trivalue-triplet-simple-result (context ?cont0) (label1 ?candx) (label2 ?candy) (label3 ?candz)))
    ))
=>
    (if ?*F3TE-debug* then (printout t "All the trivalue triplets have been evaluated for the simple strategy." crlf))
    (assert (F3TE-all-trivalue-triplets-evaluated-for-simple-strategy ?cont0))
)



(defrule F3TE-anticipative-strategy-all-trivalue-triplets-evaluated
    "apply Forcing-TE for the most promising trivalue triplet"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F3TE-for-all-trivalue-triplets ?cont0 TRUE)
    )
    (not (context (name ?contx&~?cont0)))
    (not (F3TE-chosen-trivalue-triplet ?cont0 ? ? ?))
    ;;; make sure all the trivalue triplets have been evaluated according to the simple evaluation strategy:
    (F3TE-all-trivalue-triplets-evaluated-for-simple-strategy ?cont0)
    ;;; make sure all the trivalue triplets have been evaluated according to the anticipative evaluation strategy:
    (not (and
        (candidate (context ?cont0) (status cand) (label ?candx))
        (candidate (context ?cont0) (status cand) (label ?candy&:(< ?candx ?candy)))
        (candidate (context ?cont0) (status cand) (label ?candz&:(< ?candy ?candz)))
        (exists (trivalue ?cont0 ?candx ?candy ?candz ?cspxyz))
        (not (F3TE-trivalue-triplet-anticipative-result (context ?cont0) (label1 ?candx) (label2 ?candy) (label3 ?candz)))
    ))

=>
    (if ?*F3TE-debug* then (printout t "All the trivalue triplets have been evaluated for the anticipative strategy." crlf))
    (assert (F3TE-all-trivalue-triplets-evaluated-for-anticipative-strategy ?cont0))
)



(defrule F3TE-simple-strategy-choose-most-promising-trivalue-triplet
    "choose the most promising trivalue triplet for FTE"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F3TE-for-all-trivalue-triplets ?cont0 TRUE)
    )
    (not (context (name ?contx&~?cont0))) ; useless? <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    (not (F3TE-chosen-trivalue-triplet ?cont0 ? ? ?))
    
    ;;; First, make sure all the trivalue triplets have been evaluated according to the simplest evaluation strategy:
    (F3TE-all-trivalue-triplets-evaluated-for-simple-strategy ?cont0)

    ;;; select the most promising trivalue triplet:
    ;(candidate (context ?cont0) (status cand) (label ?cand1))
    ;(candidate (context ?cont0) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
    (F3TE-strategy (name SIMPLE))
    (F3TE-trivalue-triplet-simple-result (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (value ?val123))
    (not (F3TE-trivalue-triplet-simple-result (context ?cont0) (value ?valxyz&:(> ?valxyz ?val123))))
=>
    (assert (F3TE-chosen-trivalue-triplet ?cont0 ?cand1 ?cand2 ?cand3))
)


(defrule F3TE-anticipative-strategy-choose-most-promising-trivalue-triplet
    "choose the most promising trivalue triplet for FTE"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F3TE-for-all-trivalue-triplets ?cont0 TRUE)
    )
    (not (context (name ?contx&~?cont0))) ; useless? <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    (not (F3TE-chosen-trivalue-triplet ?cont0 ? ? ?))
    
    ;;; First, make sure all the trivalue triplets have been evaluated according to the simple strategy:
    (F3TE-all-trivalue-triplets-evaluated-for-simple-strategy ?cont0)
    ;(candidate (context ?cont0) (status cand) (label ?cand1))
    ;(candidate (context ?cont0) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
    (F3TE-strategy (name ANTICIPATIVE))
    ;;; make sure all the trivalue triplets have been evaluated according to the anticipative strategy:
    (F3TE-all-trivalue-triplets-evaluated-for-anticipative-strategy ?cont0)
    
    ;;; now, choose the best triplet
    (F3TE-trivalue-triplet-simple-result
        (context ?cont0)
        (label1 ?cand1)
        (label2 ?cand2)
        (label3 ?cand3)
        (value ?value123)
    )
    (F3TE-trivalue-triplet-anticipative-result
        (context ?cont0)
        (label1 ?cand1)
        (label2 ?cand2)
        (label3 ?cand3)
        (anticipative-value ?antval123)
    )
    (not (F3TE-trivalue-triplet-anticipative-result
            (context ?cont0) (label1 ?candx) (label2 ?candy) (label3 ?candz) (anticipative-value ?antvalxyz&:(> ?antvalxyz ?antval123))
        )
    )
    ;;; make sure that, if there are other triplets with the same anticipative value,
    ;;; then a triplet with the largest simple value is chosen:
    (forall
        (F3TE-trivalue-triplet-anticipative-result
            (context ?cont0) (label1 ?candx1) (label2 ?candy1) (label3 ?candz1&:(or (neq ?candx1 ?cand1) (neq ?candy1 ?cand2) (neq ?candz1 ?cand3))) (anticipative-value ?antvalx1y1z1&:(= ?antvalx1y1z1 ?antval123))
        )
        (not
            (F3TE-trivalue-triplet-simple-result
                (context ?cont0)
                (label1 ?candx1)
                (label2 ?candy1)
                (label3 ?candz1)
                (value ?valueuvw&:(> ?valueuvw ?value123))
            )
        )
    )
=>
    (assert (F3TE-chosen-trivalue-triplet ?cont0 ?cand1 ?cand2 ?cand3))
)



(defrule F3TE-apply-chosen-trivalue-triplet
    "apply Forcing-TE for the most promising trivalue triplet"
    (declare (salience ?*level2-generate-context-salience*))
    (logical (context (name ?cont0&0)))
    (F3TE-chosen-trivalue-triplet ?cont0 ?cand1 ?cand2 ?cand3)
    ?F3TE-trivalue-triplet-simple-result <- (F3TE-trivalue-triplet-simple-result (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
=>
    ;;; restore initial print options:
    ; (restore-print-options)
    ;;; and apply the results:
    (F3TE-apply-chosen-triplet ?cont0 ?F3TE-trivalue-triplet-simple-result)
    
    ;;; clean everything
    (do-for-all-facts
        ((?fact start-F3TE-for-all-trivalue-triplets F3TE-try-triplet F3TE-simple-tried-triplet F3TE-trivalue-triplet-simple-result F3TE-all-trivalue-triplets-evaluated-for-simple-strategy F3TE-all-trivalue-triplets-evaluated-for-anticipative-strategy
            F3TE-trivalue-triplet-anticipative-result F3TE-chosen-trivalue-triplet))
        TRUE
        (retract ?fact)
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT INITIALISATION FOR FORCING-T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; These initialisation rules are applied as soon as three new contexts are created

(defrule F3TE-init-three-alternative-contexts-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience*))
    (logical
        (context (name ?par&0))
        (F3TE-try-triplet (context ?par&0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
        (context (name ?cont1&~?par) (parent ?par) (depth 1) (generating-cand ?cand1))
        (context (name ?cont2&~?par) (parent ?par) (depth 1) (generating-cand ?cand2))
        (context (name ?cont3&~?par) (parent ?par) (depth 1) (generating-cand ?cand3))
    )
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have already been eliminated
    (duplicate ?cv (context ?cont1) (flag 0))
    (duplicate ?cv (context ?cont2) (flag 0))
    (duplicate ?cv (context ?cont3) (flag 0))
)


(defrule F3TE-init-three-alternative-contexts-candidates
    "copy all the candidates from the parent context
    (including those linked to the generating c-value, contrary to ordinary T&E)"
    (declare (salience ?*init-context-salience*))
    (logical
        (context (name ?par&0))
        (F3TE-try-triplet (context ?par) (label1 ?cand1) (label2 ?cand2)(label3 ?cand3))
        (context (name ?cont1&~?par) (parent ?par) (depth 1) (generating-cand ?cand1))
        (context (name ?cont2&~?par) (parent ?par) (depth 1) (generating-cand ?cand2))
        (context (name ?cont3&~?par) (parent ?par) (depth 1) (generating-cand ?cand3))
    )
    ?cand <- (candidate (context ?par) (status cand))
=>
    (duplicate ?cand (context ?cont1))
    (duplicate ?cand (context ?cont2))
    (duplicate ?cand (context ?cont3))
)


(defrule F3TE-init-three-alternative-contexts-generating-candidates
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F3TE-try-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
    )
    (context (name ?conti&~?par&~4) (parent ?par) (depth 1) (generating-cand ?candi))
    ?gen <- (candidate (context ?par) (status cand) (label ?candi))
=>
    (if (and ?*F3TE-debug* ?*print-actions*) then (printout t "asserting generating candidate as value in context " ?conti crlf))
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

(defrule F3TE-create-context-for-further-anticipative-elims
    "Explore the eliminations that would result of applying Forcing-T&E to the three candidates"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (F3TE-try-triplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
        (F3TE-simple-tried-triplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
    )
    (F3TE-all-trivalue-triplets-evaluated-for-simple-strategy ?cont0)
    (F3TE-strategy (name ANTICIPATIVE))
    (not (context (name ?contx&~?cont0)))
    (not (F3TE-anticipative-eval-done ?cont0 ?cand1 ?cand2 ?cand3))
    (not (F3TE-chosen-trivalue-triplet ?cont0 ?cand1 ?cand2 ?cand3))
=>
    (if ?*F3TE-debug* then (printout t "elaborating evaluation of triplet " ?cand1 ", " ?cand2 ", " ?cand3 crlf))
    (assert (context (name 4) (parent ?cont0) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3)))
    ;;; the last assertion will start initialisation of context 4 and further resolution in it
)


(defrule F3TE-compare-initial-and-anticipated-contexts
    "Compare initial and final Forcing-TE contexts for a trivalue triplet.
    When this rule is applied, the three branches and the fourth context derived
    from their common deletions and assertions have been fully explored."
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?par&0))
        (F3TE-try-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (execute ?execute))
        (F3TE-simple-tried-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
    )
    (context (name 4) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3))
    (F3TE-all-trivalue-triplets-evaluated-for-simple-strategy ?par)
    (F3TE-strategy (name ANTICIPATIVE))
    (not (F3TE-anticipative-eval-done ?par ?cand1 ?cand2 ?cand3))
    (not (F3TE-chosen-trivalue-triplet ?par ?cand1 ?cand2 ?cand3))
=>
    ;;; compare the three branches and assert the F3TE-trivalue-triplet-anticipative-result:
    (bind ?anticipative-value (F3TE-compare-initial-and-anticipated-contexts ?par 4 ?cand1 ?cand2 ?cand3))
    (assert (F3TE-trivalue-triplet-anticipative-result
                (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (anticipative-value ?anticipative-value)
            )
    )
    ;;; at this point, the anticipated trivalue-triplet result for ?cand1, ?cand2 and ?cand3 has been computed
    (assert (F3TE-anticipative-eval-done ?par ?cand1 ?cand2 ?cand3))

    ;;; clean the fourth context, i.e.:
    ;;; - eliminate any candidate in it:
    (do-for-all-facts ((?candx candidate)) (not (= ?candx:context ?par)) (retract ?candx))
    ;;; - eliminate any context other than ?cont0:
    (do-for-all-facts ((?contx context)) (not (= ?contx:name ?par)) (retract ?contx))
)


;;; The following initialisation rules are applied as soon as a fourth context is created

(defrule F3TE-init-fusion-context-old-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F3TE-try-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (execute ?execute))
        (F3TE-simple-tried-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
        (context (name 4) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3))
    )
    (F3TE-strategy (name ANTICIPATIVE))
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have already been eliminated
    (duplicate ?cv (context 4) (flag 0))
)


(defrule F3TE-init-fusion-context-old-candidates
    "copy all the candidates from the parent context
    (including those linked to the generating c-value, contrary to ordinary T&E)"
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F3TE-try-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (execute ?execute))
        (F3TE-simple-tried-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
        (context (name 4) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3))
    )
    (F3TE-strategy (name ANTICIPATIVE))
    ?cand <- (candidate (context ?par) (status cand))
=>
    (duplicate ?cand (context 4)) ;<=== 4, not 3
)


(defrule F3TE-init-fusion-context-assert-common-c-values
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F3TE-try-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (execute ?execute))
        (F3TE-simple-tried-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
        (context (name 4) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3))
    )
    (F3TE-strategy (name ANTICIPATIVE))
    (F3TE-trivalue-triplet-simple-result
         (context ?par)
         (label1 ?cand1)
         (label2 ?cand2)
         (label3 ?cand3)
         (common-deleted-cands $?common-deleted-cands)
         (common-asserted-c-values $?common-asserted-c-values)
    )
    ?cval <- (candidate (context 4) (status cand) (label ?lab&:(member$ ?lab ?common-asserted-c-values)))
=>
    (modify ?cval (status c-value))
)


(defrule F3TE-init-fusion-context-delete-common-candidates
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F3TE-try-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (execute ?execute))
        (F3TE-simple-tried-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
        (context (name 4) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3))
    )
    (F3TE-strategy (name ANTICIPATIVE))
    (F3TE-trivalue-triplet-simple-result
         (context ?par)
         (label1 ?cand1)
         (label2 ?cand2)
         (label3 ?cand3)
         (common-deleted-cands $?common-deleted-cands)
         (common-asserted-c-values $?common-asserted-c-values)
    )
    ?cand <- (candidate (context 4) (status cand) (label ?lab&:(member$ ?lab ?common-deleted-cands)))
=>
    (retract ?cand)
)


(defrule F3TE-init-fusion-context
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F3TE-try-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (execute ?execute))
        (F3TE-simple-tried-triplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3))
        (context (name 4) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3))
    )
    (F3TE-strategy (name ANTICIPATIVE))
    (F3TE-trivalue-triplet-simple-result
         (context ?par)
         (label1 ?cand1)
         (label2 ?cand2)
         (label3 ?cand3)
         (common-deleted-cands $?common-deleted-cands)
         (common-asserted-c-values $?common-asserted-c-values)
    )
=>
    ;;; copy the c-value of the initial context
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context ?par) (eq ?f:status c-value))
        (duplicate ?f (context 4))
    )
    ;;; copy the candidates of the initial context not deleted in the three branches
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context ?par) (eq ?f:status candidate) (not (member$ ?f:label ?common-deleted-cands)))
        (duplicate ?f (context 4))
    )
    ;;; copy as c-values the candidates of the initial contexts asserted in the three branches
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context ?par) (eq ?f:status candidate) (member$ ?f:label ?common-asserted-c-values))
        (duplicate ?f (context 4) (status cand))
    )
)
;;; Doesn't work
(defrule F3TE-init-fusion-context =>)


