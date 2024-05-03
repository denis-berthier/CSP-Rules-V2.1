
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                                  FORCING[4]-T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;           January 2006 - February 2022             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBALS AND TEMPLATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*F4TE-strategy* = ANTICIPATIVE) ; allowed-values: SIMPLE ANTICIPATIVE ; forthcoming: CLIPS RANDOM

(deftemplate F4TE-strategy
    (slot name (type SYMBOL) (default ANTICIPATIVE) (allowed-values SIMPLE ANTICIPATIVE)) ; forthcoming: CLIPS RANDOM))
)


;;; templates used by all the strategies

(deftemplate F4TE-try-quadruplet
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
    (slot label3 (type INTEGER))
    (slot label4 (type INTEGER))
    (slot execute (type SYMBOL) (default FALSE) (allowed-values TRUE FALSE))
)


(deftemplate F4TE-simple-tried-quadruplet
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
    (slot label3 (type INTEGER))
    (slot label4 (type INTEGER))
)


(deftemplate F4TE-quadrivalue-quadruplet-simple-result
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
    (slot label3 (type INTEGER))
    (slot label4 (type INTEGER))
    (multislot common-deleted-cands (default (create$))) ; a list of labels
    (multislot c-values-added-to-cont1  (default (create$))) ; a list of labels
    (multislot c-values-added-to-cont2  (default (create$))) ; a list of labels
    (multislot c-values-added-to-cont3  (default (create$))) ; a list of labels
    (multislot c-values-added-to-cont4  (default (create$))) ; a list of labels
    (multislot common-asserted-c-values  (default (create$))) ; a list of labels
    (slot value (type INTEGER) (default 0))
)


;;; template used only for ANTICIPATIVE strategy:

(deftemplate F4TE-quadrivalue-quadruplet-anticipative-result
    (slot context (type INTEGER) (default 0))
    (slot label1 (type INTEGER))
    (slot label2 (type INTEGER))
    (slot label3 (type INTEGER))
    (slot label4 (type INTEGER))
    (slot anticipative-value (type INTEGER) (default 0))
)



(defglobal ?*F4TE-debug* = FALSE)


(defglobal ?*F4TE-initial-context* = 0)
(defglobal ?*F4TE-first-branch-context* = 1)
(defglobal ?*F4TE-second-branch-context* = 2)
(defglobal ?*F4TE-third-branch-context* = 3)
(defglobal ?*F4TE-fourth-branch-context* = 4)
(defglobal ?*F4TE-fused-branch-context* = 5)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT COMPARISON FUNCTIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction F4TE-compare-four-branches (?cont0 ?cont1 ?cont2 ?cont3 ?cont4 ?cand1 ?cand2 ?cand3 ?cand4)
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
    ;;; find all the candidates (their labels) remaining in ?cont4
    (bind ?cont4-candidates (create$))
    (do-for-all-facts
        ;;; find all candidates remaining in ?cont4
        ((?cand4 candidate))
        (= ?cand4:context ?cont4)
        (bind ?cont4-candidates (create$ ?cont4-candidates ?cand4:label))
    )
    ;;; find the candidates (their labels) that have been deleted from ?cont1, ?cont2, ?cant3 and ?cont4:
    ;;; (because it's all aboout labels, the candidates that disappeared both as c-values and as cands
    ;;; are those that were eliminated - not those that changed status)
    (bind ?candidates-deleted-in-four-cases (create$))
    (foreach ?cand ?cont0-candidates
        (if (and
                (not (member$ ?cand ?cont1-candidates))
                (not (member$ ?cand ?cont2-candidates))
                (not (member$ ?cand ?cont3-candidates))
                (not (member$ ?cand ?cont4-candidates))
            )
            then (bind ?candidates-deleted-in-four-cases (create$ ?candidates-deleted-in-four-cases ?cand))
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
    ;;; find all the c-values (their labels) in ?cont4
    (bind ?cont4-values (create$))
    (do-for-all-facts
        ((?cand4 candidate))
        (and (= ?cand4:context ?cont4) (eq ?cand4:status c-value))
        (bind ?cont4-values (create$ ?cont4-values ?cand4:label))
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
    ;;; find the c-values (their labels) that have been added to ?cont4:
    (bind ?values-added-to-cont4 (create$))
    (foreach ?cand ?cont4-values
        (if (not (member$ ?cand ?cont0-values))
            then (bind ?values-added-to-cont4 (create$ ?values-added-to-cont4 ?cand))
        )
    )
    ;;; find the c-values (their labels) that have been asserted in the four contexts
    (bind ?values-asserted-in-four-cases
        (set-intersection
            (set-intersection
                (set-intersection ?values-added-to-cont1 ?values-added-to-cont2)
                ?values-added-to-cont3
            )
            ?values-added-to-cont4
        )
    )

    ;;; 3) conclusions
    ;;; This gives the total number of candidates having disappeared as candidates:
    (bind ?value (+ (length$ ?candidates-deleted-in-four-cases) (length$ ?values-asserted-in-four-cases)))
    (assert
        (F4TE-quadrivalue-quadruplet-simple-result
            (context ?cont0)
            (label1 ?cand1)
            (label2 ?cand2)
            (label3 ?cand3)
            (label4 ?cand4)
            (common-deleted-cands ?candidates-deleted-in-four-cases)
            (c-values-added-to-cont1 ?values-added-to-cont1)
            (c-values-added-to-cont2 ?values-added-to-cont2)
            (c-values-added-to-cont3 ?values-added-to-cont3)
            (c-values-added-to-cont4 ?values-added-to-cont4)
            (common-asserted-c-values ?values-asserted-in-four-cases)
            (value ?value)
        )
    )
    (if ?*F4TE-debug* then (printout t "Simple value of " ?cand1 ", " ?cand2  ", " ?cand3  ", " ?cand4 " = " ?value crlf))
    (return ?value)
)



(deffunction F4TE-compare-initial-and-anticipated-contexts (?cont0 ?cont5 ?cand1 ?cand2 ?cand3 ?cand4)
    ;;; 1) candidates (both statuses: cand and c-value
    ;;; find all the candidates (their labels) in ?cont0
    (bind ?cont0-candidates (create$))
    (do-for-all-facts
        ((?cand0 candidate))
        (= ?cand0:context ?cont0)
        (bind ?cont0-candidates (create$ ?cont0-candidates ?cand0:label))
    )
    ;;; find all the candidates (their labels) remaining in ?cont5
    (bind ?cont5-candidates (create$))
    (do-for-all-facts
        ((?cand5 candidate))
        (= ?cand5:context ?cont5)
        (bind ?cont5-candidates (create$ ?cont5-candidates ?cand5:label))
    )
    ;;; find the candidates (their labels) that have been deleted in ?cont5:
    (bind ?candidates-deleted-in-cont5 (create$))
    (foreach ?cand ?cont0-candidates
        (if (not (member$ ?cand ?cont5-candidates)) then
            (bind ?candidates-deleted-in-cont5 (create$ ?candidates-deleted-in-cont5 ?cand))
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
    ;;; find all the c-values (their labels) in ?cont5
    (bind ?cont5-values (create$))
    (do-for-all-facts
        ((?cand5 candidate))
        (and (= ?cand5:context ?cont5) (eq ?cand5:status c-value))
        (bind ?cont5-values (create$ ?cont5-values ?cand5:label))
    )
    ;;; find the c-values (their labels) that have been added to ?cont5:
    (bind ?values-added-to-cont5 (create$))
    (foreach ?cand ?cont5-values
        (if (not (member$ ?cand ?cont0-values))
            then (bind ?values-added-to-cont5 (create$ ?values-added-to-cont5 ?cand))
        )
    )

    ;;; 3) conclusions
    ;;; This gives the total number of candidates having disappeared as candidates:
    (bind ?anticipated-value (+ (length$ ?candidates-deleted-in-cont5) (length$ ?values-added-to-cont5)))
    (if ?*F4TE-debug* then (printout t "Anticipative value of " ?cand1 ", " ?cand2", " ?cand3 ", " ?cand4 " = " ?anticipated-value crlf))
    (return ?anticipated-value)
)



(deffunction F4TE-apply-chosen-quadruplet (?cont0 ?F4TE-quadrivalue-quadruplet-simple-result)
    ;;; ?F4TE-quadrivalue-quadruplet-simple-result is supposed to be a F4TE-quadrivalue-quadruplet-simple-result template.
    ;;; Eliminate from ?cont0 the candidates (defined by their labels) deleted in the four branches:
    (do-for-all-facts
        ((?cand candidate))
        (and (= ?cand:context ?cont0)
            (member$ ?cand:label (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result common-deleted-cands))
        )
        (retract ?cand)
    )
    ;;; and add to ?cont0 the candidates (defined by their labels) asserted in the four branches:
    (do-for-all-facts
        ((?cand candidate))
        (and (= ?cand:context ?cont0)
            (eq ?cand:status cand)
            (member$ ?cand:label (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result common-asserted-c-values))
        )
        (modify ?cand (status c-value))
    )

    ;;; restore initial print options:
    (restore-print-options)
    
    ;;; print what has been done and then the resulting resolution state
    (bind ?cand1 (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result label1))
    (bind ?cand2 (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result label2))
    (bind ?cand3 (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result label3))
    (bind ?cand4 (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result label4))
    (bind ?candidates-deleted-in-four-cases (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result common-deleted-cands))
    (bind ?nb-deleted (length$ ?candidates-deleted-in-four-cases))
    (bind ?values-added-to-cont1 (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result c-values-added-to-cont1))
    (bind ?nb-added-to-cont1 (length$ ?values-added-to-cont1))
    (bind ?values-added-to-cont2 (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result c-values-added-to-cont2))
    (bind ?nb-added-to-cont2 (length$ ?values-added-to-cont2))
    (bind ?values-added-to-cont3 (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result c-values-added-to-cont3))
    (bind ?nb-added-to-cont3 (length$ ?values-added-to-cont3))
    (bind ?values-added-to-cont4 (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result c-values-added-to-cont4))
    (bind ?nb-added-to-cont4 (length$ ?values-added-to-cont4))
    (bind ?values-asserted-in-four-cases (fact-slot-value ?F4TE-quadrivalue-quadruplet-simple-result common-asserted-c-values))
    (bind ?nb-asserted-in-four-cases (length$ ?values-asserted-in-four-cases))

    (printout t crlf)
    (printout t "FORCING[4]-T&E(" ?*rating-type* ") applied to quadrivalue candidates " (print-label ?cand1) ", " (print-label ?cand2) ", " (print-label ?cand3) " and " (print-label ?cand4) " : " crlf)
    (printout t ".... " ?nb-added-to-cont1 " values decided by " (print-label ?cand1) " : ")
    (print-list-of-labels ?values-added-to-cont1)
    (printout t crlf)
    (printout t ".... " ?nb-added-to-cont2 " values decided by " (print-label ?cand2) " : ")
    (print-list-of-labels ?values-added-to-cont2)
    (printout t crlf)
    (printout t ".... " ?nb-added-to-cont3 " values decided by " (print-label ?cand3) " : ")
    (print-list-of-labels ?values-added-to-cont3)
    (printout t crlf)
    (printout t ".... " ?nb-added-to-cont4 " values decided by " (print-label ?cand4) " : ")
    (print-list-of-labels ?values-added-to-cont4)
    (printout t crlf)

    (printout t "===> " ?nb-asserted-in-four-cases " values decided in the four cases: ")
    (print-list-of-labels ?values-asserted-in-four-cases)
    (printout t crlf)
    (printout t "===> " ?nb-deleted " candidates eliminated in the four cases: ")
    (print-list-of-labels ?candidates-deleted-in-four-cases)
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

(deffunction apply-F4TE-to-quadrivalue-quadruplet (?cand1 ?cand2 ?cand3 ?cand4 ?execute)
    ;;; This function is applied in context 0, in the current resolution  state.
    ;;; It can only be used after a first application of some "solve" or "init" function
    ;;; Notice that (quadrivalue 0 ?cand1 ?cand2 ?cand3 ?cand4 ?csp) is NOT checked directly by this function
    ;;; But, if this condition is not satisfied, nothing happens.

    ;;; mute the printing
    (mute-print-options)
    ;;; assert the condition for creating a new context for each of the three candidates and for trying them in parallel:
    (assert (F4TE-try-quadruplet (context ?*F4TE-initial-context*) (label1 ?cand1) (label2 ?cand2)  (label3 ?cand3) (label4 ?cand4) (execute ?execute)))
    (run)
)



(deffunction apply-F4TE-to-all-quadrivalue-quadruplets (?execute)
    ;;; This function is applied in context 0, in the current resolution  state.
    ;;; It can only be used after a first application of some "solve" or "init" function

    ;;; mute the printing
    (mute-print-options)
    ;;; assert the condition for trying all the trivalue triplets:
    (assert (start-F4TE-for-all-quadrivalue-quadruplets ?*F4TE-initial-context* ?execute))
    
    ;;; assert strategy to be used:
    (if (eq ?*F4TE-strategy* SIMPLE) then (assert (F4TE-strategy (name SIMPLE))))
    (if (eq ?*F4TE-strategy* ANTICIPATIVE) then (assert (F4TE-strategy (name ANTICIPATIVE))))
    ;;; the following three strategies are not yet implemented
    ;(if (eq ?*F4TE-strategy* CLIPS) then (assert (F4TE-strategy (name CLIPS))))
    ;(if (eq ?*F4TE-strategy* RANDOM) then (assert (F4TE-strategy (name RANDOM))))
    (run)
)

;;; Abbreviations:
(deffunction apply-F4TE-to-quadruplet(?cand1 ?cand2 ?cand3 ?cand4)
    (apply-F4TE-to-quadrivalue-quadruplet ?cand1 ?cand2 ?cand3 ?cand4 TRUE)
)
(deffunction apply-F4TE() (apply-F4TE-to-all-quadrivalue-quadruplets TRUE))





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START TRIVALUE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule activate-quadrivalue
    (declare (salience ?*activate-4-value-salience*))
    (logical (play) (context (name ?cont)))
    (not (deactivate quadrivalue))
=>
    (if ?*print-levels* then (printout t Entering_relation_quadrivalue))
    (assert (technique ?cont quadrivalue))
    (bind ?*technique* quadrivalue)
)


(defrule track-quadrivalue
    (declare (salience ?*activate-4-value-salience*))
    ?level <- (technique ?cont quadrivalue)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule quadrivalue
    (declare (salience ?*4-value-salience*))
    (logical
        (technique ?cont quadrivalue)
        (csp-linked ?cont ?cand1 ?cand2&:(< ?cand1 ?cand2) ?csp)
        (csp-linked ?cont ?cand2 ?cand3&:(< ?cand2 ?cand3) ?csp)
        (csp-linked ?cont ?cand3 ?cand4&:(< ?cand3 ?cand4) ?csp)
    )
    (not (csp-linked ?cont ?cand1 ?candx&~?cand2&~?cand3&~?cand4 ?csp))
=>
    (assert (quadrivalue ?cont ?cand1 ?cand2 ?cand3 ?cand4 ?csp))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START FORCING-T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule F4TE-start-trying-all-quadrivalue-quadruplets
    "try Forcing-TE for all the quadrivalue quadruplets, one quadruplet at a time"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F4TE-for-all-quadrivalue-quadruplets ?cont ?execute)
    )
    (not (context (name ?contx&~?cont0)))
    ;;; select the different quadrivalue quadruplets, only once (even if it is quadrivalue for multiple csp variables)
    (quadrivalue ?cont0 ?cand1 ?cand2&:(< ?cand1 ?cand2) ?cand3&:(< ?cand2 ?cand3) ?cand4&:(< ?cand3 ?cand4) ?csp)
    (not (F4TE-simple-tried-quadruplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4)))
=>
    (assert
        (F4TE-try-quadruplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4) (execute FALSE))
    )
)


(defrule F4TE-start-trying-quadrivalue-quadruplet-start-four-branches
    "start the four branches of Forcing-TE for a quadrivalue quadruplet, regardless of whether they should be executed"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (F4TE-try-quadruplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
    )
    (not (context (name ?contx&~?cont0)))
    ;;; check that the quadruplet is quadrivalue and that Forcing-TE has not yet been tried for it;
    ;;; (it is necessary to re-check here in case only one quadruplet is tried
    ;;; in a call from "apply-F4TE-to-quadrivalue-quadruplet")
    (quadrivalue ?cont0 ?cand1 ?cand2&:(< ?cand1 ?cand2) ?cand3&:(< ?cand2 ?cand3) ?cand4&:(< ?cand3 ?cand4) ?csp)
    (not (F4TE-simple-tried-quadruplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4)))
=>
    (if ?*F4TE-debug* then (printout t "Trying quadrivalue quadruplet: " ?cand1 ", " ?cand2 ", " ?cand3 ", " ?cand4 crlf))
    ;;; assert the conditions that will start the four alternative contexts:
    (assert (context (name 1) (parent ?cont0) (depth 1) (generating-cand ?cand1)))
    (assert (context (name 2) (parent ?cont0) (depth 1) (generating-cand ?cand2)))
    (assert (context (name 3) (parent ?cont0) (depth 1) (generating-cand ?cand3)))
    (assert (context (name 4) (parent ?cont0) (depth 1) (generating-cand ?cand4)))
    ;;; These four conditions are now enough for the context initialisation rules to apply
    ;;; and for normal resolution rules to be applied in the four contexts.
    ;;; From which point the following rule will be applied.
)


(defrule F4TE-compare-four-branches-and-evaluate-quadruplet
    "Compare Forcing-TE contexts for a quadrivalue quadruplet.
    When this rule is applied, the four contexts have been fully explored.
    If Forcing-TE is to be applied to the quadruplet, then assert it as the chosen one."
    (declare (salience ?*level1-generate-context-salience*))
    (logical (context (name ?cont0&0)))
    (F4TE-try-quadruplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4) (execute ?execute))
    (context (name 1) (parent ?cont0) (depth 1) (generating-cand ?cand1))
    (context (name 2) (parent ?cont0) (depth 1) (generating-cand ?cand2))
    (context (name 3) (parent ?cont0) (depth 1) (generating-cand ?cand3))
    (context (name 4) (parent ?cont0) (depth 1) (generating-cand ?cand4))
=>
    ;;; compare the four branches:
    (F4TE-compare-four-branches ?cont0 1 2 3 4 ?cand1 ?cand2 ?cand3 ?cand4)
    ;;; at this point, the F4TE-quadrivalue-quadruplet-simple-result for ?cand1, ?cand2,  ?cand3 and ?cand4 has been asserted
    (assert (F4TE-simple-tried-quadruplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4)))

    ;;; clean the four contexts, i.e.:
    ;;; - eliminate any candidate in any context other than ?cont0:
    (do-for-all-facts ((?candx candidate)) (not (= ?candx:context ?cont0)) (retract ?candx))
    ;;; - eliminate any context other than ?cont0:
    (do-for-all-facts ((?contx context)) (not (= ?contx:name ?cont0)) (retract ?contx))
    
    ;;; the following will apply in particular when function "apply-F4TE-to-quadrivalue-quadruplet"
    ;;; is called with ?execute = TRUE
    (if ?execute then (assert (F4TE-chosen-quadrivalue-quadruplet ?cont0 ?cand1 ?cand2 ?cand3 ?cand4)))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; FIND AND APPLY BEST FORCING-T&E QUADRUPLET
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule F4TE-simple-strategy-all-quadrivalue-quadruplets-evaluated
    "apply Forcing-TE for the most promising quadrivalue quadruplet"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F4TE-for-all-quadrivalue-quadruplets ?cont0 TRUE)
    )
    (not (F4TE-chosen-quadrivalue-quadruplet ?cont0 ? ? ? ?))
    ;;; make sure all the quadrivalue quadruplets have been evaluated according to the simplest evaluation strategy:
    (not (and
        (candidate (context ?cont0) (status cand) (label ?candx))
        (candidate (context ?cont0) (status cand) (label ?candy&:(< ?candx ?candy)))
        (candidate (context ?cont0) (status cand) (label ?candz&:(< ?candy ?candz)))
        (candidate (context ?cont0) (status cand) (label ?candt&:(< ?candz ?candt)))
        (exists (trivalue ?cont0 ?candx ?candy ?candz ?candt ?cspxyzt))
        (not (F4TE-quadrivalue-quadruplet-simple-result (context ?cont0) (label1 ?candx) (label2 ?candy) (label3 ?candz) (label4 ?candt)))
    ))
=>
    (if ?*F4TE-debug* then (printout t "All the quadrivalue quadruplets have been evaluated for the simple strategy." crlf))
    (assert (F4TE-all-quadrivalue-quadruplets-evaluated-for-simple-strategy ?cont0))
)



(defrule F4TE-anticipative-strategy-all-quadrivalue-quadruplets-evaluated
    "apply Forcing-TE for the most promising quadrivalue quadruplets"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F4TE-for-all-quadrivalue-quadruplets ?cont0 TRUE)
    )
    (not (context (name ?contx&~?cont0)))
    (not (F4TE-chosen-quadrivalue-quadruplet ?cont0 ? ? ? ?))
    ;;; make sure all the quadrivalue quadruplets have been evaluated according to the simple evaluation strategy:
    (F4TE-all-quadrivalue-quadruplets-evaluated-for-simple-strategy ?cont0)
    ;;; make sure all the quadrivalue quadruplets have been evaluated according to the anticipative evaluation strategy:
    (not (and
        (candidate (context ?cont0) (status cand) (label ?candx))
        (candidate (context ?cont0) (status cand) (label ?candy&:(< ?candx ?candy)))
        (candidate (context ?cont0) (status cand) (label ?candz&:(< ?candy ?candz)))
        (candidate (context ?cont0) (status cand) (label ?candt&:(< ?candz ?candt)))
        (exists (quadrivalue ?cont0 ?candx ?candy ?candz ?candt ?cspxyzt))
        (not (F4TE-quadrivalue-quadruplet-anticipative-result (context ?cont0) (label1 ?candx) (label2 ?candy) (label3 ?candz) (label4 ?candt)))
    ))

=>
    (if ?*F4TE-debug* then (printout t "All the quadrivalue quadruplets have been evaluated for the anticipative strategy." crlf))
    (assert (F4TE-all-quadrivalue-quadruplets-evaluated-for-anticipative-strategy ?cont0))
)



(defrule F4TE-simple-strategy-choose-most-promising-quadrivalue-quadruplet
    "choose the most promising quadrivalue quadruplet for FTE"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F4TE-for-all-quadrivalue-quadruplets ?cont0 TRUE)
    )
    (not (context (name ?contx&~?cont0))) ; useless? <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    (not (F4TE-chosen-quadrivalue-quadruplet ?cont0 ? ? ? ?))
    
    ;;; First, make sure all the quadrivalue quadruplets have been evaluated according to the simplest evaluation strategy:
    (F4TE-all-quadrivalue-quadruplets-evaluated-for-simple-strategy ?cont0)

    ;;; select the most promising quadrivalue quadruplet:
    ;(candidate (context ?cont0) (status cand) (label ?cand1))
    ;(candidate (context ?cont0) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
    (F4TE-strategy (name SIMPLE))
    (F4TE-quadrivalue-quadruplet-simple-result (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4) (value ?val1234))
    (not (F4TE-quadrivalue-quadruplet-simple-result (context ?cont0) (value ?valxyzt&:(> ?valxyzt ?val1234))))
=>
    (assert (F4TE-chosen-quadrivalue-quadruplet ?cont0 ?cand1 ?cand2 ?cand3 ?cand4))
)


(defrule F4TE-anticipative-strategy-choose-most-promising-quadrivalue-quadruplet
    "choose the most promising quadrivalue quadruplet for FTE"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (start-F4TE-for-all-quadrivalue-quadruplets ?cont0 TRUE)
    )
    (not (context (name ?contx&~?cont0))) ; useless? <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    (not (F4TE-chosen-quadrivalue-quadruplet ?cont0 ? ? ? ?))
    
    ;;; First, make sure all the quadrivalue quadruplets have been evaluated according to the simple strategy:
    (F4TE-all-quadrivalue-quadruplets-evaluated-for-simple-strategy ?cont0)
    ;(candidate (context ?cont0) (status cand) (label ?cand1))
    ;(candidate (context ?cont0) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
    (F4TE-strategy (name ANTICIPATIVE))
    ;;; make sure all the trivalue triplets have been evaluated according to the anticipative strategy:
    (F4TE-all-quadrivalue-quadruplets-evaluated-for-anticipative-strategy ?cont0)
    
    ;;; now, choose the best quadruplet
    (F4TE-quadrivalue-quadruplet-simple-result
        (context ?cont0)
        (label1 ?cand1)
        (label2 ?cand2)
        (label3 ?cand3)
        (label4 ?cand4)
        (value ?value1234)
    )
    (F4TE-quadrivalue-quadruplet-anticipative-result
        (context ?cont0)
        (label1 ?cand1)
        (label2 ?cand2)
        (label3 ?cand3)
        (label4 ?cand4)
        (anticipative-value ?antval1234)
    )
    (not (F4TE-quadrivalue-quadruplet-anticipative-result
            (context ?cont0) (label1 ?candx) (label2 ?candy) (label3 ?candz) (label4 ?candt) (anticipative-value ?antvalxyzt&:(> ?antvalxyzt ?antval1234))
        )
    )
    ;;; make sure that, if there are other quadruplets with the same anticipative value,
    ;;; then a quadruplet with the largest simple value is chosen:
    (forall
        (F4TE-quadrivalue-quadruplet-anticipative-result
            (context ?cont0) (label1 ?candx1) (label2 ?candy1) (label3 ?candz1) (label4 ?candt1&:(or (neq ?candx1 ?cand1) (neq ?candy1 ?cand2) (neq ?candz1 ?cand3) (neq ?candt1 ?cand4))) (anticipative-value ?antvalx1y1z1t1&:(= ?antvalx1y1z1t1 ?antval1234))
        )
        (not
            (F4TE-quadrivalue-quadruplet-simple-result
                (context ?cont0)
                (label1 ?candx1)
                (label2 ?candy1)
                (label3 ?candz1)
                (label4 ?candt1)
                (value ?valueuvwi&:(> ?valueuvwi ?value1234))
            )
        )
    )
=>
    (assert (F4TE-chosen-quadrivalue-quadruplet ?cont0 ?cand1 ?cand2 ?cand3 ?cand4))
)



(defrule F4TE-apply-chosen-quadrivalue-quadruplet
    "apply Forcing-TE for the most promising quadrivalue quadruplet"
    (declare (salience ?*level2-generate-context-salience*))
    (logical (context (name ?cont0&0)))
    (F4TE-chosen-quadrivalue-quadruplet ?cont0 ?cand1 ?cand2 ?cand3 ?cand4)
    ?F4TE-quadrivalue-quadruplet-simple-result <- (F4TE-quadrivalue-quadruplet-simple-result (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
=>
    ;;; restore initial print options:
    ; (restore-print-options)
    ;;; and apply the results:
    (F4TE-apply-chosen-quadruplet ?cont0 ?F4TE-quadrivalue-quadruplet-simple-result)
    
    ;;; clean everything
    (do-for-all-facts
        ((?fact start-F4TE-for-all-quadrivalue-quadruplets F4TE-try-quadruplet F4TE-simple-tried-quadruplet F4TE-quadrivalue-quadruplet-simple-result F4TE-all-quadrivalue-quadruplets-evaluated-for-simple-strategy F4TE-all-quadrivalue-quadruplets-evaluated-for-anticipative-strategy
            F4TE-quadrivalue-quadruplet-anticipative-result F4TE-chosen-quadrivalue-quadruplet))
        TRUE
        (retract ?fact)
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT INITIALISATION FOR FORCING-T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; These initialisation rules are applied as soon as four new contexts are created

(defrule F4TE-init-four-alternative-contexts-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience*))
    (logical
        (context (name ?par&0))
        (F4TE-try-quadruplet (context ?par&0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3)(label4 ?cand4))
        (context (name ?cont1&~?par) (parent ?par) (depth 1) (generating-cand ?cand1))
        (context (name ?cont2&~?par) (parent ?par) (depth 1) (generating-cand ?cand2))
        (context (name ?cont3&~?par) (parent ?par) (depth 1) (generating-cand ?cand3))
        (context (name ?cont4&~?par) (parent ?par) (depth 1) (generating-cand ?cand4))
    )
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have already been eliminated
    (duplicate ?cv (context ?cont1) (flag 0))
    (duplicate ?cv (context ?cont2) (flag 0))
    (duplicate ?cv (context ?cont3) (flag 0))
    (duplicate ?cv (context ?cont4) (flag 0))
)


(defrule F4TE-init-four-alternative-contexts-candidates
    "copy all the candidates from the parent context
    (including those linked to the generating c-value, contrary to ordinary T&E)"
    (declare (salience ?*init-context-salience*))
    (logical
        (context (name ?par&0))
        (F4TE-try-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
        (context (name ?cont1&~?par) (parent ?par) (depth 1) (generating-cand ?cand1))
        (context (name ?cont2&~?par) (parent ?par) (depth 1) (generating-cand ?cand2))
        (context (name ?cont3&~?par) (parent ?par) (depth 1) (generating-cand ?cand3))
        (context (name ?cont4&~?par) (parent ?par) (depth 1) (generating-cand ?cand4))
    )
    ?cand <- (candidate (context ?par) (status cand))
=>
    (duplicate ?cand (context ?cont1))
    (duplicate ?cand (context ?cont2))
    (duplicate ?cand (context ?cont3))
    (duplicate ?cand (context ?cont4))
)


(defrule F4TE-init-four-alternative-contexts-generating-candidates
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F4TE-try-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
    )
    (context (name ?conti&~?par&~5) (parent ?par) (depth 1) (generating-cand ?candi))
    ?gen <- (candidate (context ?par) (status cand) (label ?candi))
=>
    (if (and ?*F4TE-debug* ?*print-actions*) then (printout t "asserting generating candidate as value in context " ?conti crlf))
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

(defrule F4TE-create-context-for-further-anticipative-elims
    "Explore the eliminations that would result of applying Forcing-T&E to the four candidates"
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?cont0&0))
        (F4TE-try-quadruplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
        (F4TE-simple-tried-quadruplet (context ?cont0) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
    )
    (F4TE-all-quadrivalue-quadruplets-evaluated-for-simple-strategy ?cont0)
    (F4TE-strategy (name ANTICIPATIVE))
    (not (context (name ?contx&~?cont0)))
    (not (F4TE-anticipative-eval-done ?cont0 ?cand1 ?cand2 ?cand3 ?cand3))
    (not (F4TE-chosen-quadrivalue-quadruplet ?cont0 ?cand1 ?cand2 ?cand3 ?cand4))
=>
    (if ?*F4TE-debug* then (printout t "elaborating evaluation of quadruplet " ?cand1 ", " ?cand2 ", " ?cand3 ", " ?cand4 crlf))
    (assert (context (name 5) (parent ?cont0) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3) (generating-cand4 ?cand4)))
    ;;; the last assertion will start initialisation of context 5 and further resolution in it
)


(defrule F4TE-compare-initial-and-anticipated-contexts
    "Compare initial and final Forcing-TE contexts for a quadrivalue quadruplet.
    When this rule is applied, the four branches and the fifth context derived
    from their common deletions and assertions have been fully explored."
    (declare (salience ?*level1-generate-context-salience*))
    (logical
        (context (name ?par&0))
        (F4TE-try-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4) (execute ?execute))
        (F4TE-simple-tried-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
    )
    (context (name 4) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3) (generating-cand4 ?cand4))
    (F4TE-all-quadrivalue-quadruplets-evaluated-for-simple-strategy ?par)
    (F4TE-strategy (name ANTICIPATIVE))
    (not (F4TE-anticipative-eval-done ?par ?cand1 ?cand2 ?cand3 ?cand4))
    (not (F4TE-chosen-quadrivalue-quadruplet ?par ?cand1 ?cand2 ?cand3 ?cand4))
=>
    ;;; compare the four branches and assert the F4TE-quadrivalue-quadruplet-anticipative-result:
    (bind ?anticipative-value (F4TE-compare-initial-and-anticipated-contexts ?par 5 ?cand1 ?cand2 ?cand3 ?cand4))
    (assert (F4TE-quadrivalue-quadruplet-anticipative-result
                (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4) (anticipative-value ?anticipative-value)
            )
    )
    ;;; at this point, the anticipated quadrivalue-quadruplet result for ?cand1, ?cand2, ?cand3 and ?cand4 has been computed
    (assert (F4TE-anticipative-eval-done ?par ?cand1 ?cand2 ?cand3 ?cand4))

    ;;; clean the fifth context, i.e.:
    ;;; - eliminate any candidate in it:
    (do-for-all-facts ((?candx candidate)) (not (= ?candx:context ?par)) (retract ?candx))
    ;;; - eliminate any context other than ?cont0:
    (do-for-all-facts ((?contx context)) (not (= ?contx:name ?par)) (retract ?contx))
)


;;; The following initialisation rules are applied as soon as a fifth context is created

(defrule F4TE-init-fusion-context-old-c-values
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F4TE-try-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4) (execute ?execute))
        (F4TE-simple-tried-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
        (context (name 5) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3) (generating-cand4 ?cand4))
    )
    (F4TE-strategy (name ANTICIPATIVE))
    ?cv <- (candidate (context ?par) (status c-value))
=>
    ;;; copied c-values are created with flag 0,
    ;;; because all the incompatible candidates have already been eliminated
    (duplicate ?cv (context 5) (flag 0))
)


(defrule F4TE-init-fusion-context-old-candidates
    "copy all the candidates from the parent context
    (including those linked to the generating c-value, contrary to ordinary T&E)"
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F4TE-try-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4) (execute ?execute))
        (F4TE-simple-tried-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
        (context (name 5) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3) (generating-cand4 ?cand4))
    )
    (F4TE-strategy (name ANTICIPATIVE))
    ?cand <- (candidate (context ?par) (status cand))
=>
    (duplicate ?cand (context 5))
)


(defrule F4TE-init-fusion-context-assert-common-c-values
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F4TE-try-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4) (execute ?execute))
        (F4TE-simple-tried-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
        (context (name 5) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3) (generating-cand4 ?cand4))
    )
    (F4TE-strategy (name ANTICIPATIVE))
    (F4TE-quadrivalue-quadruplet-simple-result
         (context ?par)
         (label1 ?cand1)
         (label2 ?cand2)
         (label3 ?cand3)
         (label4 ?cand4)
         (common-deleted-cands $?common-deleted-cands)
         (common-asserted-c-values $?common-asserted-c-values)
    )
    ?cval <- (candidate (context 5) (status cand) (label ?lab&:(member$ ?lab ?common-asserted-c-values)))
=>
    (modify ?cval (status c-value))
)


(defrule F4TE-init-fusion-context-delete-common-candidates
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F4TE-try-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4) (execute ?execute))
        (F4TE-simple-tried-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
        (context (name 4) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3) (generating-cand4 ?cand4))
    )
    (F4TE-strategy (name ANTICIPATIVE))
    (F4TE-quadrivalue-quadruplet-simple-result
         (context ?par)
         (label1 ?cand1)
         (label2 ?cand2)
         (label3 ?cand3)
         (label4 ?cand4)
         (common-deleted-cands $?common-deleted-cands)
         (common-asserted-c-values $?common-asserted-c-values)
    )
    ?cand <- (candidate (context 5) (status cand) (label ?lab&:(member$ ?lab ?common-deleted-cands)))
=>
    (retract ?cand)
)


(defrule F4TE-init-fusion-context
    "copy all the c-values from the parent context"
    (declare (salience ?*init-context-salience-1*))
    (logical
        (context (name ?par&0))
        (F4TE-try-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4) (execute ?execute))
        (F4TE-simple-tried-quadruplet (context ?par) (label1 ?cand1) (label2 ?cand2) (label3 ?cand3) (label4 ?cand4))
        (context (name 5) (parent ?par) (depth 1) (generating-cand ?cand1) (generating-cand2 ?cand2) (generating-cand3 ?cand3) (generating-cand4 ?cand4))
    )
    (F4TE-strategy (name ANTICIPATIVE))
    (F4TE-quadrivalue-quadruplet-simple-result
         (context ?par)
         (label1 ?cand1)
         (label2 ?cand2)
         (label3 ?cand3)
         (label4 ?cand4)
         (common-deleted-cands $?common-deleted-cands)
         (common-asserted-c-values $?common-asserted-c-values)
    )
=>
    ;;; copy the c-value of the initial context
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context ?par) (eq ?f:status c-value))
        (duplicate ?f (context 5))
    )
    ;;; copy the candidates of the initial context not deleted in the four branches
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context ?par) (eq ?f:status candidate) (not (member$ ?f:label ?common-deleted-cands)))
        (duplicate ?f (context 5))
    )
    ;;; copy as c-values the candidates of the initial contexts asserted in the four branches
    (do-for-all-facts
        ((?f candidate))
        (and (eq ?f:context ?par) (eq ?f:status candidate) (member$ ?f:label ?common-asserted-c-values))
        (duplicate ?f (context 5) (status cand))
    )
)
;;; Doesn't work
(defrule F4TE-init-fusion-context =>)


