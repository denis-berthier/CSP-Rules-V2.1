
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              GLOBAL VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;             January 2006 - April 2024              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1) GENERAL VARIABLES AND CLIPS GENERAL BEHAVIOUR
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*CSP-Rules-VersionNumber* = 2.1)

;;; compatibility with JESS has been given up
(defglobal ?*inference-engine* = CLIPS)

(defglobal ?*inference-engine-version* =
    (if (eq ?*inference-engine* CLIPS) then ?*Clips-version* else "ERROR")
)

;;; CLIPS default strategy is depth-first; keep it so
;;; All the global variables will be kept by a reset.
;;; This is essential for a good loading of rules and for keeping track of lists of solved instances
(defglobal ?*dummy-for-setting-CLIPS-behaviour* = (progn
    (set-strategy depth)
    (set-reset-globals FALSE)
))

;;; Access to companion repository of examples
(defglobal ?*CSP-EX* = (str-cat ?*CSP-Rules* "CSP-Rules-Examples" ?*Directory-symbol*))





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2) GENERAL GLOBAL VARIABLES RELATED TO INSTANCES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal
    ;;; universal globals for an instance
    ?*main-level* = 0
    ?*level* = 0
    ?*technique* = 0
    ?*nb-facts* = 0
    ?*density* = 100
    
    ?*nb-csp-variables* = 0
    ?*nb-csp-variables-solved* = 0
    ?*nb-candidates* = 0
    ?*nb-g-candidates* = 0
    
    ?*label-links* = (create$)
    ?*label-glabel-glinks* = (create$)
    ?*label-in-glabel* = (create$)
    ?*glabel-in-glabel* = (create$)
    
    ?*csp-links-count* = 0
    ?*links-count* = 0
    ?*csp-links* = (create$)
    ?*links* = (create$)
    
    ?*csp-glinks-count* = 0
    ?*glinks-count* = 0
    ?*csp-glinks* = (create$)
    ?*glinks* = (create$)
    
    ?*blocked-rule-description* = ""
    ?*blocked-rule-eliminations* = ""
    
    ?*context-counter* = 0
    ?*max-depth* = 0
    ?*biTE-context-counter* = 0
    
    ?*solution-found* = FALSE
    ?*add-grid-to-solved-list* = TRUE
    ?*add-instance-to-solved-list* = TRUE
    
    ?*init-instance-time* = 0
    ?*solve-instance-time* = 0
    ?*total-instance-time* = 0
    ?*end-instance-time* = 0
    
    ?*DFS-max-depth* = 0
    
    ;;; globals for signaling patterns present in an instance and their sizes
    ?*has-oddagon* = FALSE
    ?*has-exotic-pattern* = FALSE
    ?*has-special-pattern* = FALSE
    ?*has-special-pattern1* = FALSE
    ?*has-special-pattern2* = FALSE

    ?*ORk-size* = 0
    ?*ORk-sizes-list* = (create$)
    ?*ORk-relations-used* = (create$)
    
    ;;; globals for dealing with solutions as strings
    ?*solution-string* = "" ; used only for DFS
    ?*known-to-be-in-solution* = (create$)
)


(deffunction init-universal-globals ()
    ;;; init universal globals for an instance
    (bind ?*main-level* 0)
    (bind ?*level* 0)
	(bind ?*technique* 0)
	(bind ?*nb-facts* 0)
	(bind ?*density* 100)

	(bind ?*nb-csp-variables* 0)
	(bind ?*nb-csp-variables-solved* 0)
	(bind ?*nb-candidates* 0)
	(bind ?*nb-g-candidates* 0)

    (bind ?*label-links* (create$))
    (bind ?*label-glabel-glinks* (create$))
    (bind ?*label-in-glabel* (create$))
    (bind ?*glabel-in-glabel* (create$))

	(bind ?*csp-links-count* 0)
	(bind ?*links-count* 0)
    (bind ?*csp-links* (create$))
    (bind ?*links* (create$))

	(bind ?*csp-glinks-count* 0)
	(bind ?*glinks-count* 0)
    (bind ?*csp-glinks* (create$))
    (bind ?*glinks* (create$))

    (bind ?*blocked-rule-description* "")
    (bind ?*blocked-rule-eliminations* "")

    (bind ?*solution-found* FALSE)
    
    (bind ?*context-counter* 0)
    (bind ?*max-depth* 0)
    (bind ?*biTE-context-counter* 0)

    (bind ?*init-instance-time* 0)
    (bind ?*solve-instance-time* 0)
    (bind ?*total-instance-time* 0)
    (bind ?*end-instance-time* 0)

    (bind ?*has-oddagon* FALSE)
    (bind ?*has-exotic-pattern* FALSE)
    (bind ?*has-special-pattern* FALSE)
    (bind ?*has-special-pattern1* FALSE)
    (bind ?*has-special-pattern2* FALSE)

    (bind ?*ORk-size* 0)
    (bind ?*ORk-sizes-list* (create$))
    (bind ?*ORk-relations-used* (create$))
    
    (bind  ?*solution-string* "")
    (bind ?*known-to-be-in-solution* (create$))
)


;;; Each application may have additional global variables.
;;; In that case, it must redefine the following init-specific-globals function
(deffunction init-specific-globals ()
    ;;; init universal globals for an instance
    TRUE
)



;;; The following variables are NOT re-initialised by init-universal-globals
;;; and they shouldn't be re-initialised by init-specific-globals,
;;; so that they can be defined manually after (init) and before (solve))
;;; As a result, they MUST be re-initialised manually after each run

;;; Variable used to simulate the effect of non-programmed patterns
;;; used by rule "simulated-elimination-rule", applied before any other rule
(defglobal ?*simulated-eliminations* = (create$))


;;; Variable and function used to avoid testing useless patterns when the solution is already known
(defglobal ?*known-to-be-in-solution* = (create$))
(deffunction known-to-be-in-solution (?label) (member$ ?label ?*known-to-be-in-solution*))



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; VARIABLES USED FOR MULTI SOLUTION INSTANCES OR FOR T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*find-only-one-solution* = TRUE)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3) GLOBAL VARIABLES USED FOR BATCH PROCESSING
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; VARIABLES USED FOR KEEPING TRACK OF MAX AND TOTAL COMPUTATION TIME WHEN SOLVING SETS OF PUZZLES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; total-outer-time includes all read actions and all initializations
;;; total-time includes only resolution time
(defglobal
    ?*puzzle-time* = 0
    ?*total-outer-time* = 0
    ?*total-time* = 0
    ?*max-time* = 0
    ?*print-time* = TRUE
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; VARIABLES USED FOR KEEPING TRACK OF SETS OF SOLUTIONS WHEN SOLVING SETS OF INSTANCES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; generic variables used when studying lists of grids,
;;; to keep track of those that are solved by a given strategy

(defglobal
    ?*save-solutions* = FALSE
    ?*solutions-file* = t
    ?*solved-list* = (create$)
    ?*not-solved-list* = (create$)
    ?*no-sol-list* = (create$)
    ?*multi-sol-list* = (create$)
)


;;; generic variables used to keep track of special patterns:
(defglobal
    ?*exotic-list* = (create$)
    ?*oddagon-list* = (create$)
    ?*special-list* = (create$)
    ?*special-list1* = (create$)
    ?*special-list2* = (create$)
    ?*all-ORk-relations-used-in-list* = (create$)
    ?*all-ORk-relations-used-in-solved-list* = (create$)
)


(deffunction init-generic-lists-for-files ()
    (bind ?*solved-list* (create$))
    (bind ?*not-solved-list* (create$))
    (bind ?*no-sol-list* (create$))
    (bind ?*multi-sol-list* (create$))

    (bind ?*exotic-list* (create$))
    (bind ?*oddagon-list* (create$))
    (bind ?*special-list* (create$))
    (bind ?*special-list1* (create$))
    (bind ?*special-list2* (create$))
    (bind ?*all-ORk-relations-used-in-list* (create$))
    (bind ?*all-ORk-relations-used-in-solved-list* (create$))
)


(deffunction init-specific-lists-for-files () TRUE
    ;;; to be redefined by each application
)


(deffunction init-lists-for-files ()
    (init-generic-lists-for-files)
    (init-specific-lists-for-files)
)

(deffunction add-i-to-universal-lists-for-files (?i)
    (if ?*has-exotic-pattern* then (bind ?*exotic-list* (create$ ?*exotic-list* ?i)))
    (if ?*has-oddagon* then (bind ?*oddagon-list* (create$ ?*oddagon-list* ?i)))
    (if ?*has-special-pattern* then (bind ?*special-list* = (create$ ?*special-list* ?i)))
    (if ?*has-special-pattern1* then (bind ?*special-list1* = (create$ ?*special-list1* ?i)))
    (if ?*has-special-pattern2* then (bind ?*special-list2* = (create$ ?*special-list2* ?i)))
)


(deffunction add-i-to-specific-lists-for-files (?i) TRUE
    ;;; to be redefined by each application
)

(deffunction add-i-to-lists-for-files (?i)
    (add-i-to-universal-lists-for-files ?i)
    (add-i-to-specific-lists-for-files ?i)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 4) GLOBAL VARIABLES USED IN THE CONFIG FILE FOR SELECTING WHICH RULES WILL BE LOADED,
;;; AND THEIR DEFAULT VALUES
;;;
;;; BY DEFAULT, ALL THE RULES IN BRT AND ONLY THESE RULES ARE LOADED; THEY CANNOT BE DISABLED
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 4.1) Selection of global behaviour (optimisation type, blocked, ...)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Type of optimisation for the chain rules (SPEED or MEMORY)
(defglobal ?*chain-rules-optimisation-type* = SPEED)

;;; By default, all the rules can be applied in any context
(defglobal ?*Context-restriction* = FALSE)


;;; In the previous standard behaviour of CSP-Rules, when a pattern could have produced more than one elimination,
;;; the activation of a simpler rule by the first elimination could prevent further potential eliminations.
;;; This default behaviour is now changed:
;;; - for Whips[1],
;;; - for Subsets,
;;; - for bivalue-chains (typed or not), z-chains (typed or not) and t-Whips (typed or not),
;;; - for Oddagons.
;;; However, CSP-Rules allows to revert to the previous behaviour,
;;; independently for each of the above four groups of rules.
;;; Un-comment the relevant line(s) in the configuration file if you want these rules to be "interrupted" as the other rules.

(defglobal ?*blocked-Whips[1]* = TRUE)
(defglobal ?*blocked-Subsets* = TRUE)
(defglobal ?*blocked-chains* = TRUE) ; this applies to both the typed and untyped versions
(defglobal ?*blocked-oddagons* = TRUE)
;;; secondary variables
(defglobal ?*blocked-bivalue-chains* = TRUE)
(defglobal ?*blocked-z-chains* = TRUE)
(defglobal ?*blocked-t-Whips* = TRUE)

;;; The globally "unblocked" behaviour can be reset by setting the following variable to TRUE in the configuration file
(defglobal ?*unblocked-behaviour* = FALSE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 4.2) Selection of rules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Although CSP-Rules doesn't have generic Subsets or g-Subset rules,
;;; it provides the general global variables to manage them, up to size 4
(defglobal ?*Subsets* = FALSE)
(defglobal ?*Subsets[2]* = FALSE)
(defglobal ?*Subsets[3]* = FALSE)
(defglobal ?*Subsets[4]* = FALSE)

(defglobal ?*g-Subsets* = FALSE)
(defglobal ?*g-Subsets[2]* = FALSE)
(defglobal ?*g-Subsets[3]* = FALSE)
(defglobal ?*g-Subsets[4]* = FALSE)

(defglobal ?*Subsets-max-length* = 4)
(defglobal ?*g-Subsets-max-length* = 4)


;;; setting ?*All-generic-chain-rules* allows to load all the "first level" rules.
;;; The first level rules are those defined below
(defglobal ?*All-generic-chain-rules* = FALSE)



;;; Some generic chain rules can now be activated more easily with some length restriction,
;;; without activating longer rules of the same kind;
;;; for instance, Whips[1] and ?*Typed-Partial-Whips[1]*, because they must be active in many cases,
;;; even when longer Whips or Typed-Whips are not.

;;; Some of the following variables for doing so are managed automatically by CSP-Rules
;;; - Typed-Partial-Whips[1] and Typed-Whips[1] are required by several kinds of rules
(defglobal ?*Typed-Partial-Whips[1]* = FALSE)
;;; - Partial-Whips[1] could be used in conjunction with type restrictions (currently not used)
(defglobal ?*Partial-Whips[1]* = FALSE)

;;; and some may now be also managed by the user:
;;; - whips[1], because they are the simplest pattern after BRT:
(defglobal ?*Whips[1]* = FALSE)
;;; - G-Whips[2] because the are universal among patterns with two CSP-Variables:
(defglobal ?*G-Whips[2]* = FALSE)
;;; - g-Braids[3] because they cover some Sudoku specific rules not covered by simpler rules
(defglobal ?*G-Braids[3]* = FALSE)

;;; ORk-whips[1], for simplicity
(defglobal ?*OR2-Whips[1]* = FALSE)
(defglobal ?*OR3-Whips[1]* = FALSE)
(defglobal ?*OR4-Whips[1]* = FALSE)
(defglobal ?*OR5-Whips[1]* = FALSE)
(defglobal ?*OR6-Whips[1]* = FALSE)
(defglobal ?*OR7-Whips[1]* = FALSE)
(defglobal ?*OR8-Whips[1]* = FALSE)


(defglobal ?*Bivalue-Chains* = FALSE)
(defglobal ?*z-Chains* = FALSE)
(defglobal ?*Oddagons* = FALSE)
(defglobal ?*t-Whips* = FALSE)
(defglobal ?*Whips* = FALSE)
(defglobal ?*Braids* = FALSE)
(defglobal ?*Quick-B-Rating* = FALSE)


(defglobal ?*Typed-Bivalue-Chains* = FALSE)
(defglobal ?*Typed-z-Chains* = FALSE)
(defglobal ?*Typed-t-Whips* = FALSE)
(defglobal ?*Typed-Whips* = FALSE)
(defglobal ?*Typed-G-Whips* = FALSE)
(defglobal ?*Typed-Chains* = FALSE)

(defglobal ?*restrict-csp-types-in-typed-chains* = FALSE)
(defglobal ?*allowed-csp-types* = (create$))


(defglobal ?*G-Labels* = FALSE)
(defglobal ?*G-Bivalue-Chains* = FALSE)
(defglobal ?*G2-Whips* = FALSE)
(defglobal ?*G-Whips* = FALSE)
(defglobal ?*G2-Braids* = FALSE)
(defglobal ?*G-Braids* = FALSE)

(defglobal ?*Forcing-Whips* = FALSE)
(defglobal ?*Forcing2-Whips* = FALSE)
(defglobal ?*Forcing3-Whips* = FALSE)
(defglobal ?*Forcing4-Whips* = FALSE)
(defglobal ?*Forcing5-Whips* = FALSE)


(defglobal ?*allow-ORk-splitting* = TRUE)


(defglobal ?*OR2-Forcing-Whips* = FALSE)
(defglobal ?*OR2-Contrad-Whips* = FALSE)
(defglobal ?*OR2-Whips* = FALSE)

(defglobal ?*OR3-Forcing-Whips* = FALSE)
(defglobal ?*OR3-Contrad-Whips* = FALSE)
(defglobal ?*OR3-Whips* = FALSE)

(defglobal ?*OR4-Forcing-Whips* = FALSE)
(defglobal ?*OR4-Contrad-Whips* = FALSE)
(defglobal ?*OR4-Whips* = FALSE)

(defglobal ?*OR5-Forcing-Whips* = FALSE)
(defglobal ?*OR5-Contrad-Whips* = FALSE)
(defglobal ?*OR5-Whips* = FALSE)

(defglobal ?*OR6-Forcing-Whips* = FALSE)
(defglobal ?*OR6-Contrad-Whips* = FALSE)
(defglobal ?*OR6-Whips* = FALSE)

(defglobal ?*OR7-Forcing-Whips* = FALSE)
(defglobal ?*OR7-Contrad-Whips* = FALSE)
(defglobal ?*OR7-Whips* = FALSE)

(defglobal ?*OR8-Forcing-Whips* = FALSE)
(defglobal ?*OR8-Contrad-Whips* = FALSE)
(defglobal ?*OR8-Whips* = FALSE)


(defglobal ?*OR2-Forcing-G-Whips* = FALSE)
(defglobal ?*OR2-Contrad-G-Whips* = FALSE)
(defglobal ?*OR2-G-Whips* = FALSE)

(defglobal ?*OR3-Forcing-G-Whips* = FALSE)
(defglobal ?*OR3-Contrad-G-Whips* = FALSE)
(defglobal ?*OR3-G-Whips* = FALSE)

(defglobal ?*OR4-Forcing-G-Whips* = FALSE)
(defglobal ?*OR4-Contrad-G-Whips* = FALSE)
(defglobal ?*OR4-G-Whips* = FALSE)

(defglobal ?*OR5-Forcing-G-Whips* = FALSE)
(defglobal ?*OR5-Contrad-G-Whips* = FALSE)
(defglobal ?*OR5-G-Whips* = FALSE)

(defglobal ?*OR6-Forcing-G-Whips* = FALSE)
(defglobal ?*OR6-Contrad-G-Whips* = FALSE)
(defglobal ?*OR6-G-Whips* = FALSE)

(defglobal ?*OR7-Forcing-G-Whips* = FALSE)
(defglobal ?*OR7-Contrad-G-Whips* = FALSE)
(defglobal ?*OR7-G-Whips* = FALSE)

(defglobal ?*OR8-Forcing-G-Whips* = FALSE)
(defglobal ?*OR8-Contrad-G-Whips* = FALSE)
(defglobal ?*OR8-G-Whips* = FALSE)


(defglobal ?*ORk-Forcing-Whips-before-ORk-Whips* = TRUE)



(defglobal ?*Forcing-G-Whips* = FALSE)
(defglobal ?*Forcing-Braids* = FALSE)
(defglobal ?*Forcing-G-Braids* = FALSE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 4.3) Selection of chains lengths
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; By default, all the chain rules of any coded length are loaded when their pattern is activated,
;;; but this can be changed by the user.

(defglobal ?*absolute-chains-max-length* = 36)

(defglobal ?*bivalue-chains-max-length* = 20)
(defglobal ?*z-chains-max-length* = 20)
(defglobal ?*oddagons-max-length* = 15)
(defglobal ?*t-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*braids-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*g-bivalue-chains-max-length* = 20)
(defglobal ?*g2whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*g2braids-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*gbraids-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*typed-bivalue-chains-max-length* = 20)
(defglobal ?*typed-z-chains-max-length* = 20)
(defglobal ?*typed-t-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*typed-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*typed-gwhips-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*forcing-whips-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*OR2-forcing-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR2-contrad-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR2-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR2-forcing-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR2-contrad-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR2-gwhips-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*OR3-forcing-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR3-contrad-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR3-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR3-forcing-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR3-contrad-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR3-gwhips-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*OR4-forcing-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR4-contrad-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR4-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR4-forcing-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR4-contrad-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR4-gwhips-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*OR5-forcing-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR5-contrad-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR5-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR5-forcing-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR5-contrad-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR5-gwhips-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*OR6-forcing-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR6-contrad-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR6-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR6-forcing-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR6-contrad-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR6-gwhips-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*OR7-forcing-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR7-contrad-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR7-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR7-forcing-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR7-contrad-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR7-gwhips-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*OR8-forcing-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR8-contrad-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR8-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR8-forcing-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR8-contrad-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*OR8-gwhips-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*all-ORk-forcing-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*all-ORk-contrad-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*all-ORk-whips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*all-ORk-forcing-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*all-ORk-contrad-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*all-ORk-gwhips-max-length* = ?*absolute-chains-max-length*)

(defglobal ?*all-ORk-chains-max-length* = ?*absolute-chains-max-length*)



(defglobal ?*forcing-gwhips-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*forcing-braids-max-length* = ?*absolute-chains-max-length*)
(defglobal ?*forcing-gbraids-max-length* = ?*absolute-chains-max-length*)

;;; By default, partial whips and partial-g-whips are not loaded.
;;; The following variables are for technical purposes only; not available to the user
(defglobal ?*partial-whips-max-length* = 0)
(defglobal ?*partial-gwhips-max-length* = 0)

;;; used by the level tracking rules
(defglobal ?*max-level* = 0)


;;; Maximum lengths can be lowered individually for various types of chains in the application configuration file.
;;; The maximaum length can also be lowered at once for all the chains, by changing the value of the following variable:
(defglobal ?*all-chains-max-length* = ?*absolute-chains-max-length*)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 4.4 GLOBAL VARIABLES RELATED TO BI-WHIPS, BI-BRAIDS, BI-T&E, W*-WHIPS AND W*-BRAIDS
;;; (not in the public release)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; if w*-whips or b*-braids are activated,
;;; one must first activate Bi-Whips or Bi-Braids or Bi-T&E,
;;; unless all the bi-braid contradictions have been pre-computed
(defglobal ?*Bi-Whips* = FALSE)
(defglobal ?*Bi-Braids* = FALSE)
(defglobal ?*pre-computed-all-bi-braid-contrads* = FALSE)

;;; if bi-braids are used, bi-whips of minimum length up to 2 must be used
(defglobal ?*biwhips-max-length* = (min 20 ?*all-chains-max-length*))
(defglobal ?*bibraids-max-length* = (min 20 ?*all-chains-max-length*))

;;; When W*-Whips or B*-Braids are used, ?*ECP** is automatically set to True
;;; but it can be used independently of W*-Whips or B*-Braids
(defglobal ?*ECP** = FALSE)


(defglobal ?*W*-Whips* = FALSE)
(defglobal ?*w*-whips-max-length* = (min 20 ?*all-chains-max-length*))
(defglobal ?*B*-Braids* = FALSE)
(defglobal ?*b*-braids-max-length* = (min 20 ?*all-chains-max-length*))


(defglobal ?*simple-bi-TE* = FALSE)
(defglobal ?*Bi-TE* = FALSE)
(defglobal ?*print-Bi-TE-hypothesis* = TRUE) ; ; used only for bi-T&E; by default, Bi-T&E hypotheses are printed when Bi-T&E is on
(defglobal ?*print-contradictions* = TRUE) ; used for bi-whip, bi-braid or bi-T&E contradictions
;;; used for not testing again pairs that have already been shown incompatible
(defglobal ?*excluded-pairs* = (create$))


;;; ?*all-contrads* is used as the generic form for a list of binary contradictions,
;;; whichever way it was obtained
(defglobal ?*all-contrads* = (create$))

;;; the following are used for specific lists of binary contradictions,
;;; with the name reflecting how they were obtained
;;; not used directly within CSP-Rules
;;; but used for keeping track of calculation in specific examples
(defglobal ?*all-bi-TE-contrads* = (create$))
(defglobal ?*all-bi-TEW1-contrads* = (create$))
(defglobal ?*all-bi-TEW2-contrads* = (create$))
(defglobal ?*all-bi-TEW3-contrads* = (create$))
(defglobal ?*all-bi-TEW4-contrads* = (create$))
(defglobal ?*all-bi-TEW5-contrads* = (create$))
(defglobal ?*all-bi-TEW6-contrads* = (create$))
(defglobal ?*all-bi-TEW7-contrads* = (create$))
(defglobal ?*all-bi-TEW8-contrads* = (create$))
(defglobal ?*all-bi-TEW9-contrads* = (create$))
(defglobal ?*all-bi-TEW10-contrads* = (create$))

(defglobal ?*all-bi-TEB2-contrads* = (create$))
(defglobal ?*all-bi-TEB3-contrads* = (create$))
(defglobal ?*all-bi-TEB4-contrads* = (create$))
(defglobal ?*all-bi-TEB5-contrads* = (create$))
(defglobal ?*all-bi-TEB6-contrads* = (create$))
(defglobal ?*all-bi-TEB7-contrads* = (create$))
(defglobal ?*all-bi-TEB8-contrads* = (create$))
(defglobal ?*all-bi-TEB9-contrads* = (create$))
(defglobal ?*all-bi-TEB10-contrads* = (create$))


(defglobal ?*Forcing-Bi-Whips* = FALSE)
(defglobal ?*Forcing-Bi-Braids* = FALSE)
(defglobal ?*Forcing-bi-TE* = FALSE)

(defglobal ?*W-Whips* = FALSE)
(defglobal ?*B-Braids* = FALSE)
(defglobal ?*w-whips-max-length* = (min 20 ?*all-chains-max-length*))
(defglobal ?*b-braids-max-length* = (min 20 ?*all-chains-max-length*))





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 4.5) Selection of T&E, DFS, Backdoors, Templates...
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*special-TE* = FALSE) ;;; by default, there is no priority in T&E for bivalue candidates
(defglobal ?*restrict-TE-targets* = FALSE) ;;; by default, any candidate can be a target for T&E

(defglobal ?*TE1* = FALSE) ;;; by default, there is no Trial and Error at depth 1
(defglobal ?*TE2* = FALSE) ;;; by default, there is no Trial and Error at depth 2
(defglobal ?*TE3* = FALSE) ;;; by default, there is no Trial and Error at depth 3
(defglobal ?*Forcing-TE* = FALSE) ;;; by default, there is no Forcing Trial and Error
(defglobal ?*Forcing{2}-TE* = FALSE) ;;; by default, there is no Forcing{2} Trial and Error
(defglobal ?*Forcing{3}-TE* = FALSE) ;;; by default, there is no Forcing{3} Trial and Error
(defglobal ?*Forcing{4}-TE* = FALSE) ;;; by default, there is no Forcing{4} Trial and Error


(defglobal ?*Backdoors* = FALSE)
(defglobal ?*Anti-backdoors* = FALSE)
(defglobal ?*Anti-backdoor-pairs* = FALSE)
(defglobal ?*list-of-backdoors* = (create$))
(defglobal ?*list-of-anti-backdoors* = (create$))
(defglobal ?*list-of-anti-backdoor-pairs* = (create$))



(defglobal ?*Templates* = FALSE)
(defglobal ?*templates-max-combinations* = 0)

(defglobal ?*special-DFS* = FALSE) ;;; by default, there is no depth-first search
(defglobal ?*DFS* = FALSE) ;;; by default, there is no depth-first search






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 5) FUNCTIONS FOF ENFORCING THE CONSISTENCY OF USER SELECTION OF RULES AND LENGTHS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 5.1) Enforce consitency of chains lengths selection
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction redefine-all-generic-chains-max-length ()
    ;;; This function only deals with the various user choices of global lengths in the configuration file.
    ;;; Global length choices supersede local ones, for each family of rules.
    ;;; It is only a preliminary to other consistency enforcement rules.
    
    ;;; All the lengths of standard chains are restricted by ?*all-chains-max-length*
    (if (< ?*all-chains-max-length* ?*absolute-chains-max-length*) then
        (bind ?*bivalue-chains-max-length* (min ?*bivalue-chains-max-length* ?*all-chains-max-length*))
        (bind ?*z-chains-max-length* (min ?*z-chains-max-length* ?*all-chains-max-length*))
        (bind ?*oddagons-max-length* (min ?*oddagons-max-length* ?*all-chains-max-length*))
        (bind ?*t-whips-max-length* (min ?*t-whips-max-length* ?*all-chains-max-length*))
        (bind ?*whips-max-length* (min ?*whips-max-length* ?*all-chains-max-length*))
        (bind ?*braids-max-length* (min ?*braids-max-length* ?*all-chains-max-length*))

        (bind ?*g-bivalue-chains-max-length* (min ?*g-bivalue-chains-max-length* ?*all-chains-max-length*))
        (bind ?*g2whips-max-length* (min ?*g2whips-max-length* ?*all-chains-max-length*))
        (bind ?*gwhips-max-length* (min ?*gwhips-max-length* ?*all-chains-max-length*))
        (bind ?*g2braids-max-length* (min ?*g2braids-max-length* ?*all-chains-max-length*))
        (bind ?*gbraids-max-length* (min ?*gbraids-max-length* ?*all-chains-max-length*))

        (bind ?*typed-bivalue-chains-max-length* (min ?*typed-bivalue-chains-max-length* ?*all-chains-max-length*))
        (bind ?*typed-z-chains-max-length* (min ?*typed-z-chains-max-length* ?*all-chains-max-length*))
        (bind ?*typed-t-whips-max-length* (min ?*typed-t-whips-max-length* ?*all-chains-max-length*))
        (bind ?*typed-whips-max-length* (min ?*typed-whips-max-length* ?*all-chains-max-length*))
        (bind ?*typed-gwhips-max-length* (min ?*typed-gwhips-max-length* ?*all-chains-max-length*))
         
        (bind ?*forcing-whips-max-length* (min ?*forcing-whips-max-length* ?*all-chains-max-length*))
        (bind ?*forcing-gwhips-max-length* (min ?*forcing-gwhips-max-length* ?*all-chains-max-length*))
        (bind ?*forcing-braids-max-length* (min ?*forcing-braids-max-length* ?*all-chains-max-length*))
        (bind ?*forcing-gbraids-max-length* (min ?*forcing-gbraids-max-length* ?*all-chains-max-length*))
    )
    
    ;;; All ORk chains and ORk g-chains
    ;;; The lengths of all the ORk chains and ORk g-chains are restricted by ?*all-ORk-chains-max-length*:
    (if (< ?*all-ORk-chains-max-length* ?*absolute-chains-max-length*) then
        (bind ?*all-ORk-forcing-whips-max-length* ?*all-ORk-chains-max-length*)
        (bind ?*all-ORk-contrad-whips-max-length* ?*all-ORk-chains-max-length*)
        (bind ?*all-ORk-whips-max-length* ?*all-ORk-chains-max-length*)
        (bind ?*all-ORk-forcing-gwhips-max-length* ?*all-ORk-chains-max-length*)
        (bind ?*all-ORk-contrad-gwhips-max-length* ?*all-ORk-chains-max-length*)
        (bind ?*all-ORk-gwhips-max-length* ?*all-ORk-chains-max-length*)
    )
    
    
    ;;; All the lengths of ORk-Forcing-Whips are restricted by ?*all-ORk-forcing-whips-max-length*:
    (if (< ?*all-ORk-forcing-whips-max-length* ?*absolute-chains-max-length*) then
        (bind ?*OR2-forcing-whips-max-length* ?*all-ORk-forcing-whips-max-length*)
        (bind ?*OR3-forcing-whips-max-length* ?*all-ORk-forcing-whips-max-length*)
        (bind ?*OR4-forcing-whips-max-length* ?*all-ORk-forcing-whips-max-length*)
        (bind ?*OR5-forcing-whips-max-length* ?*all-ORk-forcing-whips-max-length*)
        (bind ?*OR6-forcing-whips-max-length* ?*all-ORk-forcing-whips-max-length*)
        (bind ?*OR7-forcing-whips-max-length* ?*all-ORk-forcing-whips-max-length*)
        (bind ?*OR8-forcing-whips-max-length* ?*all-ORk-forcing-whips-max-length*)
    )
        
    ;;; All the lengths of ORk-Contrad-Whips are restricted by *all-ORk-contrad-whips-max-length*
    (if (< ?*all-ORk-contrad-whips-max-length* ?*absolute-chains-max-length*) then
        (bind ?*OR2-contrad-whips-max-length* ?*all-ORk-contrad-whips-max-length*)
        (bind ?*OR3-contrad-whips-max-length* ?*all-ORk-contrad-whips-max-length*)
        (bind ?*OR4-contrad-whips-max-length* ?*all-ORk-contrad-whips-max-length*)
        (bind ?*OR5-contrad-whips-max-length* ?*all-ORk-contrad-whips-max-length*)
        (bind ?*OR6-contrad-whips-max-length* ?*all-ORk-contrad-whips-max-length*)
        (bind ?*OR7-contrad-whips-max-length* ?*all-ORk-contrad-whips-max-length*)
        (bind ?*OR8-contrad-whips-max-length* ?*all-ORk-contrad-whips-max-length*)
    )

    ;;; All the lengths of ORk-Whips are restricted by ?*all-ORk-whips-max-length*
    (if (< ?*all-ORk-whips-max-length* ?*absolute-chains-max-length*) then
        (bind ?*OR2-whips-max-length* ?*all-ORk-whips-max-length*)
        (bind ?*OR3-whips-max-length* ?*all-ORk-whips-max-length*)
        (bind ?*OR4-whips-max-length* ?*all-ORk-whips-max-length*)
        (bind ?*OR5-whips-max-length* ?*all-ORk-whips-max-length*)
        (bind ?*OR6-whips-max-length* ?*all-ORk-whips-max-length*)
        (bind ?*OR7-whips-max-length* ?*all-ORk-whips-max-length*)
        (bind ?*OR8-whips-max-length* ?*all-ORk-whips-max-length*)
    )
    
    
    ;;; ORk-g-chains
    ;;; All the lengths of ORk-Forcing-G-Whips are restricted by ?*all-ORk-forcing-gwhips-max-length*:
    (if (< ?*all-ORk-forcing-gwhips-max-length* ?*absolute-chains-max-length*) then
        (bind ?*OR2-forcing-gwhips-max-length* ?*all-ORk-forcing-gwhips-max-length*)
        (bind ?*OR3-forcing-gwhips-max-length* ?*all-ORk-forcing-gwhips-max-length*)
        (bind ?*OR4-forcing-gwhips-max-length* ?*all-ORk-forcing-gwhips-max-length*)
        (bind ?*OR5-forcing-gwhips-max-length* ?*all-ORk-forcing-gwhips-max-length*)
        (bind ?*OR6-forcing-gwhips-max-length* ?*all-ORk-forcing-gwhips-max-length*)
        (bind ?*OR7-forcing-gwhips-max-length* ?*all-ORk-forcing-gwhips-max-length*)
        (bind ?*OR8-forcing-gwhips-max-length* ?*all-ORk-forcing-gwhips-max-length*)
    )
    
    ;;; All the lengths of ORk-Contrad-G-Whips are restricted by *all-ORk-contrad-gwhips-max-length*
    (if (< ?*all-ORk-contrad-gwhips-max-length* ?*absolute-chains-max-length*) then
        (bind ?*OR2-contrad-gwhips-max-length* ?*all-ORk-contrad-gwhips-max-length*)
        (bind ?*OR3-contrad-gwhips-max-length* ?*all-ORk-contrad-gwhips-max-length*)
        (bind ?*OR4-contrad-gwhips-max-length* ?*all-ORk-contrad-gwhips-max-length*)
        (bind ?*OR5-contrad-gwhips-max-length* ?*all-ORk-contrad-gwhips-max-length*)
        (bind ?*OR6-contrad-gwhips-max-length* ?*all-ORk-contrad-gwhips-max-length*)
        (bind ?*OR7-contrad-gwhips-max-length* ?*all-ORk-contrad-gwhips-max-length*)
        (bind ?*OR8-contrad-gwhips-max-length* ?*all-ORk-contrad-gwhips-max-length*)
    )

    ;;; All the lengths of ORk-G-Whips are restricted by ?*all-ORk-gwhips-max-length*
    (if (< ?*all-ORk-gwhips-max-length* ?*absolute-chains-max-length*) then
        (bind ?*OR2-gwhips-max-length* ?*all-ORk-gwhips-max-length*)
        (bind ?*OR3-gwhips-max-length* ?*all-ORk-gwhips-max-length*)
        (bind ?*OR4-gwhips-max-length* ?*all-ORk-gwhips-max-length*)
        (bind ?*OR5-gwhips-max-length* ?*all-ORk-gwhips-max-length*)
        (bind ?*OR6-gwhips-max-length* ?*all-ORk-gwhips-max-length*)
        (bind ?*OR7-gwhips-max-length* ?*all-ORk-gwhips-max-length*)
        (bind ?*OR8-gwhips-max-length* ?*all-ORk-gwhips-max-length*)
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 5.2) Enforce consitency of rules selection (i.e. rules dependencies)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; For pure logical reasons
;;; and in order to respect the definitions of resolution theories in PBCS,
;;; the loading of some rules implies the loading of other rules,
;;; as specified by the following implications.
;;; The following function is used for setting these dependencies before loading.

(deffunction enforce-generic-rules-dependencies ()
    ;;; Function redefine-all-chains-max-length is called before setting all the other dependencies,
    ;;; so as to ensure the priority of the global declarations such as
    ;;; ?*all-chains-max-length*, ?*all-ORk-chains-max-length*
    ;;; ?*all-ORk-forcing-whips-max-length*, ?*all-ORk-contrad-whips-max-length*, ?*all-ORk-whips-max-length*
    ;;; ?*all-ORk-forcing-gwhips-max-length*, ?*all-ORk-contrad-gwhips-max-length* and ?*all-ORk-gwhips-max-length*
    
    ;;; Subsets and gSubsets
    ;;; Finned Fish have no predefined generic variables, but there are some for g-Subsets
    (if ?*g-Subsets* then (bind ?*g-Subsets[4]* TRUE) (bind ?*Subsets* TRUE))
    (if ?*g-Subsets[4]* then (bind ?*g-Subsets[3]* TRUE) (bind ?*Subsets[3]* TRUE))
    (if ?*g-Subsets[3]* then (bind ?*g-Subsets[2]* TRUE) (bind ?*Subsets[3]* TRUE))
    
    ;;; Subsets are not coded generically,
    ;;; but they have pre-defined generic globals, saliences and print nrc functions
    (if ?*Subsets* then (bind ?*Subsets[4]* TRUE))
    (if ?*Subsets[4]* then (bind ?*Subsets[3]* TRUE))
    (if ?*Subsets[3]* then (bind ?*Subsets[2]* TRUE))
    
    
    ;;; All the generic chain-rules
    (if ?*All-generic-chain-rules* then
        (bind ?*Typed-Bivalue-Chains* TRUE)
        (bind ?*Typed-z-Chains* TRUE)
        (bind ?*Typed-t-Whips* TRUE)
        (bind ?*Typed-Whips* TRUE)
        (bind ?*Typed-G-Whips* TRUE)
        (bind ?*Forcing-G-Braids* TRUE) ; which will imply all whips, braids...
        ;;; add those that are not implied by the previous ones:
        (bind ?*Bivalue-Chains* TRUE)
        (bind ?*G-Bivalue-Chains* TRUE)
        (bind ?*z-Chains* TRUE)
        (bind ?*t-Whips* TRUE)
    )
        
    ;;; Bi-Whips, Bi-Braids, ...
    (if ?*Bi-Braids* then
        (bind ?*Bi-Whips* TRUE) (bind ?*biwhips-max-length* (max 2 ?*bibraids-max-length* ?*biwhips-max-length*))
    )
    (if ?*B*-Braids* then
        ;;; not => W*-Whips, because, as  they are coded,
        ;;; B*-Braids can be used in conjunction with Bi-T&E-contrads, while W*-Whips can only use bi-whips contrads
        (bind ?*Braids* TRUE) (bind ?*braids-max-length* (max ?*bibraids-max-length* ?*braids-max-length*))
    )
    (if ?*W*-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*w*-whips-max-length* ?*whips-max-length*))
    )

    ;;; Forcing-whips, forcing-gwhips, forcing-braids, forcing-gbraids
    (if ?*Forcing-G-Braids* then
        (bind ?*Forcing-G-Whips* TRUE) (bind ?*forcing-gwhips-max-length* (max ?*forcing-gbraids-max-length* ?*forcing-gwhips-max-length*))
        (bind ?*Forcing-Braids* TRUE) (bind ?*forcing-braids-max-length* (max ?*forcing-gbraids-max-length* ?*forcing-braids-max-length*))
        (bind ?*G-Braids* TRUE) (bind ?*gbraids-max-length* (max ?*forcing-gbraids-max-length* ?*gbraids-max-length*))
    )
    (if ?*Forcing-G-Whips* then
        (bind ?*Forcing-Whips* TRUE) (bind ?*forcing-whips-max-length* (max ?*forcing-gwhips-max-length* ?*forcing-whips-max-length*))
        (bind ?*G-Whips* TRUE) (bind ?*gwhips-max-length* (max ?*forcing-gwhips-max-length* ?*gwhips-max-length*))
    )
    (if ?*Forcing-Braids* then
        (bind ?*Forcing-Whips* TRUE) (bind ?*forcing-whips-max-length* (max ?*forcing-braids-max-length* ?*forcing-whips-max-length*))
        (bind ?*Braids* TRUE) (bind ?*braids-max-length* (max ?*forcing-braids-max-length* ?*braids-max-length*))
    )
    (if ?*Forcing-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*forcing-whips-max-length* ?*whips-max-length*))
    )
    (if ?*Forcing5-Whips* then (bind ?*Forcing4-Whips* TRUE))
    (if ?*Forcing4-Whips* then (bind ?*Forcing3-Whips* TRUE))
    (if ?*Forcing3-Whips* then (bind ?*Forcing2-Whips* TRUE))
    (if ?*Forcing2-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*forcing-whips-max-length* ?*whips-max-length*))
    )
    
    
    ;;; ORk-forcing-g-whips, ORk-contrad-g-whips, ORk-g-whips
    ;;; The following is in case the lengths have been set independently by the user:
    
    ;;; ORk-Forcing-G-Whips have standard consistency-preserving dependencies,
    ;;; and they imply ORk-Forcing-Whips
    (if ?*OR6-Forcing-G-Whips* then
        (bind ?*OR5-Forcing-G-Whips* TRUE)
        (if (< ?*OR5-forcing-gwhips-max-length* ?*OR6-forcing-gwhips-max-length*) then
            (bind ?*OR5-forcing-gwhips-max-length* ?*OR6-forcing-gwhips-max-length*)
        )
        (bind ?*OR6-Forcing-Whips* TRUE)
        (if (< ?*OR6-forcing-whips-max-length* ?*OR6-forcing-gwhips-max-length*) then
            (bind ?*OR6-forcing-whips-max-length* ?*OR6-forcing-gwhips-max-length*)
        )
    )
    (if ?*OR5-Forcing-G-Whips* then
        (bind ?*OR4-Forcing-G-Whips* TRUE)
        (if (< ?*OR4-forcing-gwhips-max-length* ?*OR5-forcing-gwhips-max-length*) then
            (bind ?*OR4-forcing-gwhips-max-length* ?*OR5-forcing-gwhips-max-length*)
        )
        (bind ?*OR5-Forcing-Whips* TRUE)
        (if (< ?*OR5-forcing-whips-max-length* ?*OR5-forcing-gwhips-max-length*) then
            (bind ?*OR5-forcing-whips-max-length* ?*OR5-forcing-gwhips-max-length*)
        )
    )
    (if ?*OR4-Forcing-G-Whips* then
        (bind ?*OR3-Forcing-G-Whips* TRUE)
        (if (< ?*OR3-forcing-gwhips-max-length* ?*OR4-forcing-gwhips-max-length*) then
            (bind ?*OR3-forcing-gwhips-max-length* ?*OR4-forcing-gwhips-max-length*)
        )
        (bind ?*OR4-Forcing-Whips* TRUE)
        (if (< ?*OR4-forcing-whips-max-length* ?*OR4-forcing-gwhips-max-length*) then
            (bind ?*OR4-forcing-whips-max-length* ?*OR4-forcing-gwhips-max-length*)
        )
    )
    (if ?*OR3-Forcing-G-Whips* then
        (bind ?*OR2-Forcing-G-Whips* TRUE)
        (if (< ?*OR2-forcing-gwhips-max-length* ?*OR3-forcing-gwhips-max-length*) then
            (bind ?*OR2-forcing-gwhips-max-length* ?*OR3-forcing-gwhips-max-length*)
        )
        (bind ?*OR3-Forcing-Whips* TRUE)
        (if (< ?*OR3-forcing-whips-max-length* ?*OR3-forcing-gwhips-max-length*) then
            (bind ?*OR3-forcing-whips-max-length* ?*OR3-forcing-gwhips-max-length*)
        )
    )
    (if ?*OR2-Forcing-G-Whips* then
        (bind ?*OR2-Forcing-Whips* TRUE)
        (if (< ?*OR2-forcing-whips-max-length* ?*OR2-forcing-gwhips-max-length*) then
            (bind ?*OR2-forcing-whips-max-length* ?*OR2-forcing-gwhips-max-length*)
        )
    )


    ;;; ORk-G-Whips have standard consistency-preserving dependencies,
    ;;; they imply ORk-Contrad-G-whips of same length and same k, which are indeed a special case,
    ;;; and they also imply ORk-Whips
    (if ?*OR6-G-Whips* then
        (bind ?*OR5-G-Whips* TRUE)
        (bind ?*OR5-gwhips-max-length* (max ?*OR6-gwhips-max-length* ?*OR5-gwhips-max-length*))
        (bind ?*OR6-Contrad-G-Whips* TRUE)
        (if (< ?*OR6-contrad-gwhips-max-length* ?*OR6-gwhips-max-length*) then
            (bind ?*OR6-contrad-gwhips-max-length* ?*OR6-gwhips-max-length*)
        )
        (bind ?*OR6-Whips* TRUE)
        (bind ?*OR6-whips-max-length* (max ?*OR5-whips-max-length* ?*OR5-gwhips-max-length*))
    )
    (if ?*OR5-G-Whips* then
        (bind ?*OR4-G-Whips* TRUE)
        (bind ?*OR4-gwhips-max-length* (max ?*OR5-gwhips-max-length* ?*OR4-gwhips-max-length*))
        (bind ?*OR5-Contrad-G-Whips* TRUE)
        (if (< ?*OR5-contrad-gwhips-max-length* ?*OR5-gwhips-max-length*) then
            (bind ?*OR5-contrad-gwhips-max-length* ?*OR5-gwhips-max-length*)
        )
        (bind ?*OR5-Whips* TRUE)
        (bind ?*OR5-whips-max-length* (max ?*OR5-whips-max-length* ?*OR5-gwhips-max-length*))
    )
    (if ?*OR4-G-Whips* then
        (bind ?*OR3-G-Whips* TRUE)
        (bind ?*OR3-gwhips-max-length* (max ?*OR4-gwhips-max-length* ?*OR3-gwhips-max-length*))
        (bind ?*OR4-Contrad-G-Whips* TRUE)
        (if (< ?*OR4-contrad-gwhips-max-length* ?*OR4-gwhips-max-length*) then
            (bind ?*OR4-contrad-gwhips-max-length* ?*OR4-gwhips-max-length*)
        )
        (bind ?*OR4-Whips* TRUE)
        (bind ?*OR4-whips-max-length* (max ?*OR4-whips-max-length* ?*OR4-gwhips-max-length*))
    )
    (if ?*OR3-G-Whips* then
        (bind ?*OR2-G-Whips* TRUE)
        (bind ?*OR2-gwhips-max-length* (max ?*OR3-gwhips-max-length* ?*OR2-gwhips-max-length*))
        (bind ?*OR3-Contrad-G-Whips* TRUE)
        (if (< ?*OR3-contrad-gwhips-max-length* ?*OR3-gwhips-max-length*) then
            (bind ?*OR3-contrad-gwhips-max-length* ?*OR3-gwhips-max-length*)
        )
        (bind ?*OR3-Whips* TRUE)
        (bind ?*OR3-whips-max-length* (max ?*OR3-whips-max-length* ?*OR3-gwhips-max-length*))
    )
    (if ?*OR2-G-Whips* then
        (bind ?*OR2-Contrad-G-Whips* TRUE)
        (if (< ?*OR2-contrad-gwhips-max-length* ?*OR2-gwhips-max-length*) then
            (bind ?*OR2-contrad-gwhips-max-length* ?*OR2-gwhips-max-length*)
        )
        (bind ?*OR2-Whips* TRUE)
        (bind ?*OR2-whips-max-length* (max ?*OR2-whips-max-length* ?*OR2-gwhips-max-length*))
    )
    
    ;;; ORk-Contrad-G-Whips have standard consistency-preserving dependencies and they imply ORk-Contrad-Whips
    (if ?*OR6-Contrad-G-Whips* then
        (bind ?*OR5-Contrad-G-Whips* TRUE)
        (bind ?*OR5-contrad-gwhips-max-length* (max ?*OR6-contrad-gwhips-max-length* ?*OR5-contrad-gwhips-max-length*))
        (bind ?*OR6-Contrad-Whips* TRUE)
        (if (< ?*OR6-contrad-whips-max-length* ?*OR6-contrad-gwhips-max-length*) then
            (bind ?*OR6-contrad-whips-max-length* ?*OR6-contrad-gwhips-max-length*)
        )
    )
    (if ?*OR5-Contrad-G-Whips* then
        (bind ?*OR4-Contrad-G-Whips* TRUE)
        (bind ?*OR4-contrad-gwhips-max-length* (max ?*OR5-contrad-gwhips-max-length* ?*OR4-contrad-gwhips-max-length*))
        (bind ?*OR5-Contrad-Whips* TRUE)
        (if (< ?*OR5-contrad-whips-max-length* ?*OR5-contrad-gwhips-max-length*) then
            (bind ?*OR5-contrad-whips-max-length* ?*OR5-contrad-gwhips-max-length*)
        )
    )
    (if ?*OR4-Contrad-G-Whips* then
        (bind ?*OR3-Contrad-G-Whips* TRUE)
        (bind ?*OR3-contrad-gwhips-max-length* (max ?*OR4-contrad-gwhips-max-length* ?*OR3-contrad-gwhips-max-length*))
        (bind ?*OR4-Contrad-Whips* TRUE)
        (if (< ?*OR4-contrad-whips-max-length* ?*OR4-contrad-gwhips-max-length*) then
            (bind ?*OR4-contrad-whips-max-length* ?*OR4-contrad-gwhips-max-length*)
        )
    )
    (if ?*OR3-Contrad-G-Whips* then
        (bind ?*OR2-Contrad-G-Whips* TRUE)
        (bind ?*OR2-contrad-gwhips-max-length* (max ?*OR3-contrad-gwhips-max-length* ?*OR2-contrad-gwhips-max-length*))
        (bind ?*OR3-Contrad-Whips* TRUE)
        (if (< ?*OR3-contrad-whips-max-length* ?*OR3-contrad-gwhips-max-length*) then
            (bind ?*OR3-contrad-whips-max-length* ?*OR3-contrad-gwhips-max-length*)
        )
    )
    (if ?*OR2-Contrad-G-Whips* then
        (bind ?*OR2-Contrad-Whips* TRUE)
        (if (< ?*OR2-contrad-whips-max-length* ?*OR2-contrad-gwhips-max-length*) then
            (bind ?*OR2-contrad-whips-max-length* ?*OR2-contrad-gwhips-max-length*)
        )
    )

    
    ;;; ORk-forcing-whips, ORk-contrad-whips, ORk-whips
    ;;; The following is in case the lengths have been set independently by the user:

    ;;; ORk-Forcing-Whips have standard consistency-preserving dependencies.
    (if ?*OR8-Forcing-Whips* then
        (bind ?*OR7-Forcing-Whips* TRUE)
        (if (< ?*OR7-forcing-whips-max-length* ?*OR8-forcing-whips-max-length*) then
            (bind ?*OR7-forcing-whips-max-length* ?*OR8-forcing-whips-max-length*)
        )
    )
    (if ?*OR7-Forcing-Whips* then
        (bind ?*OR6-Forcing-Whips* TRUE)
        (if (< ?*OR6-forcing-whips-max-length* ?*OR7-forcing-whips-max-length*) then
            (bind ?*OR6-forcing-whips-max-length* ?*OR7-forcing-whips-max-length*)
        )
    )
    (if ?*OR6-Forcing-Whips* then
        (bind ?*OR5-Forcing-Whips* TRUE)
        (if (< ?*OR5-forcing-whips-max-length* ?*OR6-forcing-whips-max-length*) then
            (bind ?*OR5-forcing-whips-max-length* ?*OR6-forcing-whips-max-length*)
        )
    )
    (if ?*OR5-Forcing-Whips* then
        (bind ?*OR4-Forcing-Whips* TRUE)
        (if (< ?*OR4-forcing-whips-max-length* ?*OR5-forcing-whips-max-length*) then
            (bind ?*OR4-forcing-whips-max-length* ?*OR5-forcing-whips-max-length*)
        )
    )
    (if ?*OR4-Forcing-Whips* then
        (bind ?*OR3-Forcing-Whips* TRUE)
        (if (< ?*OR3-forcing-whips-max-length* ?*OR4-forcing-whips-max-length*) then
            (bind ?*OR3-forcing-whips-max-length* ?*OR4-forcing-whips-max-length*)
        )
    )
    (if ?*OR3-Forcing-Whips* then
        (bind ?*OR2-Forcing-Whips* TRUE)
        (if (< ?*OR2-forcing-whips-max-length* ?*OR3-forcing-whips-max-length*) then
            (bind ?*OR2-forcing-whips-max-length* ?*OR3-forcing-whips-max-length*)
        )
    )
    
    ;;; ORk-Whips have standard consistency-preserving dependencies,
    ;;; and they imply ORk-contrad-whips of same length and same k, which are indeed a special case.
    (if ?*OR8-Whips* then
        (bind ?*OR7-Whips* TRUE)
        (bind ?*OR7-whips-max-length* (max ?*OR8-whips-max-length* ?*OR7-whips-max-length*))
        (bind ?*OR8-Contrad-Whips* TRUE)
        (if (< ?*OR8-contrad-whips-max-length* ?*OR8-whips-max-length*) then
            (bind ?*OR8-contrad-whips-max-length* ?*OR8-whips-max-length*)
        )
    )
    (if ?*OR7-Whips* then
        (bind ?*OR6-Whips* TRUE)
        (bind ?*OR6-whips-max-length* (max ?*OR7-whips-max-length* ?*OR6-whips-max-length*))
        (bind ?*OR7-Contrad-Whips* TRUE)
        (if (< ?*OR7-contrad-whips-max-length* ?*OR7-whips-max-length*) then
            (bind ?*OR7-contrad-whips-max-length* ?*OR7-whips-max-length*)
        )
    )
    (if ?*OR6-Whips* then
        (bind ?*OR5-Whips* TRUE)
        (bind ?*OR5-whips-max-length* (max ?*OR6-whips-max-length* ?*OR5-whips-max-length*))
        (bind ?*OR6-Contrad-Whips* TRUE)
        (if (< ?*OR6-contrad-whips-max-length* ?*OR6-whips-max-length*) then
            (bind ?*OR6-contrad-whips-max-length* ?*OR6-whips-max-length*)
        )
    )
    (if ?*OR5-Whips* then
        (bind ?*OR4-Whips* TRUE)
        (bind ?*OR4-whips-max-length* (max ?*OR5-whips-max-length* ?*OR4-whips-max-length*))
        (bind ?*OR5-Contrad-Whips* TRUE)
        (if (< ?*OR5-contrad-whips-max-length* ?*OR5-whips-max-length*) then
            (bind ?*OR5-contrad-whips-max-length* ?*OR5-whips-max-length*)
        )
    )
    (if ?*OR4-Whips* then
        (bind ?*OR3-Whips* TRUE)
        (bind ?*OR3-whips-max-length* (max ?*OR4-whips-max-length* ?*OR3-whips-max-length*))
        (bind ?*OR4-Contrad-Whips* TRUE)
        (if (< ?*OR4-contrad-whips-max-length* ?*OR4-whips-max-length*) then
            (bind ?*OR4-contrad-whips-max-length* ?*OR4-whips-max-length*)
        )
    )
    (if ?*OR3-Whips* then
        (bind ?*OR2-Whips* TRUE)
        (bind ?*OR2-whips-max-length* (max ?*OR3-whips-max-length* ?*OR2-whips-max-length*))
        (bind ?*OR3-Contrad-Whips* TRUE)
        (if (< ?*OR3-contrad-whips-max-length* ?*OR3-whips-max-length*) then
            (bind ?*OR3-contrad-whips-max-length* ?*OR3-whips-max-length*)
        )
    )
    (if ?*OR2-Whips* then
        (bind ?*OR2-Contrad-Whips* TRUE)
        (if (< ?*OR2-contrad-whips-max-length* ?*OR2-whips-max-length*) then
            (bind ?*OR2-contrad-whips-max-length* ?*OR2-whips-max-length*)
        )
    )

    ;;; ORk-Contrad-Whips are a special case of ORk-Whips, but an interesting one.
    ;;; They have standard consistency-preserving dependencies:
    (if ?*OR8-Contrad-Whips* then
        (bind ?*OR7-Contrad-Whips* TRUE)
        (bind ?*OR7-contrad-whips-max-length* (max ?*OR8-contrad-whips-max-length* ?*OR7-contrad-whips-max-length*))
    )
    (if ?*OR7-Contrad-Whips* then
        (bind ?*OR6-Contrad-Whips* TRUE)
        (bind ?*OR6-contrad-whips-max-length* (max ?*OR7-contrad-whips-max-length* ?*OR6-contrad-whips-max-length*))
    )
    (if ?*OR6-Contrad-Whips* then
        (bind ?*OR5-Contrad-Whips* TRUE)
        (bind ?*OR5-contrad-whips-max-length* (max ?*OR6-contrad-whips-max-length* ?*OR5-contrad-whips-max-length*))
    )
    (if ?*OR5-Contrad-Whips* then
        (bind ?*OR4-Contrad-Whips* TRUE)
        (bind ?*OR4-contrad-whips-max-length* (max ?*OR5-contrad-whips-max-length* ?*OR4-contrad-whips-max-length*))
    )
    (if ?*OR4-Contrad-Whips* then
        (bind ?*OR3-Contrad-Whips* TRUE)
        (bind ?*OR3-contrad-whips-max-length* (max ?*OR4-contrad-whips-max-length* ?*OR3-contrad-whips-max-length*))
    )
    (if ?*OR3-Contrad-Whips* then
        (bind ?*OR2-Contrad-Whips* TRUE)
        (bind ?*OR2-contrad-whips-max-length* (max ?*OR3-contrad-whips-max-length* ?*OR2-contrad-whips-max-length*))
    )
    
    
    ;;; Bivalue-chains, whips, g-bivalue-chains, gwhips, braids, gbraids
    (if ?*G-Braids* then
        (bind ?*G-Whips* TRUE) (bind ?*gwhips-max-length* (max ?*gbraids-max-length* ?*gwhips-max-length*))
        (bind ?*Braids* TRUE) (bind ?*braids-max-length* (max ?*gbraids-max-length* ?*braids-max-length*))
    )
    (if ?*G-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*gwhips-max-length* ?*whips-max-length*))
    )
    (if ?*G2-Whips* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*g2whips-max-length* ?*whips-max-length*))
    )
    (if ?*Braids* then
        (bind ?*Whips* TRUE) (bind ?*whips-max-length* (max ?*braids-max-length* ?*whips-max-length*))
    )
    
    ;;; (typed or not) z-chains and g-bivalue chains imply (similarly typed or not) bivalue-chains
    (if ?*z-Chains* then (bind ?*Bivalue-Chains* TRUE))
    (if ?*G-Bivalue-Chains* then (bind ?*Bivalue-Chains* TRUE))
    (if ?*Typed-z-Chains* then (bind ?*Typed-Bivalue-Chains* TRUE))

    ;;; Redefine ?*G-Labels* if necessary
    (if (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*
            ?*Typed-G-Whips*
            ?*Forcing-G-Whips* ?*Forcing-G-Braids*
            ?*All-generic-chain-rules*
            ?*OR2-Forcing-G-Whips* ?*OR2-Contrad-G-Whips* ?*OR2-G-Whips*
        ) then
        (bind ?*G-Labels* TRUE)
    )
    
    ;;; Typed-whips
    (if ?*Typed-G-Whips* then
        (bind ?*Typed-Whips* TRUE) (bind ?*typed-whips-max-length* (max ?*typed-gwhips-max-length* ?*typed-whips-max-length*))
    )

    
    ;;; All the resolution theories, apart from BRT, must have Whips[1]
    ;;; There is a special global variable ?*Whips[1]* to take this into account
    ;;; Whips[1] are required by any other resolution theory
    (if (or ?*Subsets[2]*
            ?*Typed-Bivalue-Chains*
            ?*Bivalue-Chains*
            ?*Typed-z-Chains*
            ?*z-Chains*
            ?*Oddagons*
            ?*Typed-t-Whips*
            ?*t-Whips*
            ?*Typed-Whips*
            ?*Whips*
            ?*Quick-B-Rating*
            ?*OR2-Forcing-Whips*
            ?*OR2-Contrad-Whips*
            ?*OR2-Whips*
        )
        then (bind ?*Whips[1]* TRUE)
    )
    (if (or ?*OR2-Forcing-Whips* ?*OR2-Contrad-Whips* ?*OR2-Whips*)
        then (bind ?*OR2-Whips[1]* TRUE)
    )
    (if (or ?*OR3-Forcing-Whips* ?*OR3-Contrad-Whips* ?*OR3-Whips*)
        then (bind ?*OR3-Whips[1]* TRUE)
    )
    (if (or ?*OR4-Forcing-Whips* ?*OR4-Contrad-Whips* ?*OR4-Whips*)
        then (bind ?*OR4-Whips[1]* TRUE)
    )
    (if (or ?*OR5-Forcing-Whips* ?*OR5-Contrad-Whips* ?*OR5-Whips*)
        then (bind ?*OR5-Whips[1]* TRUE)
    )
    (if (or ?*OR6-Forcing-Whips* ?*OR6-Contrad-Whips* ?*OR6-Whips*)
        then (bind ?*OR6-Whips[1]* TRUE)
    )
    (if (or ?*OR7-Forcing-Whips* ?*OR7-Contrad-Whips* ?*OR7-Whips*)
        then (bind ?*OR7-Whips[1]* TRUE)
    )
    (if (or ?*OR8-Forcing-Whips* ?*OR8-Contrad-Whips* ?*OR8-Whips*)
        then (bind ?*OR8-Whips[1]* TRUE)
    )

    ;;; Typed-Chains is an abstract name for any kind of typed chain
    ;;; It can be used in links.clp and glinks.clp as a condition for adding
    ;;; the relevant typed forms of predicates (csp-linked ....
    (if (or ?*Typed-Bivalue-Chains*
            ?*Typed-z-Chains*
            ?*Typed-t-Whips*
            ?*Typed-Whips*
            ?*Typed-G-Whips*
        )
        then
            (bind ?*Typed-Chains* TRUE)
            (bind ?*Typed-Partial-Whips[1]* TRUE)
    )
    

    ;;; partial-whips[i] must be loaded for some rules to work:
    (if ?*z-Chains* then (bind ?*partial-whips-max-length* (max ?*partial-whips-max-length* 1)))
    (if ?*t-Whips* then (bind ?*partial-whips-max-length* (max ?*partial-whips-max-length* (- ?*t-whips-max-length* 1))))
    (if ?*Whips* then (bind ?*partial-whips-max-length* (max ?*partial-whips-max-length* (- ?*whips-max-length* 1))))
    
    ;;; Contrary to ORk-Forcing-Whips, whose length is (indirectly) further restricted by ?*all-chains-max-length*,
    ;;; ORk-Contrad-Whips and ORk-Whips need access to partial-whips
    (if ?*OR2-Contrad-Whips* then (bind ?*partial-whips-max-length* (max ?*partial-whips-max-length* (- ?*OR2-contrad-whips-max-length* 1))))

    ;;; partial-gwhips[i] must be loaded for some rules to work:
    (if ?*G-Whips* then (bind ?*partial-gwhips-max-length* (- ?*gwhips-max-length* 1)))
    
    ;;; Contrary to ORk-Forcing-G-Whips, whose length is (indirectly) further restricted by ?*all-chains-max-length*,
    ;;; ORk-Contrad-G-Whips and ORk-G-Whips neeed access to partial-gwhips
    (if ?*OR2-Contrad-G-Whips* then (bind ?*partial-gwhips-max-length* (max ?*partial-gwhips-max-length* (- ?*OR2-contrad-gwhips-max-length* 1))))

    (printout t "Generic consistency-preserving rules dependencies set" crlf)
    
    ;;; Check consitency of the blocked choices
    (if (or ?*blocked-Subsets* ?*blocked-chains* ?*blocked-oddagons*)
        then (bind ?*blocked-Whips[1]* TRUE)
    )
    ;;; define values of secondary variables:
    (bind ?*blocked-bivalue-chains* ?*blocked-chains*)
    (bind ?*blocked-z-chains* ?*blocked-chains*)
    (bind ?*blocked-t-Whips* ?*blocked-chains*)

    ;;; If unblocked-behaviour is selected in the configuration file, reset the global unblocked behaviour:
    (if ?*unblocked-behaviour* then
        (bind ?*blocked-Whips[1]* FALSE)
        (bind ?*blocked-bivalue-chains* FALSE)
        (bind ?*blocked-z-chains* FALSE)
        (bind ?*blocked-t-Whips* FALSE)
        (bind ?*blocked-Subsets* FALSE)
        (bind ?*blocked-oddagons* FALSE)
    )
    
    ;;; Now compute the maximum level reached by at least one generic rule:
    (if ?*Bivalue-Chains* then (bind ?*max-level* (max ?*max-level* ?*bivalue-chains-max-length*)))
    (if ?*z-Chains* then (bind ?*max-level* (max ?*max-level* ?*z-chains-max-length*)))
    (if ?*Oddagons* then (bind ?*max-level* (max ?*max-level* ?*oddagons-max-length*)))
    (if ?*t-Whips* then (bind ?*max-level* (max ?*max-level* ?*t-whips-max-length*)))
    (if ?*Whips* then (bind ?*max-level* (max ?*max-level* ?*whips-max-length*)))
    (if ?*Braids* then (bind ?*max-level* (max ?*max-level* ?*braids-max-length*)))

    (if ?*G-Bivalue-Chains* then (bind ?*max-level* (max ?*max-level* ?*g-bivalue-chains-max-length*)))
    (if ?*G2-Whips* then (bind ?*max-level* (max ?*max-level* ?*g2whips-max-length*)))
    (if ?*G-Whips* then (bind ?*max-level* (max ?*max-level* ?*gwhips-max-length*)))
    (if ?*G2-Braids* then (bind ?*max-level* (max ?*max-level* ?*g2braids-max-length*)))
    (if ?*G-Braids* then (bind ?*max-level* (max ?*max-level* ?*gbraids-max-length*)))
    
    (if ?*Typed-Bivalue-Chains* then (bind ?*max-level* (max ?*max-level* ?*typed-bivalue-chains-max-length*)))
    (if ?*Typed-z-Chains* then (bind ?*max-level* (max ?*max-level* ?*typed-z-chains-max-length*)))
    (if ?*Typed-t-Whips* then (bind ?*max-level* (max ?*max-level* ?*typed-t-whips-max-length*)))
    (if ?*Typed-Whips* then (bind ?*max-level* (max ?*max-level* ?*typed-whips-max-length*)))
    (if ?*Typed-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*typed-gwhips-max-length*)))
    
    
    (if ?*OR2-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-forcing-whips-max-length*)))
    (if ?*OR3-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-forcing-whips-max-length*)))
    (if ?*OR4-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-forcing-whips-max-length*)))
    (if ?*OR5-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-forcing-whips-max-length*)))
    (if ?*OR6-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-forcing-whips-max-length*)))
    (if ?*OR7-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-forcing-whips-max-length*)))
    (if ?*OR8-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-forcing-whips-max-length*)))
    
    (if ?*OR2-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-contrad-whips-max-length*)))
    (if ?*OR3-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-contrad-whips-max-length*)))
    (if ?*OR4-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-contrad-whips-max-length*)))
    (if ?*OR5-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-contrad-whips-max-length*)))
    (if ?*OR5-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-contrad-whips-max-length*)))
    (if ?*OR7-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-contrad-whips-max-length*)))
    (if ?*OR8-Contrad-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-contrad-whips-max-length*)))
    
    (if ?*OR2-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-whips-max-length*)))
    (if ?*OR3-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-whips-max-length*)))
    (if ?*OR4-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-whips-max-length*)))
    (if ?*OR5-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-whips-max-length*)))
    (if ?*OR6-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-whips-max-length*)))
    (if ?*OR7-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-whips-max-length*)))
    (if ?*OR8-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-whips-max-length*)))
    
    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips*) then
        (if ?*OR2-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-forcing-whips-max-length*)))
        (if ?*OR3-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-forcing-whips-max-length*)))
        (if ?*OR4-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-forcing-whips-max-length*)))
        (if ?*OR5-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-forcing-whips-max-length*)))
        (if ?*OR6-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-forcing-whips-max-length*)))
        (if ?*OR7-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-forcing-whips-max-length*)))
        (if ?*OR8-Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-forcing-whips-max-length*)))
    )
    
    
    (if ?*OR2-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-forcing-gwhips-max-length*)))
    (if ?*OR3-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-forcing-gwhips-max-length*)))
    (if ?*OR4-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-forcing-gwhips-max-length*)))
    (if ?*OR5-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-forcing-gwhips-max-length*)))
    (if ?*OR6-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-forcing-gwhips-max-length*)))
    (if ?*OR7-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-forcing-gwhips-max-length*)))
    (if ?*OR8-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-forcing-gwhips-max-length*)))
    
    (if ?*OR2-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-contrad-gwhips-max-length*)))
    (if ?*OR3-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-contrad-gwhips-max-length*)))
    (if ?*OR4-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-contrad-gwhips-max-length*)))
    (if ?*OR5-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-contrad-gwhips-max-length*)))
    (if ?*OR5-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-contrad-gwhips-max-length*)))
    (if ?*OR7-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-contrad-gwhips-max-length*)))
    (if ?*OR8-Contrad-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-contrad-gwhips-max-length*)))
    
    (if ?*OR2-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-gwhips-max-length*)))
    (if ?*OR3-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-gwhips-max-length*)))
    (if ?*OR4-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-gwhips-max-length*)))
    (if ?*OR5-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-gwhips-max-length*)))
    (if ?*OR6-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-gwhips-max-length*)))
    (if ?*OR7-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-gwhips-max-length*)))
    (if ?*OR8-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-gwhips-max-length*)))
    
    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips*) then
        (if ?*OR2-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR2-forcing-gwhips-max-length*)))
        (if ?*OR3-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR3-forcing-gwhips-max-length*)))
        (if ?*OR4-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR4-forcing-gwhips-max-length*)))
        (if ?*OR5-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR5-forcing-gwhips-max-length*)))
        (if ?*OR6-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR6-forcing-gwhips-max-length*)))
        (if ?*OR7-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR7-forcing-gwhips-max-length*)))
        (if ?*OR8-Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*OR8-forcing-gwhips-max-length*)))
    )
    
    
    (if ?*Forcing-Whips* then (bind ?*max-level* (max ?*max-level* ?*forcing-whips-max-length*)))
    (if ?*Forcing-G-Whips* then (bind ?*max-level* (max ?*max-level* ?*forcing-gwhips-max-length*)))
    (if ?*Forcing-Braids* then (bind ?*max-level* (max ?*max-level* ?*forcing-braids-max-length*)))
    (if ?*Forcing-G-Braids* then (bind ?*max-level* (max ?*max-level* ?*forcing-gbraids-max-length*)))

    TRUE
))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 5.3) Compute the generic rating type and the rating type
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*generic-rating-type* = "") ;;; this will be computed by function define-generic-rating-type
(defglobal ?*application-specific-rating-type* = "") ;;; this will be computed by the application
(defglobal ?*rating-type* = "") ;;; the final value combining the previous two will be computed automatically

;;; Notice that the generic rating doesn't take into account the application-specific rules

(deffunction define-generic-rating-type ()
    ;;; typed-chains
    (bind ?typed-generic-rating-type "")
    (if ?*Typed-Bivalue-Chains* then (bind ?typed-generic-rating-type "TyBC"))
    (if ?*Typed-z-Chains* then (bind ?typed-generic-rating-type "TyZ"))
    (if ?*Typed-t-Whips* then (bind ?typed-generic-rating-type "TytW"))
    (if (and ?*Typed-z-Chains* ?*Typed-t-Whips*) then (bind ?typed-generic-rating-type "TyZ+TytW"))
    (if ?*Typed-Whips* then (bind ?typed-generic-rating-type "TyW"))
    (if ?*Typed-G-Whips* then (bind ?typed-generic-rating-type "TygW"))

    ;;; Untyped-chain-rules with no g-labels
    (bind ?*generic-rating-type* "")
    (if ?*Whips[1]* then (bind ?*generic-rating-type* "W1"))
    (if ?*Bivalue-Chains* then (bind ?*generic-rating-type* "BC"))
    (if ?*z-Chains* then (bind ?*generic-rating-type* "Z"))
    (if ?*t-Whips* then (bind ?*generic-rating-type* "tW"))
    (if (and ?*z-Chains* ?*t-Whips*) then (bind ?*generic-rating-type* "Z+tW"))
    (if ?*Whips* then (bind ?*generic-rating-type* "W"))
    (if ?*Braids* then (bind ?*generic-rating-type* "B"))
    ;;; not yet implemented:
    (if ?*Quick-B-Rating* then (bind ?*generic-rating-type* "QB"))

    ;;; Untyped-chain-rules with g-labels
    (if ?*G-Bivalue-Chains* then
        (bind ?*generic-rating-type* "gBC")
        (if ?*z-Chains* then (bind ?*generic-rating-type* "Z+gBC"))
        (if ?*t-Whips* then (bind ?*generic-rating-type* "tW+gBC"))
        (if (and ?*z-Chains* ?*t-Whips*) then (bind ?*generic-rating-type* "Z+tW+gBC"))
        (if ?*Whips* then (bind ?*generic-rating-type* "W+gBC"))
        (if ?*Braids* then (bind ?*generic-rating-type* "B+gBC"))
    )
    ;;; remember that g2-Whips and g-Whips subsume bivalue-chains, z-chains and t-whips
    (if ?*G2-Whips* then
        (bind ?*generic-rating-type* "g2W")
        (if ?*Braids* then (bind ?*generic-rating-type* "B+g2W"))
    )
    (if ?*G-Whips* then
        (bind ?*generic-rating-type* "gW")
        (if ?*Braids* then (bind ?*generic-rating-type* "B+gW"))
    )
    (if ?*G-Braids* then (bind ?*generic-rating-type* "gB"))
    
    ;;; exotic chains:
    (if ?*Oddagons* then
        (bind ?*generic-rating-type*
            (if (eq ?*generic-rating-type* "") then "O" else (str-cat ?*generic-rating-type* "+O"))
        )
    )

    ;;; Fuse the typed and untyped ratings:
    (bind ?*generic-rating-type*
        (if (eq ?typed-generic-rating-type "")
            then ?*generic-rating-type*
            else (str-cat ?typed-generic-rating-type "+" ?*generic-rating-type*)
        )
    )

    ;;; Forcing
    ;;; Note that Forcing Chains and ORk-Forcing chains are normally not intended to be used at the same time
    (bind ?forcing-type "")
    
    ;;; Forcing chains
    (if ?*Forcing-Whips* then (bind ?forcing-type "FW"))
    (if ?*Forcing3-Whips* then (bind ?forcing-type "F3W"))
    (if ?*Forcing4-Whips* then (bind ?forcing-type "F4W"))
    (if ?*Forcing5-Whips* then (bind ?forcing-type "F5W"))
    (if ?*Forcing-G-Whips* then (bind ?forcing-type "FgW"))
    (if ?*Forcing-Braids* then (bind ?forcing-type "FB"))
    (if (and ?*Forcing-G-Whips* ?*Forcing-Braids*) then (bind ?forcing-type "FgW+FB"))
    (if ?*Forcing-G-Braids* then (bind ?forcing-type "FgB"))

    
    ;;; ORk-forcing-whips
    (bind ?ORk-forcing-type "")
    (if ?*OR2-Forcing-Whips* then (bind ?ORk-forcing-type "OR2FW"))
    (if ?*OR3-Forcing-Whips* then (bind ?ORk-forcing-type "OR3FW"))
    (if ?*OR4-Forcing-Whips* then (bind ?ORk-forcing-type "OR4FW"))
    (if ?*OR5-Forcing-Whips* then (bind ?ORk-forcing-type "OR5FW"))
    (if ?*OR6-Forcing-Whips* then (bind ?ORk-forcing-type "OR6FW"))
    (if ?*OR7-Forcing-Whips* then (bind ?ORk-forcing-type "OR7FW"))
    (if ?*OR8-Forcing-Whips* then (bind ?ORk-forcing-type "OR8FW"))
    
    ;;; ORk-forcing-gwhips
    (if ?*OR2-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR2FgW"))
    (if ?*OR3-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR3FgW"))
    (if ?*OR4-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR4FgW"))
    (if ?*OR5-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR5FgW"))
    (if ?*OR6-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR6FgW"))
    (if ?*OR7-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR7FgW"))
    (if ?*OR8-Forcing-G-Whips* then (bind ?ORk-forcing-type "OR8FgW"))

    (if (neq ?ORk-forcing-type "") then
        (bind ?forcing-type (if (eq ?forcing-type "") then ?ORk-forcing-type else (str-cat ?forcing-type "+" ?ORk-forcing-type)))
    )

    ;;; ORk-contrad-whips
    (bind ?ORk-contrad-type "")
    (if ?*OR2-Contrad-Whips* then (bind ?ORk-contrad-type "OR2CW"))
    (if ?*OR3-Contrad-Whips* then (bind ?ORk-contrad-type "OR3CW"))
    (if ?*OR4-Contrad-Whips* then (bind ?ORk-contrad-type "OR4CW"))
    (if ?*OR5-Contrad-Whips* then (bind ?ORk-contrad-type "OR5CW"))
    (if ?*OR6-Contrad-Whips* then (bind ?ORk-contrad-type "OR6CW"))
    (if ?*OR7-Contrad-Whips* then (bind ?ORk-contrad-type "OR7CW"))
    (if ?*OR8-Contrad-Whips* then (bind ?ORk-contrad-type "OR8CW"))

    ;;; ORk-whips
    (bind ?ORk-whip-type "")
    (if ?*OR2-Whips* then (bind ?ORk-whip-type "OR2W"))
    (if ?*OR3-Whips* then (bind ?ORk-whip-type "OR3W"))
    (if ?*OR4-Whips* then (bind ?ORk-whip-type "OR4W"))
    (if ?*OR5-Whips* then (bind ?ORk-whip-type "OR5W"))
    (if ?*OR6-Whips* then (bind ?ORk-whip-type "OR6W"))
    (if ?*OR7-Whips* then (bind ?ORk-whip-type "OR7W"))
    (if ?*OR8-Whips* then (bind ?ORk-whip-type "OR8W"))
    

    ;;; ORk-contrad-gwhips
    (if ?*OR2-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR2CgW"))
    (if ?*OR3-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR3CgW"))
    (if ?*OR4-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR4CgW"))
    (if ?*OR5-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR5CgW"))
    (if ?*OR6-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR6CgW"))
    (if ?*OR7-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR7CgW"))
    (if ?*OR8-Contrad-G-Whips* then (bind ?ORk-contrad-type "OR8CgW"))

    ;;; ORk-gwhips
    (if ?*OR2-G-Whips* then (bind ?ORk-whip-type "OR2gW"))
    (if ?*OR3-G-Whips* then (bind ?ORk-whip-type "OR3gW"))
    (if ?*OR4-G-Whips* then (bind ?ORk-whip-type "OR4gW"))
    (if ?*OR5-G-Whips* then (bind ?ORk-whip-type "OR5gW"))
    (if ?*OR6-G-Whips* then (bind ?ORk-whip-type "OR6gW"))
    (if ?*OR7-G-Whips* then (bind ?ORk-whip-type "OR7gW"))
    (if ?*OR8-G-Whips* then (bind ?ORk-whip-type "OR8gW"))

    
    (if (neq ?ORk-whip-type "") then (bind ?ORk-contrad-type ?ORk-whip-type))
    (if (neq ?ORk-contrad-type "") then
        (bind ?forcing-type (if (eq ?forcing-type "") then ?ORk-contrad-type else (str-cat ?forcing-type "+" ?ORk-contrad-type)))
    )

    (if (neq ?forcing-type "") then (bind ?*generic-rating-type* (str-cat ?*generic-rating-type* "+" ?forcing-type)))

    ;;; Add the relevant part for Bi-Whips, Bi-Braids, ...

    ?*generic-rating-type*
)


;;; This function will be changed by any application with application-specific rules
(deffunction define-application-specific-rating-type ()
    (bind ?*application-specific-rating-type* "")
)

;;; Now that the generic and application-specific rating types  are defined, define the global rating type

(deffunction define-rating-type ()
    ;;; generic part
    (define-generic-rating-type)
    ;;; application-specific part
    (define-application-specific-rating-type)
    ;;; combine the two
    (bind ?*rating-type*
        (if (eq ?*application-specific-rating-type* "")
            then ?*generic-rating-type*
            else (if (eq ?*generic-rating-type* "")
                    then ?*application-specific-rating-type*
                    else (if (eq ?*generic-rating-type* "W1")
                            then ?*application-specific-rating-type*
                            else (str-cat ?*generic-rating-type* "+" ?*application-specific-rating-type*)
                        )
                )
        )
    )
    (if (eq ?*rating-type* "") then (bind ?*rating-type* "BRT"))

    ;;; deal with T&E
    (if (and ?*TE1* (not ?*TE2*) (not ?*TE3*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(1)")
            else (bind ?*rating-type* (str-cat "T&E(" ?*rating-type* ", 1)"))
        )
    )
    (if (and ?*TE2* (not ?*TE1*) (not ?*TE3*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(2)")
            else (bind ?*rating-type* (str-cat "T&E(" ?*rating-type* ", 2)"))
        )
    )
    (if (and ?*TE3* (not ?*TE1*) (not ?*TE2*)) then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "T&E(3)")
            else (bind ?*rating-type* (str-cat "T&E(" ?*rating-type* ", 3)"))
        )
    )
    
    
    ;;; Should be used only to produce bi-T&E contradictions, with no other rule activated:
    (if (and ?*simple-bi-TE* (not ?*TE1*) (not ?*TE2*) (not ?*TE3*)) then
        (if (neq ?*rating-type* "BRT")
            then (printout t "Config error for bi-T&E" crlf) (halt)
            else (bind ?*rating-type* "Bi-T&E-contrads")
        )
    )
    ;;; NEEDS TO BE UPDATED (not public):
    (if (and ?*TE1* ?*simple-bi-TE* ?*Forcing-bi-TE* (not ?*TE2*) (not ?*TE3*)) then
        (if (neq ?*rating-type* "in-B*B-test")
            then (printout t "Config error for Forcing-bi-T&E" crlf) (halt)
            else (bind ?*rating-type* "in-Forcing-B*-braids-test")
        )
    )
    ;;; END TO BE UPDATED

    ;;; deal with DFS
    (if ?*DFS* then
        (if (eq ?*rating-type* "")
            then (bind ?*rating-type* "DFS")
            else (bind ?*rating-type* (str-cat "DFS(" ?*rating-type* ")"))
        )
    )
        
    ?*rating-type*
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Functions for checking user selection in config file before loading
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; To be redefined by any application if necessary:

(deffunction check-application-specific-config-selection ()
    ;;; This function is only intended for being called within generic check-config-selection
    ;;; after the generic checks have been done
    TRUE
)


(deffunction check-config-selection ()
    (redefine-all-generic-chains-max-length)
    (enforce-generic-rules-dependencies)
    (if (check-application-specific-config-selection)
        then (define-rating-type) TRUE
        else FALSE
    )
)







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBAL VARIABLES USED FOR CONTROLLING WHAT IS PRINTED DURING THE RESOLUTION PROCESS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Default selection of output traces produced
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; This will prevent the printing of entry in module MAIN until modules are used
(defglobal ?*modules-used* = FALSE)

;;; The variables defined below allow a very fine tuning of what's printed.
;;; Application of particular techniques can be traced when some of the following variables are set to TRUE.
;;; The detailed correct message can be found in the rhs of each rule.
;;; The resulting situation can be printed in detail before or after anything is changed by the rhs, or both.

;;; Setting ?*print-actions* to TRUE allows to trace all actions at once, except basic constraint propagation rules.
;;; To trace these, ?*print-details* must be set to TRUE (deleted for efficiency).
;;; Setting ?*print-init-details* to TRUE allows to trace the initialization of candidate sets (deleted for efficiency).

(defglobal ?*print-initial-state* = TRUE) ; number of values and candidates, csp-links, links, density
(defglobal ?*print-actions* = TRUE) ; print the singles and all the non-ECP rules
(defglobal ?*print-levels* = FALSE) ; <<<<<<<<<<<<<<<<<< useful for tracking the advancement of hard instances
(defglobal ?*print-main-levels* = FALSE) ; <<<<<<<<<<<<< useful for simpler tracking the advancement of hard instances

(defglobal ?*print-all-details* = FALSE) ; includes any of the following
(defglobal ?*print-init-details* = FALSE) ; print data about c-values and candidates initialisation
(defglobal ?*print-ECP-details* = FALSE) ; print all the ECP eliminations


;;; By default, the solution (if found) is printed:
(defglobal ?*print-solution* = TRUE)
;;; By default, the resolution state after BRT is printed:
(defglobal ?*print-RS-after-Singles* = TRUE)
;;; By default, the resolution state after whips[1] is printed, if the CSP has whips[1]
(defglobal ?*has-whips[1]* = TRUE)
(defglobal ?*print-RS-after-whips[1]* = TRUE)
;;; By default, the resolution state at the end of resolution (if a solution is not found) is printed:
(defglobal ?*print-final-RS* = TRUE)
;;; By default, the z-candidates of z-chains are not printed:
(defglobal ?*print-z-candidates* = FALSE)
;;; By default, the z-candidates of oddagons are printed:
(defglobal ?*print-z-candidates-of-oddagons* = TRUE)



;;; The following variables are used only for T&E and similar procedures
(defglobal ?*print-hypothesis* = TRUE) ; by default, hypotheses are printed when T&E is on
(defglobal ?*print-phase* = TRUE) ; by default, each phase in T&R is printed


(defglobal ?*print-exceptional-patterns* = TRUE)
(defglobal ?*debug* = FALSE)
(defglobal ?*g-debug* = FALSE)


;;; Utilities allowing to change locally the control of what is printed:
(defglobal ?*print-options-muted* = FALSE)
(defglobal ?*print-actions-backup* = ?*print-actions*)
(defglobal ?*print-solution-backup* = ?*print-solution*)
(defglobal ?*print-RS-after-Singles-backup* = ?*print-RS-after-Singles*)
(defglobal ?*print-RS-after-whips[1]-backup* = ?*print-RS-after-whips[1]*)
(defglobal ?*print-final-RS-backup* = ?*print-final-RS*)
(defglobal ?*print-levels-backup* = ?*print-levels*)
(defglobal ?*print-main-levels-backup* = ?*print-main-levels*)
(defglobal ?*print-time-backup* = ?*print-time*)
(defglobal ?*print-hypothesis-backup* = ?*print-hypothesis*)
(defglobal ?*print-phase-backup* = ?*print-phase*)

(deffunction mute-print-options ()
    (if (not ?*print-options-muted*) then
        (bind ?*print-actions-backup* ?*print-actions*)
        (bind ?*print-solution-backup* ?*print-solution*)
        (bind ?*print-RS-after-Singles-backup* ?*print-RS-after-Singles*)
        (bind ?*print-RS-after-whips[1]-backup* ?*print-RS-after-whips[1]*)
        (bind ?*print-final-RS-backup* ?*print-final-RS*)
        (bind ?*print-levels-backup* ?*print-levels*)
        (bind ?*print-main-levels-backup* ?*print-main-levels*)
        (bind ?*print-time-backup* ?*print-time*)
        (bind ?*print-hypothesis-backup* ?*print-hypothesis*)
        (bind ?*print-phase-backup* ?*print-phase*)
        
        (bind ?*print-actions* FALSE)
        (bind ?*print-solution* FALSE)
        (bind ?*print-RS-after-Singles* FALSE)
        (bind ?*print-RS-after-whips[1]* FALSE)
        (bind ?*print-final-RS* FALSE)
        (bind ?*print-levels* FALSE)
        (bind ?*print-main-levels* FALSE)
        (bind ?*print-time* FALSE)
        (bind ?*print-hypothesis* FALSE)
        (bind ?*print-phase* FALSE)
        (bind ?*print-options-muted* TRUE)
    )
)

(deffunction restore-print-options ()
    (if ?*print-options-muted* then
        (bind ?*print-actions* ?*print-actions-backup*)
        (bind ?*print-solution* ?*print-solution-backup*)
        (bind ?*print-RS-after-Singles* ?*print-RS-after-Singles-backup*)
        (bind ?*print-RS-after-whips[1]* ?*print-RS-after-whips[1]-backup*)
        (bind ?*print-final-RS* ?*print-final-RS-backup*)
        (bind ?*print-levels* ?*print-levels-backup*)
        (bind ?*print-main-levels* ?*print-main-levels-backup*)
        (bind ?*print-time* ?*print-time-backup*)
        (bind ?*print-hypothesis* ?*print-hypothesis-backup*)
        (bind ?*print-phase* ?*print-phase-backup*)
        (bind ?*print-options-muted* FALSE)
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Print rule firings according to length (or "size") of defining pattern
;;; Lk is the number of CSP-Variables involved in the pattern definition
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal 
    ?*print-L0* = FALSE
    ?*print-L1* = FALSE
    ?*print-L2* = FALSE
    ?*print-L3* = FALSE
    ?*print-L4* = FALSE
    ?*print-L5* = FALSE
    ?*print-L6* = FALSE
    ?*print-L7* = FALSE
    ?*print-L8* = FALSE
    ?*print-L9* = FALSE
    ?*print-L10* = FALSE
    ?*print-L11* = FALSE
    ?*print-L12* = FALSE
    ?*print-L13* = FALSE
    ?*print-L14* = FALSE
    ?*print-L15* = FALSE
    ?*print-L16* = FALSE
    ?*print-L17* = FALSE
    ?*print-L18* = FALSE
    ?*print-L19* = FALSE
    ?*print-L20* = FALSE
    ?*print-L21* = FALSE
    ?*print-L22* = FALSE
    ?*print-L23* = FALSE
    ?*print-L24* = FALSE
    ?*print-L25* = FALSE
    ?*print-L26* = FALSE
    ?*print-L27* = FALSE
    ?*print-L28* = FALSE
    ?*print-L29* = FALSE
    ?*print-L30* = FALSE
    ?*print-L31* = FALSE
    ?*print-L32* = FALSE
    ?*print-L33* = FALSE
    ?*print-L34* = FALSE
    ?*print-L35* = FALSE
    ?*print-L36* = FALSE
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Print rule firings according to the type (or type and size) of their defining pattern
;;; This is very fine grain details (seldom used - but has been useful in early debugging)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal 
    ?*print-single* = FALSE
    ?*print-pairs* = FALSE
    ?*print-triplets* = FALSE
    ?*print-quads* = FALSE
)


(defglobal
    ?*print-typed-bivalue-chain* = FALSE
    ?*print-typed-bivalue-chain-1* = FALSE
    ?*print-typed-bivalue-chain-2* = FALSE
    ?*print-typed-bivalue-chain-3* = FALSE
    ?*print-typed-bivalue-chain-4* = FALSE
    ?*print-typed-bivalue-chain-5* = FALSE
    ?*print-typed-bivalue-chain-6* = FALSE
    ?*print-typed-bivalue-chain-7* = FALSE
    ?*print-typed-bivalue-chain-8* = FALSE
    ?*print-typed-bivalue-chain-9* = FALSE
    ?*print-typed-bivalue-chain-10* = FALSE
    ?*print-typed-bivalue-chain-11* = FALSE
    ?*print-typed-bivalue-chain-12* = FALSE
    ?*print-typed-bivalue-chain-13* = FALSE
    ?*print-typed-bivalue-chain-14* = FALSE
    ?*print-typed-bivalue-chain-15* = FALSE
    ?*print-typed-bivalue-chain-16* = FALSE
    ?*print-typed-bivalue-chain-17* = FALSE
    ?*print-typed-bivalue-chain-18* = FALSE
    ?*print-typed-bivalue-chain-19* = FALSE
    ?*print-typed-bivalue-chain-20* = FALSE
    ?*print-typed-bivalue-chain-21* = FALSE
    ?*print-typed-bivalue-chain-22* = FALSE
    ?*print-typed-bivalue-chain-23* = FALSE
    ?*print-typed-bivalue-chain-24* = FALSE
    ?*print-typed-bivalue-chain-25* = FALSE
    ?*print-typed-bivalue-chain-26* = FALSE
    ?*print-typed-bivalue-chain-27* = FALSE
    ?*print-typed-bivalue-chain-28* = FALSE
    ?*print-typed-bivalue-chain-29* = FALSE
    ?*print-typed-bivalue-chain-30* = FALSE
    ?*print-typed-bivalue-chain-31* = FALSE
    ?*print-typed-bivalue-chain-32* = FALSE
    ?*print-typed-bivalue-chain-33* = FALSE
    ?*print-typed-bivalue-chain-34* = FALSE
    ?*print-typed-bivalue-chain-35* = FALSE
    ?*print-typed-bivalue-chain-36* = FALSE
)

(defglobal
    ?*print-bivalue-chain* = FALSE
    ?*print-bivalue-chain-1* = FALSE
    ?*print-bivalue-chain-2* = FALSE
    ?*print-bivalue-chain-3* = FALSE
    ?*print-bivalue-chain-4* = FALSE
    ?*print-bivalue-chain-5* = FALSE
    ?*print-bivalue-chain-6* = FALSE
    ?*print-bivalue-chain-7* = FALSE
    ?*print-bivalue-chain-8* = FALSE
    ?*print-bivalue-chain-9* = FALSE
    ?*print-bivalue-chain-10* = FALSE
    ?*print-bivalue-chain-11* = FALSE
    ?*print-bivalue-chain-12* = FALSE
    ?*print-bivalue-chain-13* = FALSE
    ?*print-bivalue-chain-14* = FALSE
    ?*print-bivalue-chain-15* = FALSE
    ?*print-bivalue-chain-16* = FALSE
    ?*print-bivalue-chain-17* = FALSE
    ?*print-bivalue-chain-18* = FALSE
    ?*print-bivalue-chain-19* = FALSE
    ?*print-bivalue-chain-20* = FALSE
    ?*print-bivalue-chain-21* = FALSE
    ?*print-bivalue-chain-22* = FALSE
    ?*print-bivalue-chain-23* = FALSE
    ?*print-bivalue-chain-24* = FALSE
    ?*print-bivalue-chain-25* = FALSE
    ?*print-bivalue-chain-26* = FALSE
    ?*print-bivalue-chain-27* = FALSE
    ?*print-bivalue-chain-28* = FALSE
    ?*print-bivalue-chain-29* = FALSE
    ?*print-bivalue-chain-30* = FALSE
    ?*print-bivalue-chain-31* = FALSE
    ?*print-bivalue-chain-32* = FALSE
    ?*print-bivalue-chain-33* = FALSE
    ?*print-bivalue-chain-34* = FALSE
    ?*print-bivalue-chain-35* = FALSE
    ?*print-bivalue-chain-36* = FALSE
)

(defglobal
    ?*print-typed-z-chain* = FALSE
    ?*print-typed-z-chain-1* = FALSE
    ?*print-typed-z-chain-2* = FALSE
    ?*print-typed-z-chain-3* = FALSE
    ?*print-typed-z-chain-4* = FALSE
    ?*print-typed-z-chain-5* = FALSE
    ?*print-typed-z-chain-6* = FALSE
    ?*print-typed-z-chain-7* = FALSE
    ?*print-typed-z-chain-8* = FALSE
    ?*print-typed-z-chain-9* = FALSE
    ?*print-typed-z-chain-10* = FALSE
    ?*print-typed-z-chain-11* = FALSE
    ?*print-typed-z-chain-12* = FALSE
    ?*print-typed-z-chain-13* = FALSE
    ?*print-typed-z-chain-14* = FALSE
    ?*print-typed-z-chain-15* = FALSE
    ?*print-typed-z-chain-16* = FALSE
    ?*print-typed-z-chain-17* = FALSE
    ?*print-typed-z-chain-18* = FALSE
    ?*print-typed-z-chain-19* = FALSE
    ?*print-typed-z-chain-20* = FALSE
    ?*print-typed-z-chain-21* = FALSE
    ?*print-typed-z-chain-22* = FALSE
    ?*print-typed-z-chain-23* = FALSE
    ?*print-typed-z-chain-24* = FALSE
    ?*print-typed-z-chain-25* = FALSE
    ?*print-typed-z-chain-26* = FALSE
    ?*print-typed-z-chain-27* = FALSE
    ?*print-typed-z-chain-28* = FALSE
    ?*print-typed-z-chain-29* = FALSE
    ?*print-typed-z-chain-30* = FALSE
    ?*print-typed-z-chain-31* = FALSE
    ?*print-typed-z-chain-32* = FALSE
    ?*print-typed-z-chain-33* = FALSE
    ?*print-typed-z-chain-34* = FALSE
    ?*print-typed-z-chain-35* = FALSE
    ?*print-typed-z-chain-36* = FALSE
)

(defglobal
    ?*print-z-chain* = FALSE
    ?*print-z-chain-1* = FALSE
    ?*print-z-chain-2* = FALSE
    ?*print-z-chain-3* = FALSE
    ?*print-z-chain-4* = FALSE
    ?*print-z-chain-5* = FALSE
    ?*print-z-chain-6* = FALSE
    ?*print-z-chain-7* = FALSE
    ?*print-z-chain-8* = FALSE
    ?*print-z-chain-9* = FALSE
    ?*print-z-chain-10* = FALSE
    ?*print-z-chain-11* = FALSE
    ?*print-z-chain-12* = FALSE
    ?*print-z-chain-13* = FALSE
    ?*print-z-chain-14* = FALSE
    ?*print-z-chain-15* = FALSE
    ?*print-z-chain-16* = FALSE
    ?*print-z-chain-17* = FALSE
    ?*print-z-chain-18* = FALSE
    ?*print-z-chain-19* = FALSE
    ?*print-z-chain-20* = FALSE
    ?*print-z-chain-21* = FALSE
    ?*print-z-chain-22* = FALSE
    ?*print-z-chain-23* = FALSE
    ?*print-z-chain-24* = FALSE
    ?*print-z-chain-25* = FALSE
    ?*print-z-chain-26* = FALSE
    ?*print-z-chain-27* = FALSE
    ?*print-z-chain-28* = FALSE
    ?*print-z-chain-29* = FALSE
    ?*print-z-chain-30* = FALSE
    ?*print-z-chain-31* = FALSE
    ?*print-z-chain-32* = FALSE
    ?*print-z-chain-33* = FALSE
    ?*print-z-chain-34* = FALSE
    ?*print-z-chain-35* = FALSE
    ?*print-z-chain-36* = FALSE
)

(defglobal
    ?*print-oddagon* = FALSE
    ?*print-oddagon-3* = FALSE
    ?*print-oddagon-5* = FALSE
    ?*print-oddagon-7* = FALSE
    ?*print-oddagon-9* = FALSE
    ?*print-oddagon-11* = FALSE
    ?*print-oddagon-13* = FALSE
    ?*print-oddagon-15* = FALSE
    ?*print-oddagon-17* = FALSE
    ?*print-oddagon-19* = FALSE
    ?*print-oddagon-21* = FALSE
    ?*print-oddagon-23* = FALSE
    ?*print-oddagon-25* = FALSE
    ?*print-oddagon-27* = FALSE
    ?*print-oddagon-29* = FALSE
    ?*print-oddagon-31* = FALSE
    ?*print-oddagon-33* = FALSE
    ?*print-oddagon-35* = FALSE
)

(defglobal
    ?*print-rev-chain-1* = FALSE
    ?*print-rev-chain-2* = FALSE
    ?*print-rev-chain-3* = FALSE
    ?*print-rev-chain-4* = FALSE
    ?*print-rev-chain-5* = FALSE
    ?*print-rev-chain-6* = FALSE
    ?*print-rev-chain-7* = FALSE
    ?*print-rev-chain-8* = FALSE
    ?*print-rev-chain-9* = FALSE
    ?*print-rev-chain-10* = FALSE
    ?*print-rev-chain-11* = FALSE
    ?*print-rev-chain-12* = FALSE
    ?*print-rev-chain-13* = FALSE
    ?*print-rev-chain-14* = FALSE
    ?*print-rev-chain-15* = FALSE
    ?*print-rev-chain-16* = FALSE
    ?*print-rev-chain-17* = FALSE
    ?*print-rev-chain-18* = FALSE
    ?*print-rev-chain-19* = FALSE
    ?*print-rev-chain-20* = FALSE
    ?*print-rev-chain-21* = FALSE
    ?*print-rev-chain-22* = FALSE
    ?*print-rev-chain-23* = FALSE
    ?*print-rev-chain-24* = FALSE
    ?*print-rev-chain-25* = FALSE
    ?*print-rev-chain-26* = FALSE
    ?*print-rev-chain-27* = FALSE
    ?*print-rev-chain-28* = FALSE
    ?*print-rev-chain-29* = FALSE
    ?*print-rev-chain-30* = FALSE
    ?*print-rev-chain-31* = FALSE
    ?*print-rev-chain-32* = FALSE
    ?*print-rev-chain-33* = FALSE
    ?*print-rev-chain-34* = FALSE
    ?*print-rev-chain-35* = FALSE
    ?*print-rev-chain-36* = FALSE
)



(defglobal
    ?*print-typed-t-whip* = FALSE
    ?*print-typed-t-whip-1* = FALSE
    ?*print-typed-t-whip-2* = FALSE
    ?*print-typed-t-whip-3* = FALSE
    ?*print-typed-t-whip-4* = FALSE
    ?*print-typed-t-whip-5* = FALSE
    ?*print-typed-t-whip-6* = FALSE
    ?*print-typed-t-whip-7* = FALSE
    ?*print-typed-t-whip-8* = FALSE
    ?*print-typed-t-whip-9* = FALSE
    ?*print-typed-t-whip-10* = FALSE
    ?*print-typed-t-whip-11* = FALSE
    ?*print-typed-t-whip-12* = FALSE
    ?*print-typed-t-whip-13* = FALSE
    ?*print-typed-t-whip-14* = FALSE
    ?*print-typed-t-whip-15* = FALSE
    ?*print-typed-t-whip-16* = FALSE
    ?*print-typed-t-whip-17* = FALSE
    ?*print-typed-t-whip-18* = FALSE
    ?*print-typed-t-whip-19* = FALSE
    ?*print-typed-t-whip-20* = FALSE
    ?*print-typed-t-whip-21* = FALSE
    ?*print-typed-t-whip-22* = FALSE
    ?*print-typed-t-whip-23* = FALSE
    ?*print-typed-t-whip-24* = FALSE
    ?*print-typed-t-whip-25* = FALSE
    ?*print-typed-t-whip-26* = FALSE
    ?*print-typed-t-whip-27* = FALSE
    ?*print-typed-t-whip-28* = FALSE
    ?*print-typed-t-whip-29* = FALSE
    ?*print-typed-t-whip-30* = FALSE
    ?*print-typed-t-whip-31* = FALSE
    ?*print-typed-t-whip-32* = FALSE
    ?*print-typed-t-whip-33* = FALSE
    ?*print-typed-t-whip-34* = FALSE
    ?*print-typed-t-whip-35* = FALSE
    ?*print-typed-t-whip-36* = FALSE
)

(defglobal
    ?*print-t-whip* = FALSE
    ?*print-t-whip-1* = FALSE
    ?*print-t-whip-2* = FALSE
    ?*print-t-whip-3* = FALSE
    ?*print-t-whip-4* = FALSE
    ?*print-t-whip-5* = FALSE
    ?*print-t-whip-6* = FALSE
    ?*print-t-whip-7* = FALSE
    ?*print-t-whip-8* = FALSE
    ?*print-t-whip-9* = FALSE
    ?*print-t-whip-10* = FALSE
    ?*print-t-whip-11* = FALSE
    ?*print-t-whip-12* = FALSE
    ?*print-t-whip-13* = FALSE
    ?*print-t-whip-14* = FALSE
    ?*print-t-whip-15* = FALSE
    ?*print-t-whip-16* = FALSE
    ?*print-t-whip-17* = FALSE
    ?*print-t-whip-18* = FALSE
    ?*print-t-whip-19* = FALSE
    ?*print-t-whip-20* = FALSE
    ?*print-t-whip-21* = FALSE
    ?*print-t-whip-22* = FALSE
    ?*print-t-whip-23* = FALSE
    ?*print-t-whip-24* = FALSE
    ?*print-t-whip-25* = FALSE
    ?*print-t-whip-26* = FALSE
    ?*print-t-whip-27* = FALSE
    ?*print-t-whip-28* = FALSE
    ?*print-t-whip-29* = FALSE
    ?*print-t-whip-30* = FALSE
    ?*print-t-whip-31* = FALSE
    ?*print-t-whip-32* = FALSE
    ?*print-t-whip-33* = FALSE
    ?*print-t-whip-34* = FALSE
    ?*print-t-whip-35* = FALSE
    ?*print-t-whip-36* = FALSE
)

(defglobal
    ?*print-typed-whip* = FALSE
    ?*print-typed-whip-1* = FALSE
    ?*print-typed-whip-2* = FALSE
    ?*print-typed-whip-3* = FALSE
    ?*print-typed-whip-4* = FALSE
    ?*print-typed-whip-5* = FALSE
    ?*print-typed-whip-6* = FALSE
    ?*print-typed-whip-7* = FALSE
    ?*print-typed-whip-8* = FALSE
    ?*print-typed-whip-9* = FALSE
    ?*print-typed-whip-10* = FALSE
    ?*print-typed-whip-11* = FALSE
    ?*print-typed-whip-12* = FALSE
    ?*print-typed-whip-13* = FALSE
    ?*print-typed-whip-14* = FALSE
    ?*print-typed-whip-15* = FALSE
    ?*print-typed-whip-16* = FALSE
    ?*print-typed-whip-17* = FALSE
    ?*print-typed-whip-18* = FALSE
    ?*print-typed-whip-19* = FALSE
    ?*print-typed-whip-20* = FALSE
    ?*print-typed-whip-21* = FALSE
    ?*print-typed-whip-22* = FALSE
    ?*print-typed-whip-23* = FALSE
    ?*print-typed-whip-24* = FALSE
    ?*print-typed-whip-25* = FALSE
    ?*print-typed-whip-26* = FALSE
    ?*print-typed-whip-27* = FALSE
    ?*print-typed-whip-28* = FALSE
    ?*print-typed-whip-29* = FALSE
    ?*print-typed-whip-30* = FALSE
    ?*print-typed-whip-31* = FALSE
    ?*print-typed-whip-32* = FALSE
    ?*print-typed-whip-33* = FALSE
    ?*print-typed-whip-34* = FALSE
    ?*print-typed-whip-35* = FALSE
    ?*print-typed-whip-36* = FALSE
)

(defglobal 
    ?*print-whip* = FALSE
    ?*print-whip-1* = FALSE
    ?*print-whip-2* = FALSE
    ?*print-whip-3* = FALSE
    ?*print-whip-4* = FALSE
    ?*print-whip-5* = FALSE
    ?*print-whip-6* = FALSE
    ?*print-whip-7* = FALSE
    ?*print-whip-8* = FALSE
    ?*print-whip-9* = FALSE
    ?*print-whip-10* = FALSE
    ?*print-whip-11* = FALSE
    ?*print-whip-12* = FALSE
    ?*print-whip-13* = FALSE
    ?*print-whip-14* = FALSE
    ?*print-whip-15* = FALSE
    ?*print-whip-16* = FALSE
    ?*print-whip-17* = FALSE
    ?*print-whip-18* = FALSE
    ?*print-whip-19* = FALSE
    ?*print-whip-20* = FALSE
    ?*print-whip-21* = FALSE
    ?*print-whip-22* = FALSE
    ?*print-whip-23* = FALSE
    ?*print-whip-24* = FALSE
    ?*print-whip-25* = FALSE
    ?*print-whip-26* = FALSE
    ?*print-whip-27* = FALSE
    ?*print-whip-28* = FALSE
    ?*print-whip-29* = FALSE
    ?*print-whip-30* = FALSE
    ?*print-whip-31* = FALSE
    ?*print-whip-32* = FALSE
    ?*print-whip-33* = FALSE
    ?*print-whip-34* = FALSE
    ?*print-whip-35* = FALSE
    ?*print-whip-36* = FALSE
)

(defglobal 
    ?*print-braid* = FALSE
    ?*print-braid-1* = FALSE
    ?*print-braid-2* = FALSE
    ?*print-braid-3* = FALSE
    ?*print-braid-4* = FALSE
    ?*print-braid-5* = FALSE
    ?*print-braid-6* = FALSE
    ?*print-braid-7* = FALSE
    ?*print-braid-8* = FALSE
    ?*print-braid-9* = FALSE
    ?*print-braid-10* = FALSE
    ?*print-braid-11* = FALSE
    ?*print-braid-12* = FALSE
    ?*print-braid-13* = FALSE
    ?*print-braid-14* = FALSE
    ?*print-braid-15* = FALSE
    ?*print-braid-16* = FALSE
    ?*print-braid-17* = FALSE
    ?*print-braid-18* = FALSE
    ?*print-braid-19* = FALSE
    ?*print-braid-20* = FALSE
    ?*print-braid-21* = FALSE
    ?*print-braid-22* = FALSE
    ?*print-braid-23* = FALSE
    ?*print-braid-24* = FALSE
    ?*print-braid-25* = FALSE
    ?*print-braid-26* = FALSE
    ?*print-braid-27* = FALSE
    ?*print-braid-28* = FALSE
    ?*print-braid-29* = FALSE
    ?*print-braid-30* = FALSE
    ?*print-braid-31* = FALSE
    ?*print-braid-32* = FALSE
    ?*print-braid-33* = FALSE
    ?*print-braid-34* = FALSE
    ?*print-braid-35* = FALSE
    ?*print-braid-36* = FALSE
)

(defglobal 
    ?*print-g-bivalue-chain* = FALSE
    ?*print-g-bivalue-chain-1* = FALSE
    ?*print-g-bivalue-chain-2* = FALSE
    ?*print-g-bivalue-chain-3* = FALSE
    ?*print-g-bivalue-chain-4* = FALSE
    ?*print-g-bivalue-chain-5* = FALSE
    ?*print-g-bivalue-chain-6* = FALSE
    ?*print-g-bivalue-chain-7* = FALSE
    ?*print-g-bivalue-chain-8* = FALSE
    ?*print-g-bivalue-chain-9* = FALSE
    ?*print-g-bivalue-chain-10* = FALSE
    ?*print-g-bivalue-chain-11* = FALSE
    ?*print-g-bivalue-chain-12* = FALSE
    ?*print-g-bivalue-chain-13* = FALSE
    ?*print-g-bivalue-chain-14* = FALSE
    ?*print-g-bivalue-chain-15* = FALSE
    ?*print-g-bivalue-chain-16* = FALSE
    ?*print-g-bivalue-chain-17* = FALSE
    ?*print-g-bivalue-chain-18* = FALSE
    ?*print-g-bivalue-chain-19* = FALSE
    ?*print-g-bivalue-chain-20* = FALSE
    ?*print-g-bivalue-chain-21* = FALSE
    ?*print-g-bivalue-chain-22* = FALSE
    ?*print-g-bivalue-chain-23* = FALSE
    ?*print-g-bivalue-chain-24* = FALSE
    ?*print-g-bivalue-chain-25* = FALSE
    ?*print-g-bivalue-chain-26* = FALSE
    ?*print-g-bivalue-chain-27* = FALSE
    ?*print-g-bivalue-chain-28* = FALSE
    ?*print-g-bivalue-chain-29* = FALSE
    ?*print-g-bivalue-chain-30* = FALSE
    ?*print-g-bivalue-chain-31* = FALSE
    ?*print-g-bivalue-chain-32* = FALSE
    ?*print-g-bivalue-chain-33* = FALSE
    ?*print-g-bivalue-chain-34* = FALSE
    ?*print-g-bivalue-chain-35* = FALSE
    ?*print-g-bivalue-chain-36* = FALSE
)

(defglobal
    ?*print-g2whip* = FALSE
    ?*print-g2whip-1* = FALSE
    ?*print-g2whip-2* = FALSE
    ?*print-g2whip-3* = FALSE
    ?*print-g2whip-4* = FALSE
    ?*print-g2whip-5* = FALSE
    ?*print-g2whip-6* = FALSE
    ?*print-g2whip-7* = FALSE
    ?*print-g2whip-8* = FALSE
    ?*print-g2whip-9* = FALSE
    ?*print-g2whip-10* = FALSE
    ?*print-g2whip-11* = FALSE
    ?*print-g2whip-12* = FALSE
    ?*print-g2whip-13* = FALSE
    ?*print-g2whip-14* = FALSE
    ?*print-g2whip-15* = FALSE
    ?*print-g2whip-16* = FALSE
    ?*print-g2whip-17* = FALSE
    ?*print-g2whip-18* = FALSE
    ?*print-g2whip-19* = FALSE
    ?*print-g2whip-20* = FALSE
    ?*print-g2whip-21* = FALSE
    ?*print-g2whip-22* = FALSE
    ?*print-g2whip-23* = FALSE
    ?*print-g2whip-24* = FALSE
    ?*print-g2whip-25* = FALSE
    ?*print-g2whip-26* = FALSE
    ?*print-g2whip-27* = FALSE
    ?*print-g2whip-28* = FALSE
    ?*print-g2whip-29* = FALSE
    ?*print-g2whip-30* = FALSE
    ?*print-g2whip-31* = FALSE
    ?*print-g2whip-32* = FALSE
    ?*print-g2whip-33* = FALSE
    ?*print-g2whip-34* = FALSE
    ?*print-g2whip-35* = FALSE
    ?*print-g2whip-36* = FALSE
)

(defglobal 
    ?*print-g3whip* = FALSE
    ?*print-g3whip-1* = FALSE
    ?*print-g3whip-2* = FALSE
    ?*print-g3whip-3* = FALSE
    ?*print-g3whip-4* = FALSE
    ?*print-g3whip-5* = FALSE
    ?*print-g3whip-6* = FALSE
    ?*print-g3whip-7* = FALSE
    ?*print-g3whip-8* = FALSE
    ?*print-g3whip-9* = FALSE
    ?*print-g3whip-10* = FALSE
    ?*print-g3whip-11* = FALSE
    ?*print-g3whip-12* = FALSE
    ?*print-g3whip-13* = FALSE
    ?*print-g3whip-14* = FALSE
    ?*print-g3whip-15* = FALSE
    ?*print-g3whip-16* = FALSE
    ?*print-g3whip-17* = FALSE
    ?*print-g3whip-18* = FALSE
    ?*print-g3whip-19* = FALSE
    ?*print-g3whip-20* = FALSE
    ?*print-g3whip-21* = FALSE
    ?*print-g3whip-22* = FALSE
    ?*print-g3whip-23* = FALSE
    ?*print-g3whip-24* = FALSE
    ?*print-g3whip-25* = FALSE
    ?*print-g3whip-26* = FALSE
    ?*print-g3whip-27* = FALSE
    ?*print-g3whip-28* = FALSE
    ?*print-g3whip-29* = FALSE
    ?*print-g3whip-30* = FALSE
    ?*print-g3whip-31* = FALSE
    ?*print-g3whip-32* = FALSE
    ?*print-g3whip-33* = FALSE
    ?*print-g3whip-34* = FALSE
    ?*print-g3whip-35* = FALSE
    ?*print-g3whip-36* = FALSE
)

(defglobal
   ?*print-typed-gwhip* = FALSE
    ?*print-typed-gwhip-1* = FALSE
    ?*print-typed-gwhip-2* = FALSE
    ?*print-typed-gwhip-3* = FALSE
    ?*print-typed-gwhip-4* = FALSE
    ?*print-typed-gwhip-5* = FALSE
    ?*print-typed-gwhip-6* = FALSE
    ?*print-typed-gwhip-7* = FALSE
    ?*print-typed-gwhip-8* = FALSE
    ?*print-typed-gwhip-9* = FALSE
    ?*print-typed-gwhip-10* = FALSE
    ?*print-typed-gwhip-11* = FALSE
    ?*print-typed-gwhip-12* = FALSE
    ?*print-typed-gwhip-13* = FALSE
    ?*print-typed-gwhip-14* = FALSE
    ?*print-typed-gwhip-15* = FALSE
    ?*print-typed-gwhip-16* = FALSE
    ?*print-typed-gwhip-17* = FALSE
    ?*print-typed-gwhip-18* = FALSE
    ?*print-typed-gwhip-19* = FALSE
    ?*print-typed-gwhip-20* = FALSE
    ?*print-typed-gwhip-21* = FALSE
    ?*print-typed-gwhip-22* = FALSE
    ?*print-typed-gwhip-23* = FALSE
    ?*print-typed-gwhip-24* = FALSE
    ?*print-typed-gwhip-25* = FALSE
    ?*print-typed-gwhip-26* = FALSE
    ?*print-typed-gwhip-27* = FALSE
    ?*print-typed-gwhip-28* = FALSE
    ?*print-typed-gwhip-29* = FALSE
    ?*print-typed-gwhip-30* = FALSE
    ?*print-typed-gwhip-31* = FALSE
    ?*print-typed-gwhip-32* = FALSE
    ?*print-typed-gwhip-33* = FALSE
    ?*print-typed-gwhip-34* = FALSE
    ?*print-typed-gwhip-35* = FALSE
    ?*print-typed-gwhip-36* = FALSE
)

(defglobal
   ?*print-gwhip* = FALSE
    ?*print-gwhip-1* = FALSE
    ?*print-gwhip-2* = FALSE
    ?*print-gwhip-3* = FALSE
    ?*print-gwhip-4* = FALSE
    ?*print-gwhip-5* = FALSE
    ?*print-gwhip-6* = FALSE
    ?*print-gwhip-7* = FALSE
    ?*print-gwhip-8* = FALSE
    ?*print-gwhip-9* = FALSE
    ?*print-gwhip-10* = FALSE
    ?*print-gwhip-11* = FALSE
    ?*print-gwhip-12* = FALSE
    ?*print-gwhip-13* = FALSE
    ?*print-gwhip-14* = FALSE
    ?*print-gwhip-15* = FALSE
    ?*print-gwhip-16* = FALSE
    ?*print-gwhip-17* = FALSE
    ?*print-gwhip-18* = FALSE
    ?*print-gwhip-19* = FALSE
    ?*print-gwhip-20* = FALSE
    ?*print-gwhip-21* = FALSE
    ?*print-gwhip-22* = FALSE
    ?*print-gwhip-23* = FALSE
    ?*print-gwhip-24* = FALSE
    ?*print-gwhip-25* = FALSE
    ?*print-gwhip-26* = FALSE
    ?*print-gwhip-27* = FALSE
    ?*print-gwhip-28* = FALSE
    ?*print-gwhip-29* = FALSE
    ?*print-gwhip-30* = FALSE
    ?*print-gwhip-31* = FALSE
    ?*print-gwhip-32* = FALSE
    ?*print-gwhip-33* = FALSE
    ?*print-gwhip-34* = FALSE
    ?*print-gwhip-35* = FALSE
    ?*print-gwhip-36* = FALSE
)

(defglobal
    ?*print-gbraid* = FALSE
    ?*print-gbraid-1* = FALSE
    ?*print-gbraid-2* = FALSE
    ?*print-gbraid-3* = FALSE
    ?*print-gbraid-4* = FALSE
    ?*print-gbraid-5* = FALSE
    ?*print-gbraid-6* = FALSE
    ?*print-gbraid-7* = FALSE
    ?*print-gbraid-8* = FALSE
    ?*print-gbraid-9* = FALSE
    ?*print-gbraid-10* = FALSE
    ?*print-gbraid-11* = FALSE
    ?*print-gbraid-12* = FALSE
    ?*print-gbraid-13* = FALSE
    ?*print-gbraid-14* = FALSE
    ?*print-gbraid-15* = FALSE
    ?*print-gbraid-16* = FALSE
    ?*print-gbraid-17* = FALSE
    ?*print-gbraid-18* = FALSE
    ?*print-gbraid-19* = FALSE
    ?*print-gbraid-20* = FALSE
    ?*print-gbraid-21* = FALSE
    ?*print-gbraid-22* = FALSE
    ?*print-gbraid-23* = FALSE
    ?*print-gbraid-24* = FALSE
    ?*print-gbraid-25* = FALSE
    ?*print-gbraid-26* = FALSE
    ?*print-gbraid-27* = FALSE
    ?*print-gbraid-28* = FALSE
    ?*print-gbraid-29* = FALSE
    ?*print-gbraid-30* = FALSE
    ?*print-gbraid-31* = FALSE
    ?*print-gbraid-32* = FALSE
    ?*print-gbraid-33* = FALSE
    ?*print-gbraid-34* = FALSE
    ?*print-gbraid-35* = FALSE
    ?*print-gbraid-36* = FALSE
)



(defglobal
    ?*print-OR2-forcing-whip* = FALSE
    ?*print-OR2-forcing-whip-1* = FALSE
    ?*print-OR2-forcing-whip-2* = FALSE
    ?*print-OR2-forcing-whip-3* = FALSE
    ?*print-OR2-forcing-whip-4* = FALSE
    ?*print-OR2-forcing-whip-5* = FALSE
    ?*print-OR2-forcing-whip-6* = FALSE
    ?*print-OR2-forcing-whip-7* = FALSE
    ?*print-OR2-forcing-whip-8* = FALSE
    ?*print-OR2-forcing-whip-9* = FALSE
    ?*print-OR2-forcing-whip-10* = FALSE
    ?*print-OR2-forcing-whip-11* = FALSE
    ?*print-OR2-forcing-whip-12* = FALSE
    ?*print-OR2-forcing-whip-13* = FALSE
    ?*print-OR2-forcing-whip-14* = FALSE
    ?*print-OR2-forcing-whip-15* = FALSE
    ?*print-OR2-forcing-whip-16* = FALSE
    ?*print-OR2-forcing-whip-17* = FALSE
    ?*print-OR2-forcing-whip-18* = FALSE
    ?*print-OR2-forcing-whip-19* = FALSE
    ?*print-OR2-forcing-whip-20* = FALSE
    ?*print-OR2-forcing-whip-21* = FALSE
    ?*print-OR2-forcing-whip-22* = FALSE
    ?*print-OR2-forcing-whip-23* = FALSE
    ?*print-OR2-forcing-whip-24* = FALSE
    ?*print-OR2-forcing-whip-25* = FALSE
    ?*print-OR2-forcing-whip-26* = FALSE
    ?*print-OR2-forcing-whip-27* = FALSE
    ?*print-OR2-forcing-whip-28* = FALSE
    ?*print-OR2-forcing-whip-29* = FALSE
    ?*print-OR2-forcing-whip-30* = FALSE
    ?*print-OR2-forcing-whip-31* = FALSE
    ?*print-OR2-forcing-whip-32* = FALSE
    ?*print-OR2-forcing-whip-33* = FALSE
    ?*print-OR2-forcing-whip-34* = FALSE
    ?*print-OR2-forcing-whip-35* = FALSE
    ?*print-OR2-forcing-whip-36* = FALSE
)

(defglobal
    ?*print-OR3-forcing-whip* = FALSE
    ?*print-OR3-forcing-whip-1* = FALSE
    ?*print-OR3-forcing-whip-2* = FALSE
    ?*print-OR3-forcing-whip-3* = FALSE
    ?*print-OR3-forcing-whip-4* = FALSE
    ?*print-OR3-forcing-whip-5* = FALSE
    ?*print-OR3-forcing-whip-6* = FALSE
    ?*print-OR3-forcing-whip-7* = FALSE
    ?*print-OR3-forcing-whip-8* = FALSE
    ?*print-OR3-forcing-whip-9* = FALSE
    ?*print-OR3-forcing-whip-10* = FALSE
    ?*print-OR3-forcing-whip-11* = FALSE
    ?*print-OR3-forcing-whip-12* = FALSE
    ?*print-OR3-forcing-whip-13* = FALSE
    ?*print-OR3-forcing-whip-14* = FALSE
    ?*print-OR3-forcing-whip-15* = FALSE
    ?*print-OR3-forcing-whip-16* = FALSE
    ?*print-OR3-forcing-whip-17* = FALSE
    ?*print-OR3-forcing-whip-18* = FALSE
    ?*print-OR3-forcing-whip-19* = FALSE
    ?*print-OR3-forcing-whip-20* = FALSE
    ?*print-OR3-forcing-whip-21* = FALSE
    ?*print-OR3-forcing-whip-22* = FALSE
    ?*print-OR3-forcing-whip-23* = FALSE
    ?*print-OR3-forcing-whip-24* = FALSE
    ?*print-OR3-forcing-whip-25* = FALSE
    ?*print-OR3-forcing-whip-26* = FALSE
    ?*print-OR3-forcing-whip-27* = FALSE
    ?*print-OR3-forcing-whip-28* = FALSE
    ?*print-OR3-forcing-whip-29* = FALSE
    ?*print-OR3-forcing-whip-30* = FALSE
    ?*print-OR3-forcing-whip-31* = FALSE
    ?*print-OR3-forcing-whip-32* = FALSE
    ?*print-OR3-forcing-whip-33* = FALSE
    ?*print-OR3-forcing-whip-34* = FALSE
    ?*print-OR3-forcing-whip-35* = FALSE
    ?*print-OR3-forcing-whip-36* = FALSE
)

(defglobal
    ?*print-OR4-forcing-whip* = FALSE
    ?*print-OR4-forcing-whip-1* = FALSE
    ?*print-OR4-forcing-whip-2* = FALSE
    ?*print-OR4-forcing-whip-3* = FALSE
    ?*print-OR4-forcing-whip-4* = FALSE
    ?*print-OR4-forcing-whip-5* = FALSE
    ?*print-OR4-forcing-whip-6* = FALSE
    ?*print-OR4-forcing-whip-7* = FALSE
    ?*print-OR4-forcing-whip-8* = FALSE
    ?*print-OR4-forcing-whip-9* = FALSE
    ?*print-OR4-forcing-whip-10* = FALSE
    ?*print-OR4-forcing-whip-11* = FALSE
    ?*print-OR4-forcing-whip-12* = FALSE
    ?*print-OR4-forcing-whip-13* = FALSE
    ?*print-OR4-forcing-whip-14* = FALSE
    ?*print-OR4-forcing-whip-15* = FALSE
    ?*print-OR4-forcing-whip-16* = FALSE
    ?*print-OR4-forcing-whip-17* = FALSE
    ?*print-OR4-forcing-whip-18* = FALSE
    ?*print-OR4-forcing-whip-19* = FALSE
    ?*print-OR4-forcing-whip-20* = FALSE
    ?*print-OR4-forcing-whip-21* = FALSE
    ?*print-OR4-forcing-whip-22* = FALSE
    ?*print-OR4-forcing-whip-23* = FALSE
    ?*print-OR4-forcing-whip-24* = FALSE
    ?*print-OR4-forcing-whip-25* = FALSE
    ?*print-OR4-forcing-whip-26* = FALSE
    ?*print-OR4-forcing-whip-27* = FALSE
    ?*print-OR4-forcing-whip-28* = FALSE
    ?*print-OR4-forcing-whip-29* = FALSE
    ?*print-OR4-forcing-whip-30* = FALSE
    ?*print-OR4-forcing-whip-31* = FALSE
    ?*print-OR4-forcing-whip-32* = FALSE
    ?*print-OR4-forcing-whip-33* = FALSE
    ?*print-OR4-forcing-whip-34* = FALSE
    ?*print-OR4-forcing-whip-35* = FALSE
    ?*print-OR4-forcing-whip-36* = FALSE
)

(defglobal
    ?*print-OR5-forcing-whip* = FALSE
    ?*print-OR5-forcing-whip-1* = FALSE
    ?*print-OR5-forcing-whip-2* = FALSE
    ?*print-OR5-forcing-whip-3* = FALSE
    ?*print-OR5-forcing-whip-4* = FALSE
    ?*print-OR5-forcing-whip-5* = FALSE
    ?*print-OR5-forcing-whip-6* = FALSE
    ?*print-OR5-forcing-whip-7* = FALSE
    ?*print-OR5-forcing-whip-8* = FALSE
    ?*print-OR5-forcing-whip-9* = FALSE
    ?*print-OR5-forcing-whip-10* = FALSE
    ?*print-OR5-forcing-whip-11* = FALSE
    ?*print-OR5-forcing-whip-12* = FALSE
    ?*print-OR5-forcing-whip-13* = FALSE
    ?*print-OR5-forcing-whip-14* = FALSE
    ?*print-OR5-forcing-whip-15* = FALSE
    ?*print-OR5-forcing-whip-16* = FALSE
    ?*print-OR5-forcing-whip-17* = FALSE
    ?*print-OR5-forcing-whip-18* = FALSE
    ?*print-OR5-forcing-whip-19* = FALSE
    ?*print-OR5-forcing-whip-20* = FALSE
    ?*print-OR5-forcing-whip-21* = FALSE
    ?*print-OR5-forcing-whip-22* = FALSE
    ?*print-OR5-forcing-whip-23* = FALSE
    ?*print-OR5-forcing-whip-24* = FALSE
    ?*print-OR5-forcing-whip-25* = FALSE
    ?*print-OR5-forcing-whip-26* = FALSE
    ?*print-OR5-forcing-whip-27* = FALSE
    ?*print-OR5-forcing-whip-28* = FALSE
    ?*print-OR5-forcing-whip-29* = FALSE
    ?*print-OR5-forcing-whip-30* = FALSE
    ?*print-OR5-forcing-whip-31* = FALSE
    ?*print-OR5-forcing-whip-32* = FALSE
    ?*print-OR5-forcing-whip-33* = FALSE
    ?*print-OR5-forcing-whip-34* = FALSE
    ?*print-OR5-forcing-whip-35* = FALSE
    ?*print-OR5-forcing-whip-36* = FALSE
)

(defglobal
    ?*print-OR6-forcing-whip* = FALSE
    ?*print-OR6-forcing-whip-1* = FALSE
    ?*print-OR6-forcing-whip-2* = FALSE
    ?*print-OR6-forcing-whip-3* = FALSE
    ?*print-OR6-forcing-whip-4* = FALSE
    ?*print-OR6-forcing-whip-5* = FALSE
    ?*print-OR6-forcing-whip-6* = FALSE
    ?*print-OR6-forcing-whip-7* = FALSE
    ?*print-OR6-forcing-whip-8* = FALSE
    ?*print-OR6-forcing-whip-9* = FALSE
    ?*print-OR6-forcing-whip-10* = FALSE
    ?*print-OR6-forcing-whip-11* = FALSE
    ?*print-OR6-forcing-whip-12* = FALSE
    ?*print-OR6-forcing-whip-13* = FALSE
    ?*print-OR6-forcing-whip-14* = FALSE
    ?*print-OR6-forcing-whip-15* = FALSE
    ?*print-OR6-forcing-whip-16* = FALSE
    ?*print-OR6-forcing-whip-17* = FALSE
    ?*print-OR6-forcing-whip-18* = FALSE
    ?*print-OR6-forcing-whip-19* = FALSE
    ?*print-OR6-forcing-whip-20* = FALSE
    ?*print-OR6-forcing-whip-21* = FALSE
    ?*print-OR6-forcing-whip-22* = FALSE
    ?*print-OR6-forcing-whip-23* = FALSE
    ?*print-OR6-forcing-whip-24* = FALSE
    ?*print-OR6-forcing-whip-25* = FALSE
    ?*print-OR6-forcing-whip-26* = FALSE
    ?*print-OR6-forcing-whip-27* = FALSE
    ?*print-OR6-forcing-whip-28* = FALSE
    ?*print-OR6-forcing-whip-29* = FALSE
    ?*print-OR6-forcing-whip-30* = FALSE
    ?*print-OR6-forcing-whip-31* = FALSE
    ?*print-OR6-forcing-whip-32* = FALSE
    ?*print-OR6-forcing-whip-33* = FALSE
    ?*print-OR6-forcing-whip-34* = FALSE
    ?*print-OR6-forcing-whip-35* = FALSE
    ?*print-OR6-forcing-whip-36* = FALSE
)

(defglobal
    ?*print-OR7-forcing-whip* = FALSE
    ?*print-OR7-forcing-whip-1* = FALSE
    ?*print-OR7-forcing-whip-2* = FALSE
    ?*print-OR7-forcing-whip-3* = FALSE
    ?*print-OR7-forcing-whip-4* = FALSE
    ?*print-OR7-forcing-whip-5* = FALSE
    ?*print-OR7-forcing-whip-6* = FALSE
    ?*print-OR7-forcing-whip-7* = FALSE
    ?*print-OR7-forcing-whip-8* = FALSE
    ?*print-OR7-forcing-whip-9* = FALSE
    ?*print-OR7-forcing-whip-10* = FALSE
    ?*print-OR7-forcing-whip-11* = FALSE
    ?*print-OR7-forcing-whip-12* = FALSE
    ?*print-OR7-forcing-whip-13* = FALSE
    ?*print-OR7-forcing-whip-14* = FALSE
    ?*print-OR7-forcing-whip-15* = FALSE
    ?*print-OR7-forcing-whip-16* = FALSE
    ?*print-OR7-forcing-whip-17* = FALSE
    ?*print-OR7-forcing-whip-18* = FALSE
    ?*print-OR7-forcing-whip-19* = FALSE
    ?*print-OR7-forcing-whip-20* = FALSE
    ?*print-OR7-forcing-whip-21* = FALSE
    ?*print-OR7-forcing-whip-22* = FALSE
    ?*print-OR7-forcing-whip-23* = FALSE
    ?*print-OR7-forcing-whip-24* = FALSE
    ?*print-OR7-forcing-whip-25* = FALSE
    ?*print-OR7-forcing-whip-26* = FALSE
    ?*print-OR7-forcing-whip-27* = FALSE
    ?*print-OR7-forcing-whip-28* = FALSE
    ?*print-OR7-forcing-whip-29* = FALSE
    ?*print-OR7-forcing-whip-30* = FALSE
    ?*print-OR7-forcing-whip-31* = FALSE
    ?*print-OR7-forcing-whip-32* = FALSE
    ?*print-OR7-forcing-whip-33* = FALSE
    ?*print-OR7-forcing-whip-34* = FALSE
    ?*print-OR7-forcing-whip-35* = FALSE
    ?*print-OR7-forcing-whip-36* = FALSE
)

(defglobal
    ?*print-OR8-forcing-whip* = FALSE
    ?*print-OR8-forcing-whip-1* = FALSE
    ?*print-OR8-forcing-whip-2* = FALSE
    ?*print-OR8-forcing-whip-3* = FALSE
    ?*print-OR8-forcing-whip-4* = FALSE
    ?*print-OR8-forcing-whip-5* = FALSE
    ?*print-OR8-forcing-whip-6* = FALSE
    ?*print-OR8-forcing-whip-7* = FALSE
    ?*print-OR8-forcing-whip-8* = FALSE
    ?*print-OR8-forcing-whip-9* = FALSE
    ?*print-OR8-forcing-whip-10* = FALSE
    ?*print-OR8-forcing-whip-11* = FALSE
    ?*print-OR8-forcing-whip-12* = FALSE
    ?*print-OR8-forcing-whip-13* = FALSE
    ?*print-OR8-forcing-whip-14* = FALSE
    ?*print-OR8-forcing-whip-15* = FALSE
    ?*print-OR8-forcing-whip-16* = FALSE
    ?*print-OR8-forcing-whip-17* = FALSE
    ?*print-OR8-forcing-whip-18* = FALSE
    ?*print-OR8-forcing-whip-19* = FALSE
    ?*print-OR8-forcing-whip-20* = FALSE
    ?*print-OR8-forcing-whip-21* = FALSE
    ?*print-OR8-forcing-whip-22* = FALSE
    ?*print-OR8-forcing-whip-23* = FALSE
    ?*print-OR8-forcing-whip-24* = FALSE
    ?*print-OR8-forcing-whip-25* = FALSE
    ?*print-OR8-forcing-whip-26* = FALSE
    ?*print-OR8-forcing-whip-27* = FALSE
    ?*print-OR8-forcing-whip-28* = FALSE
    ?*print-OR8-forcing-whip-29* = FALSE
    ?*print-OR8-forcing-whip-30* = FALSE
    ?*print-OR8-forcing-whip-31* = FALSE
    ?*print-OR8-forcing-whip-32* = FALSE
    ?*print-OR8-forcing-whip-33* = FALSE
    ?*print-OR8-forcing-whip-34* = FALSE
    ?*print-OR8-forcing-whip-35* = FALSE
    ?*print-OR8-forcing-whip-36* = FALSE
)


(defglobal
    ?*print-OR2-contrad-whip* = FALSE
    ?*print-OR2-contrad-whip-1* = FALSE
    ?*print-OR2-contrad-whip-2* = FALSE
    ?*print-OR2-contrad-whip-3* = FALSE
    ?*print-OR2-contrad-whip-4* = FALSE
    ?*print-OR2-contrad-whip-5* = FALSE
    ?*print-OR2-contrad-whip-6* = FALSE
    ?*print-OR2-contrad-whip-7* = FALSE
    ?*print-OR2-contrad-whip-8* = FALSE
    ?*print-OR2-contrad-whip-9* = FALSE
    ?*print-OR2-contrad-whip-10* = FALSE
    ?*print-OR2-contrad-whip-11* = FALSE
    ?*print-OR2-contrad-whip-12* = FALSE
    ?*print-OR2-contrad-whip-13* = FALSE
    ?*print-OR2-contrad-whip-14* = FALSE
    ?*print-OR2-contrad-whip-15* = FALSE
    ?*print-OR2-contrad-whip-16* = FALSE
    ?*print-OR2-contrad-whip-17* = FALSE
    ?*print-OR2-contrad-whip-18* = FALSE
    ?*print-OR2-contrad-whip-19* = FALSE
    ?*print-OR2-contrad-whip-20* = FALSE
    ?*print-OR2-contrad-whip-21* = FALSE
    ?*print-OR2-contrad-whip-22* = FALSE
    ?*print-OR2-contrad-whip-23* = FALSE
    ?*print-OR2-contrad-whip-24* = FALSE
    ?*print-OR2-contrad-whip-25* = FALSE
    ?*print-OR2-contrad-whip-26* = FALSE
    ?*print-OR2-contrad-whip-27* = FALSE
    ?*print-OR2-contrad-whip-28* = FALSE
    ?*print-OR2-contrad-whip-29* = FALSE
    ?*print-OR2-contrad-whip-30* = FALSE
    ?*print-OR2-contrad-whip-31* = FALSE
    ?*print-OR2-contrad-whip-32* = FALSE
    ?*print-OR2-contrad-whip-33* = FALSE
    ?*print-OR2-contrad-whip-34* = FALSE
    ?*print-OR2-contrad-whip-35* = FALSE
    ?*print-OR2-contrad-whip-36* = FALSE
)

(defglobal
    ?*print-OR3-contrad-whip* = FALSE
    ?*print-OR3-contrad-whip-1* = FALSE
    ?*print-OR3-contrad-whip-2* = FALSE
    ?*print-OR3-contrad-whip-3* = FALSE
    ?*print-OR3-contrad-whip-4* = FALSE
    ?*print-OR3-contrad-whip-5* = FALSE
    ?*print-OR3-contrad-whip-6* = FALSE
    ?*print-OR3-contrad-whip-7* = FALSE
    ?*print-OR3-contrad-whip-8* = FALSE
    ?*print-OR3-contrad-whip-9* = FALSE
    ?*print-OR3-contrad-whip-10* = FALSE
    ?*print-OR3-contrad-whip-11* = FALSE
    ?*print-OR3-contrad-whip-12* = FALSE
    ?*print-OR3-contrad-whip-13* = FALSE
    ?*print-OR3-contrad-whip-14* = FALSE
    ?*print-OR3-contrad-whip-15* = FALSE
    ?*print-OR3-contrad-whip-16* = FALSE
    ?*print-OR3-contrad-whip-17* = FALSE
    ?*print-OR3-contrad-whip-18* = FALSE
    ?*print-OR3-contrad-whip-19* = FALSE
    ?*print-OR3-contrad-whip-20* = FALSE
    ?*print-OR3-contrad-whip-21* = FALSE
    ?*print-OR3-contrad-whip-22* = FALSE
    ?*print-OR3-contrad-whip-23* = FALSE
    ?*print-OR3-contrad-whip-24* = FALSE
    ?*print-OR3-contrad-whip-25* = FALSE
    ?*print-OR3-contrad-whip-26* = FALSE
    ?*print-OR3-contrad-whip-27* = FALSE
    ?*print-OR3-contrad-whip-28* = FALSE
    ?*print-OR3-contrad-whip-29* = FALSE
    ?*print-OR3-contrad-whip-30* = FALSE
    ?*print-OR3-contrad-whip-31* = FALSE
    ?*print-OR3-contrad-whip-32* = FALSE
    ?*print-OR3-contrad-whip-33* = FALSE
    ?*print-OR3-contrad-whip-34* = FALSE
    ?*print-OR3-contrad-whip-35* = FALSE
    ?*print-OR3-contrad-whip-36* = FALSE
)

(defglobal
    ?*print-OR4-contrad-whip* = FALSE
    ?*print-OR4-contrad-whip-1* = FALSE
    ?*print-OR4-contrad-whip-2* = FALSE
    ?*print-OR4-contrad-whip-3* = FALSE
    ?*print-OR4-contrad-whip-4* = FALSE
    ?*print-OR4-contrad-whip-5* = FALSE
    ?*print-OR4-contrad-whip-6* = FALSE
    ?*print-OR4-contrad-whip-7* = FALSE
    ?*print-OR4-contrad-whip-8* = FALSE
    ?*print-OR4-contrad-whip-9* = FALSE
    ?*print-OR4-contrad-whip-10* = FALSE
    ?*print-OR4-contrad-whip-11* = FALSE
    ?*print-OR4-contrad-whip-12* = FALSE
    ?*print-OR4-contrad-whip-13* = FALSE
    ?*print-OR4-contrad-whip-14* = FALSE
    ?*print-OR4-contrad-whip-15* = FALSE
    ?*print-OR4-contrad-whip-16* = FALSE
    ?*print-OR4-contrad-whip-17* = FALSE
    ?*print-OR4-contrad-whip-18* = FALSE
    ?*print-OR4-contrad-whip-19* = FALSE
    ?*print-OR4-contrad-whip-20* = FALSE
    ?*print-OR4-contrad-whip-21* = FALSE
    ?*print-OR4-contrad-whip-22* = FALSE
    ?*print-OR4-contrad-whip-23* = FALSE
    ?*print-OR4-contrad-whip-24* = FALSE
    ?*print-OR4-contrad-whip-25* = FALSE
    ?*print-OR4-contrad-whip-26* = FALSE
    ?*print-OR4-contrad-whip-27* = FALSE
    ?*print-OR4-contrad-whip-28* = FALSE
    ?*print-OR4-contrad-whip-29* = FALSE
    ?*print-OR4-contrad-whip-30* = FALSE
    ?*print-OR4-contrad-whip-31* = FALSE
    ?*print-OR4-contrad-whip-32* = FALSE
    ?*print-OR4-contrad-whip-33* = FALSE
    ?*print-OR4-contrad-whip-34* = FALSE
    ?*print-OR4-contrad-whip-35* = FALSE
    ?*print-OR4-contrad-whip-36* = FALSE
)

(defglobal
    ?*print-OR5-contrad-whip* = FALSE
    ?*print-OR5-contrad-whip-1* = FALSE
    ?*print-OR5-contrad-whip-2* = FALSE
    ?*print-OR5-contrad-whip-3* = FALSE
    ?*print-OR5-contrad-whip-4* = FALSE
    ?*print-OR5-contrad-whip-5* = FALSE
    ?*print-OR5-contrad-whip-6* = FALSE
    ?*print-OR5-contrad-whip-7* = FALSE
    ?*print-OR5-contrad-whip-8* = FALSE
    ?*print-OR5-contrad-whip-9* = FALSE
    ?*print-OR5-contrad-whip-10* = FALSE
    ?*print-OR5-contrad-whip-11* = FALSE
    ?*print-OR5-contrad-whip-12* = FALSE
    ?*print-OR5-contrad-whip-13* = FALSE
    ?*print-OR5-contrad-whip-14* = FALSE
    ?*print-OR5-contrad-whip-15* = FALSE
    ?*print-OR5-contrad-whip-16* = FALSE
    ?*print-OR5-contrad-whip-17* = FALSE
    ?*print-OR5-contrad-whip-18* = FALSE
    ?*print-OR5-contrad-whip-19* = FALSE
    ?*print-OR5-contrad-whip-20* = FALSE
    ?*print-OR5-contrad-whip-21* = FALSE
    ?*print-OR5-contrad-whip-22* = FALSE
    ?*print-OR5-contrad-whip-23* = FALSE
    ?*print-OR5-contrad-whip-24* = FALSE
    ?*print-OR5-contrad-whip-25* = FALSE
    ?*print-OR5-contrad-whip-26* = FALSE
    ?*print-OR5-contrad-whip-27* = FALSE
    ?*print-OR5-contrad-whip-28* = FALSE
    ?*print-OR5-contrad-whip-29* = FALSE
    ?*print-OR5-contrad-whip-30* = FALSE
    ?*print-OR5-contrad-whip-31* = FALSE
    ?*print-OR5-contrad-whip-32* = FALSE
    ?*print-OR5-contrad-whip-33* = FALSE
    ?*print-OR5-contrad-whip-34* = FALSE
    ?*print-OR5-contrad-whip-35* = FALSE
    ?*print-OR5-contrad-whip-36* = FALSE
)

(defglobal
    ?*print-OR6-contrad-whip* = FALSE
    ?*print-OR6-contrad-whip-1* = FALSE
    ?*print-OR6-contrad-whip-2* = FALSE
    ?*print-OR6-contrad-whip-3* = FALSE
    ?*print-OR6-contrad-whip-4* = FALSE
    ?*print-OR6-contrad-whip-5* = FALSE
    ?*print-OR6-contrad-whip-6* = FALSE
    ?*print-OR6-contrad-whip-7* = FALSE
    ?*print-OR6-contrad-whip-8* = FALSE
    ?*print-OR6-contrad-whip-9* = FALSE
    ?*print-OR6-contrad-whip-10* = FALSE
    ?*print-OR6-contrad-whip-11* = FALSE
    ?*print-OR6-contrad-whip-12* = FALSE
    ?*print-OR6-contrad-whip-13* = FALSE
    ?*print-OR6-contrad-whip-14* = FALSE
    ?*print-OR6-contrad-whip-15* = FALSE
    ?*print-OR6-contrad-whip-16* = FALSE
    ?*print-OR6-contrad-whip-17* = FALSE
    ?*print-OR6-contrad-whip-18* = FALSE
    ?*print-OR6-contrad-whip-19* = FALSE
    ?*print-OR6-contrad-whip-20* = FALSE
    ?*print-OR6-contrad-whip-21* = FALSE
    ?*print-OR6-contrad-whip-22* = FALSE
    ?*print-OR6-contrad-whip-23* = FALSE
    ?*print-OR6-contrad-whip-24* = FALSE
    ?*print-OR6-contrad-whip-25* = FALSE
    ?*print-OR6-contrad-whip-26* = FALSE
    ?*print-OR6-contrad-whip-27* = FALSE
    ?*print-OR6-contrad-whip-28* = FALSE
    ?*print-OR6-contrad-whip-29* = FALSE
    ?*print-OR6-contrad-whip-30* = FALSE
    ?*print-OR6-contrad-whip-31* = FALSE
    ?*print-OR6-contrad-whip-32* = FALSE
    ?*print-OR6-contrad-whip-33* = FALSE
    ?*print-OR6-contrad-whip-34* = FALSE
    ?*print-OR6-contrad-whip-35* = FALSE
    ?*print-OR6-contrad-whip-36* = FALSE
)

(defglobal
    ?*print-OR7-contrad-whip* = FALSE
    ?*print-OR7-contrad-whip-1* = FALSE
    ?*print-OR7-contrad-whip-2* = FALSE
    ?*print-OR7-contrad-whip-3* = FALSE
    ?*print-OR7-contrad-whip-4* = FALSE
    ?*print-OR7-contrad-whip-5* = FALSE
    ?*print-OR7-contrad-whip-6* = FALSE
    ?*print-OR7-contrad-whip-7* = FALSE
    ?*print-OR7-contrad-whip-8* = FALSE
    ?*print-OR7-contrad-whip-9* = FALSE
    ?*print-OR7-contrad-whip-10* = FALSE
    ?*print-OR7-contrad-whip-11* = FALSE
    ?*print-OR7-contrad-whip-12* = FALSE
    ?*print-OR7-contrad-whip-13* = FALSE
    ?*print-OR7-contrad-whip-14* = FALSE
    ?*print-OR7-contrad-whip-15* = FALSE
    ?*print-OR7-contrad-whip-16* = FALSE
    ?*print-OR7-contrad-whip-17* = FALSE
    ?*print-OR7-contrad-whip-18* = FALSE
    ?*print-OR7-contrad-whip-19* = FALSE
    ?*print-OR7-contrad-whip-20* = FALSE
    ?*print-OR7-contrad-whip-21* = FALSE
    ?*print-OR7-contrad-whip-22* = FALSE
    ?*print-OR7-contrad-whip-23* = FALSE
    ?*print-OR7-contrad-whip-24* = FALSE
    ?*print-OR7-contrad-whip-25* = FALSE
    ?*print-OR7-contrad-whip-26* = FALSE
    ?*print-OR7-contrad-whip-27* = FALSE
    ?*print-OR7-contrad-whip-28* = FALSE
    ?*print-OR7-contrad-whip-29* = FALSE
    ?*print-OR7-contrad-whip-30* = FALSE
    ?*print-OR7-contrad-whip-31* = FALSE
    ?*print-OR7-contrad-whip-32* = FALSE
    ?*print-OR7-contrad-whip-33* = FALSE
    ?*print-OR7-contrad-whip-34* = FALSE
    ?*print-OR7-contrad-whip-35* = FALSE
    ?*print-OR7-contrad-whip-36* = FALSE
)

(defglobal
    ?*print-OR8-contrad-whip* = FALSE
    ?*print-OR8-contrad-whip-1* = FALSE
    ?*print-OR8-contrad-whip-2* = FALSE
    ?*print-OR8-contrad-whip-3* = FALSE
    ?*print-OR8-contrad-whip-4* = FALSE
    ?*print-OR8-contrad-whip-5* = FALSE
    ?*print-OR8-contrad-whip-6* = FALSE
    ?*print-OR8-contrad-whip-7* = FALSE
    ?*print-OR8-contrad-whip-8* = FALSE
    ?*print-OR8-contrad-whip-9* = FALSE
    ?*print-OR8-contrad-whip-10* = FALSE
    ?*print-OR8-contrad-whip-11* = FALSE
    ?*print-OR8-contrad-whip-12* = FALSE
    ?*print-OR8-contrad-whip-13* = FALSE
    ?*print-OR8-contrad-whip-14* = FALSE
    ?*print-OR8-contrad-whip-15* = FALSE
    ?*print-OR8-contrad-whip-16* = FALSE
    ?*print-OR8-contrad-whip-17* = FALSE
    ?*print-OR8-contrad-whip-18* = FALSE
    ?*print-OR8-contrad-whip-19* = FALSE
    ?*print-OR8-contrad-whip-20* = FALSE
    ?*print-OR8-contrad-whip-21* = FALSE
    ?*print-OR8-contrad-whip-22* = FALSE
    ?*print-OR8-contrad-whip-23* = FALSE
    ?*print-OR8-contrad-whip-24* = FALSE
    ?*print-OR8-contrad-whip-25* = FALSE
    ?*print-OR8-contrad-whip-26* = FALSE
    ?*print-OR8-contrad-whip-27* = FALSE
    ?*print-OR8-contrad-whip-28* = FALSE
    ?*print-OR8-contrad-whip-29* = FALSE
    ?*print-OR8-contrad-whip-30* = FALSE
    ?*print-OR8-contrad-whip-31* = FALSE
    ?*print-OR8-contrad-whip-32* = FALSE
    ?*print-OR8-contrad-whip-33* = FALSE
    ?*print-OR8-contrad-whip-34* = FALSE
    ?*print-OR8-contrad-whip-35* = FALSE
    ?*print-OR8-contrad-whip-36* = FALSE
)


(defglobal
    ?*print-OR2-whip* = FALSE
    ?*print-OR2-whip-1* = FALSE
    ?*print-OR2-whip-2* = FALSE
    ?*print-OR2-whip-3* = FALSE
    ?*print-OR2-whip-4* = FALSE
    ?*print-OR2-whip-5* = FALSE
    ?*print-OR2-whip-6* = FALSE
    ?*print-OR2-whip-7* = FALSE
    ?*print-OR2-whip-8* = FALSE
    ?*print-OR2-whip-9* = FALSE
    ?*print-OR2-whip-10* = FALSE
    ?*print-OR2-whip-11* = FALSE
    ?*print-OR2-whip-12* = FALSE
    ?*print-OR2-whip-13* = FALSE
    ?*print-OR2-whip-14* = FALSE
    ?*print-OR2-whip-15* = FALSE
    ?*print-OR2-whip-16* = FALSE
    ?*print-OR2-whip-17* = FALSE
    ?*print-OR2-whip-18* = FALSE
    ?*print-OR2-whip-19* = FALSE
    ?*print-OR2-whip-20* = FALSE
    ?*print-OR2-whip-21* = FALSE
    ?*print-OR2-whip-22* = FALSE
    ?*print-OR2-whip-23* = FALSE
    ?*print-OR2-whip-24* = FALSE
    ?*print-OR2-whip-25* = FALSE
    ?*print-OR2-whip-26* = FALSE
    ?*print-OR2-whip-27* = FALSE
    ?*print-OR2-whip-28* = FALSE
    ?*print-OR2-whip-29* = FALSE
    ?*print-OR2-whip-30* = FALSE
    ?*print-OR2-whip-31* = FALSE
    ?*print-OR2-whip-32* = FALSE
    ?*print-OR2-whip-33* = FALSE
    ?*print-OR2-whip-34* = FALSE
    ?*print-OR2-whip-35* = FALSE
    ?*print-OR2-whip-36* = FALSE
)

(defglobal
    ?*print-OR3-whip* = FALSE
    ?*print-OR3-whip-1* = FALSE
    ?*print-OR3-whip-2* = FALSE
    ?*print-OR3-whip-3* = FALSE
    ?*print-OR3-whip-4* = FALSE
    ?*print-OR3-whip-5* = FALSE
    ?*print-OR3-whip-6* = FALSE
    ?*print-OR3-whip-7* = FALSE
    ?*print-OR3-whip-8* = FALSE
    ?*print-OR3-whip-9* = FALSE
    ?*print-OR3-whip-10* = FALSE
    ?*print-OR3-whip-11* = FALSE
    ?*print-OR3-whip-12* = FALSE
    ?*print-OR3-whip-13* = FALSE
    ?*print-OR3-whip-14* = FALSE
    ?*print-OR3-whip-15* = FALSE
    ?*print-OR3-whip-16* = FALSE
    ?*print-OR3-whip-17* = FALSE
    ?*print-OR3-whip-18* = FALSE
    ?*print-OR3-whip-19* = FALSE
    ?*print-OR3-whip-20* = FALSE
    ?*print-OR3-whip-21* = FALSE
    ?*print-OR3-whip-22* = FALSE
    ?*print-OR3-whip-23* = FALSE
    ?*print-OR3-whip-24* = FALSE
    ?*print-OR3-whip-25* = FALSE
    ?*print-OR3-whip-26* = FALSE
    ?*print-OR3-whip-27* = FALSE
    ?*print-OR3-whip-28* = FALSE
    ?*print-OR3-whip-29* = FALSE
    ?*print-OR3-whip-30* = FALSE
    ?*print-OR3-whip-31* = FALSE
    ?*print-OR3-whip-32* = FALSE
    ?*print-OR3-whip-33* = FALSE
    ?*print-OR3-whip-34* = FALSE
    ?*print-OR3-whip-35* = FALSE
    ?*print-OR3-whip-36* = FALSE
)

(defglobal
    ?*print-OR4-whip* = FALSE
    ?*print-OR4-whip-1* = FALSE
    ?*print-OR4-whip-2* = FALSE
    ?*print-OR4-whip-3* = FALSE
    ?*print-OR4-whip-4* = FALSE
    ?*print-OR4-whip-5* = FALSE
    ?*print-OR4-whip-6* = FALSE
    ?*print-OR4-whip-7* = FALSE
    ?*print-OR4-whip-8* = FALSE
    ?*print-OR4-whip-9* = FALSE
    ?*print-OR4-whip-10* = FALSE
    ?*print-OR4-whip-11* = FALSE
    ?*print-OR4-whip-12* = FALSE
    ?*print-OR4-whip-13* = FALSE
    ?*print-OR4-whip-14* = FALSE
    ?*print-OR4-whip-15* = FALSE
    ?*print-OR4-whip-16* = FALSE
    ?*print-OR4-whip-17* = FALSE
    ?*print-OR4-whip-18* = FALSE
    ?*print-OR4-whip-19* = FALSE
    ?*print-OR4-whip-20* = FALSE
    ?*print-OR4-whip-21* = FALSE
    ?*print-OR4-whip-22* = FALSE
    ?*print-OR4-whip-23* = FALSE
    ?*print-OR4-whip-24* = FALSE
    ?*print-OR4-whip-25* = FALSE
    ?*print-OR4-whip-26* = FALSE
    ?*print-OR4-whip-27* = FALSE
    ?*print-OR4-whip-28* = FALSE
    ?*print-OR4-whip-29* = FALSE
    ?*print-OR4-whip-30* = FALSE
    ?*print-OR4-whip-31* = FALSE
    ?*print-OR4-whip-32* = FALSE
    ?*print-OR4-whip-33* = FALSE
    ?*print-OR4-whip-34* = FALSE
    ?*print-OR4-whip-35* = FALSE
    ?*print-OR4-whip-36* = FALSE
)

(defglobal
    ?*print-OR5-whip* = FALSE
    ?*print-OR5-whip-1* = FALSE
    ?*print-OR5-whip-2* = FALSE
    ?*print-OR5-whip-3* = FALSE
    ?*print-OR5-whip-4* = FALSE
    ?*print-OR5-whip-5* = FALSE
    ?*print-OR5-whip-6* = FALSE
    ?*print-OR5-whip-7* = FALSE
    ?*print-OR5-whip-8* = FALSE
    ?*print-OR5-whip-9* = FALSE
    ?*print-OR5-whip-10* = FALSE
    ?*print-OR5-whip-11* = FALSE
    ?*print-OR5-whip-12* = FALSE
    ?*print-OR5-whip-13* = FALSE
    ?*print-OR5-whip-14* = FALSE
    ?*print-OR5-whip-15* = FALSE
    ?*print-OR5-whip-16* = FALSE
    ?*print-OR5-whip-17* = FALSE
    ?*print-OR5-whip-18* = FALSE
    ?*print-OR5-whip-19* = FALSE
    ?*print-OR5-whip-20* = FALSE
    ?*print-OR5-whip-21* = FALSE
    ?*print-OR5-whip-22* = FALSE
    ?*print-OR5-whip-23* = FALSE
    ?*print-OR5-whip-24* = FALSE
    ?*print-OR5-whip-25* = FALSE
    ?*print-OR5-whip-26* = FALSE
    ?*print-OR5-whip-27* = FALSE
    ?*print-OR5-whip-28* = FALSE
    ?*print-OR5-whip-29* = FALSE
    ?*print-OR5-whip-30* = FALSE
    ?*print-OR5-whip-31* = FALSE
    ?*print-OR5-whip-32* = FALSE
    ?*print-OR5-whip-33* = FALSE
    ?*print-OR5-whip-34* = FALSE
    ?*print-OR5-whip-35* = FALSE
    ?*print-OR5-whip-36* = FALSE
)

(defglobal
    ?*print-OR6-whip* = FALSE
    ?*print-OR6-whip-1* = FALSE
    ?*print-OR6-whip-2* = FALSE
    ?*print-OR6-whip-3* = FALSE
    ?*print-OR6-whip-4* = FALSE
    ?*print-OR6-whip-5* = FALSE
    ?*print-OR6-whip-6* = FALSE
    ?*print-OR6-whip-7* = FALSE
    ?*print-OR6-whip-8* = FALSE
    ?*print-OR6-whip-9* = FALSE
    ?*print-OR6-whip-10* = FALSE
    ?*print-OR6-whip-11* = FALSE
    ?*print-OR6-whip-12* = FALSE
    ?*print-OR6-whip-13* = FALSE
    ?*print-OR6-whip-14* = FALSE
    ?*print-OR6-whip-15* = FALSE
    ?*print-OR6-whip-16* = FALSE
    ?*print-OR6-whip-17* = FALSE
    ?*print-OR6-whip-18* = FALSE
    ?*print-OR6-whip-19* = FALSE
    ?*print-OR6-whip-20* = FALSE
    ?*print-OR6-whip-21* = FALSE
    ?*print-OR6-whip-22* = FALSE
    ?*print-OR6-whip-23* = FALSE
    ?*print-OR6-whip-24* = FALSE
    ?*print-OR6-whip-25* = FALSE
    ?*print-OR6-whip-26* = FALSE
    ?*print-OR6-whip-27* = FALSE
    ?*print-OR6-whip-28* = FALSE
    ?*print-OR6-whip-29* = FALSE
    ?*print-OR6-whip-30* = FALSE
    ?*print-OR6-whip-31* = FALSE
    ?*print-OR6-whip-32* = FALSE
    ?*print-OR6-whip-33* = FALSE
    ?*print-OR6-whip-34* = FALSE
    ?*print-OR6-whip-35* = FALSE
    ?*print-OR6-whip-36* = FALSE
)

(defglobal
    ?*print-OR7-whip* = FALSE
    ?*print-OR7-whip-1* = FALSE
    ?*print-OR7-whip-2* = FALSE
    ?*print-OR7-whip-3* = FALSE
    ?*print-OR7-whip-4* = FALSE
    ?*print-OR7-whip-5* = FALSE
    ?*print-OR7-whip-6* = FALSE
    ?*print-OR7-whip-7* = FALSE
    ?*print-OR7-whip-8* = FALSE
    ?*print-OR7-whip-9* = FALSE
    ?*print-OR7-whip-10* = FALSE
    ?*print-OR7-whip-11* = FALSE
    ?*print-OR7-whip-12* = FALSE
    ?*print-OR7-whip-13* = FALSE
    ?*print-OR7-whip-14* = FALSE
    ?*print-OR7-whip-15* = FALSE
    ?*print-OR7-whip-16* = FALSE
    ?*print-OR7-whip-17* = FALSE
    ?*print-OR7-whip-18* = FALSE
    ?*print-OR7-whip-19* = FALSE
    ?*print-OR7-whip-20* = FALSE
    ?*print-OR7-whip-21* = FALSE
    ?*print-OR7-whip-22* = FALSE
    ?*print-OR7-whip-23* = FALSE
    ?*print-OR7-whip-24* = FALSE
    ?*print-OR7-whip-25* = FALSE
    ?*print-OR7-whip-26* = FALSE
    ?*print-OR7-whip-27* = FALSE
    ?*print-OR7-whip-28* = FALSE
    ?*print-OR7-whip-29* = FALSE
    ?*print-OR7-whip-30* = FALSE
    ?*print-OR7-whip-31* = FALSE
    ?*print-OR7-whip-32* = FALSE
    ?*print-OR7-whip-33* = FALSE
    ?*print-OR7-whip-34* = FALSE
    ?*print-OR7-whip-35* = FALSE
    ?*print-OR7-whip-36* = FALSE
)

(defglobal
    ?*print-OR8-whip* = FALSE
    ?*print-OR8-whip-1* = FALSE
    ?*print-OR8-whip-2* = FALSE
    ?*print-OR8-whip-3* = FALSE
    ?*print-OR8-whip-4* = FALSE
    ?*print-OR8-whip-5* = FALSE
    ?*print-OR8-whip-6* = FALSE
    ?*print-OR8-whip-7* = FALSE
    ?*print-OR8-whip-8* = FALSE
    ?*print-OR8-whip-9* = FALSE
    ?*print-OR8-whip-10* = FALSE
    ?*print-OR8-whip-11* = FALSE
    ?*print-OR8-whip-12* = FALSE
    ?*print-OR8-whip-13* = FALSE
    ?*print-OR8-whip-14* = FALSE
    ?*print-OR8-whip-15* = FALSE
    ?*print-OR8-whip-16* = FALSE
    ?*print-OR8-whip-17* = FALSE
    ?*print-OR8-whip-18* = FALSE
    ?*print-OR8-whip-19* = FALSE
    ?*print-OR8-whip-20* = FALSE
    ?*print-OR8-whip-21* = FALSE
    ?*print-OR8-whip-22* = FALSE
    ?*print-OR8-whip-23* = FALSE
    ?*print-OR8-whip-24* = FALSE
    ?*print-OR8-whip-25* = FALSE
    ?*print-OR8-whip-26* = FALSE
    ?*print-OR8-whip-27* = FALSE
    ?*print-OR8-whip-28* = FALSE
    ?*print-OR8-whip-29* = FALSE
    ?*print-OR8-whip-30* = FALSE
    ?*print-OR8-whip-31* = FALSE
    ?*print-OR8-whip-32* = FALSE
    ?*print-OR8-whip-33* = FALSE
    ?*print-OR8-whip-34* = FALSE
    ?*print-OR8-whip-35* = FALSE
    ?*print-OR8-whip-36* = FALSE
)



(defglobal
    ?*print-OR2-forcing-gwhip* = FALSE
    ?*print-OR2-forcing-gwhip-1* = FALSE
    ?*print-OR2-forcing-gwhip-2* = FALSE
    ?*print-OR2-forcing-gwhip-3* = FALSE
    ?*print-OR2-forcing-gwhip-4* = FALSE
    ?*print-OR2-forcing-gwhip-5* = FALSE
    ?*print-OR2-forcing-gwhip-6* = FALSE
    ?*print-OR2-forcing-gwhip-7* = FALSE
    ?*print-OR2-forcing-gwhip-8* = FALSE
    ?*print-OR2-forcing-gwhip-9* = FALSE
    ?*print-OR2-forcing-gwhip-10* = FALSE
    ?*print-OR2-forcing-gwhip-11* = FALSE
    ?*print-OR2-forcing-gwhip-12* = FALSE
    ?*print-OR2-forcing-gwhip-13* = FALSE
    ?*print-OR2-forcing-gwhip-14* = FALSE
    ?*print-OR2-forcing-gwhip-15* = FALSE
    ?*print-OR2-forcing-gwhip-16* = FALSE
    ?*print-OR2-forcing-gwhip-17* = FALSE
    ?*print-OR2-forcing-gwhip-18* = FALSE
    ?*print-OR2-forcing-gwhip-19* = FALSE
    ?*print-OR2-forcing-gwhip-20* = FALSE
    ?*print-OR2-forcing-gwhip-21* = FALSE
    ?*print-OR2-forcing-gwhip-22* = FALSE
    ?*print-OR2-forcing-gwhip-23* = FALSE
    ?*print-OR2-forcing-gwhip-24* = FALSE
    ?*print-OR2-forcing-gwhip-25* = FALSE
    ?*print-OR2-forcing-gwhip-26* = FALSE
    ?*print-OR2-forcing-gwhip-27* = FALSE
    ?*print-OR2-forcing-gwhip-28* = FALSE
    ?*print-OR2-forcing-gwhip-29* = FALSE
    ?*print-OR2-forcing-gwhip-30* = FALSE
    ?*print-OR2-forcing-gwhip-31* = FALSE
    ?*print-OR2-forcing-gwhip-32* = FALSE
    ?*print-OR2-forcing-gwhip-33* = FALSE
    ?*print-OR2-forcing-gwhip-34* = FALSE
    ?*print-OR2-forcing-gwhip-35* = FALSE
    ?*print-OR2-forcing-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR3-forcing-gwhip* = FALSE
    ?*print-OR3-forcing-gwhip-1* = FALSE
    ?*print-OR3-forcing-gwhip-2* = FALSE
    ?*print-OR3-forcing-gwhip-3* = FALSE
    ?*print-OR3-forcing-gwhip-4* = FALSE
    ?*print-OR3-forcing-gwhip-5* = FALSE
    ?*print-OR3-forcing-gwhip-6* = FALSE
    ?*print-OR3-forcing-gwhip-7* = FALSE
    ?*print-OR3-forcing-gwhip-8* = FALSE
    ?*print-OR3-forcing-gwhip-9* = FALSE
    ?*print-OR3-forcing-gwhip-10* = FALSE
    ?*print-OR3-forcing-gwhip-11* = FALSE
    ?*print-OR3-forcing-gwhip-12* = FALSE
    ?*print-OR3-forcing-gwhip-13* = FALSE
    ?*print-OR3-forcing-gwhip-14* = FALSE
    ?*print-OR3-forcing-gwhip-15* = FALSE
    ?*print-OR3-forcing-gwhip-16* = FALSE
    ?*print-OR3-forcing-gwhip-17* = FALSE
    ?*print-OR3-forcing-gwhip-18* = FALSE
    ?*print-OR3-forcing-gwhip-19* = FALSE
    ?*print-OR3-forcing-gwhip-20* = FALSE
    ?*print-OR3-forcing-gwhip-21* = FALSE
    ?*print-OR3-forcing-gwhip-22* = FALSE
    ?*print-OR3-forcing-gwhip-23* = FALSE
    ?*print-OR3-forcing-gwhip-24* = FALSE
    ?*print-OR3-forcing-gwhip-25* = FALSE
    ?*print-OR3-forcing-gwhip-26* = FALSE
    ?*print-OR3-forcing-gwhip-27* = FALSE
    ?*print-OR3-forcing-gwhip-28* = FALSE
    ?*print-OR3-forcing-gwhip-29* = FALSE
    ?*print-OR3-forcing-gwhip-30* = FALSE
    ?*print-OR3-forcing-gwhip-31* = FALSE
    ?*print-OR3-forcing-gwhip-32* = FALSE
    ?*print-OR3-forcing-gwhip-33* = FALSE
    ?*print-OR3-forcing-gwhip-34* = FALSE
    ?*print-OR3-forcing-gwhip-35* = FALSE
    ?*print-OR3-forcing-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR4-forcing-gwhip* = FALSE
    ?*print-OR4-forcing-gwhip-1* = FALSE
    ?*print-OR4-forcing-gwhip-2* = FALSE
    ?*print-OR4-forcing-gwhip-3* = FALSE
    ?*print-OR4-forcing-gwhip-4* = FALSE
    ?*print-OR4-forcing-gwhip-5* = FALSE
    ?*print-OR4-forcing-gwhip-6* = FALSE
    ?*print-OR4-forcing-gwhip-7* = FALSE
    ?*print-OR4-forcing-gwhip-8* = FALSE
    ?*print-OR4-forcing-gwhip-9* = FALSE
    ?*print-OR4-forcing-gwhip-10* = FALSE
    ?*print-OR4-forcing-gwhip-11* = FALSE
    ?*print-OR4-forcing-gwhip-12* = FALSE
    ?*print-OR4-forcing-gwhip-13* = FALSE
    ?*print-OR4-forcing-gwhip-14* = FALSE
    ?*print-OR4-forcing-gwhip-15* = FALSE
    ?*print-OR4-forcing-gwhip-16* = FALSE
    ?*print-OR4-forcing-gwhip-17* = FALSE
    ?*print-OR4-forcing-gwhip-18* = FALSE
    ?*print-OR4-forcing-gwhip-19* = FALSE
    ?*print-OR4-forcing-gwhip-20* = FALSE
    ?*print-OR4-forcing-gwhip-21* = FALSE
    ?*print-OR4-forcing-gwhip-22* = FALSE
    ?*print-OR4-forcing-gwhip-23* = FALSE
    ?*print-OR4-forcing-gwhip-24* = FALSE
    ?*print-OR4-forcing-gwhip-25* = FALSE
    ?*print-OR4-forcing-gwhip-26* = FALSE
    ?*print-OR4-forcing-gwhip-27* = FALSE
    ?*print-OR4-forcing-gwhip-28* = FALSE
    ?*print-OR4-forcing-gwhip-29* = FALSE
    ?*print-OR4-forcing-gwhip-30* = FALSE
    ?*print-OR4-forcing-gwhip-31* = FALSE
    ?*print-OR4-forcing-gwhip-32* = FALSE
    ?*print-OR4-forcing-gwhip-33* = FALSE
    ?*print-OR4-forcing-gwhip-34* = FALSE
    ?*print-OR4-forcing-gwhip-35* = FALSE
    ?*print-OR4-forcing-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR5-forcing-gwhip* = FALSE
    ?*print-OR5-forcing-gwhip-1* = FALSE
    ?*print-OR5-forcing-gwhip-2* = FALSE
    ?*print-OR5-forcing-gwhip-3* = FALSE
    ?*print-OR5-forcing-gwhip-4* = FALSE
    ?*print-OR5-forcing-gwhip-5* = FALSE
    ?*print-OR5-forcing-gwhip-6* = FALSE
    ?*print-OR5-forcing-gwhip-7* = FALSE
    ?*print-OR5-forcing-gwhip-8* = FALSE
    ?*print-OR5-forcing-gwhip-9* = FALSE
    ?*print-OR5-forcing-gwhip-10* = FALSE
    ?*print-OR5-forcing-gwhip-11* = FALSE
    ?*print-OR5-forcing-gwhip-12* = FALSE
    ?*print-OR5-forcing-gwhip-13* = FALSE
    ?*print-OR5-forcing-gwhip-14* = FALSE
    ?*print-OR5-forcing-gwhip-15* = FALSE
    ?*print-OR5-forcing-gwhip-16* = FALSE
    ?*print-OR5-forcing-gwhip-17* = FALSE
    ?*print-OR5-forcing-gwhip-18* = FALSE
    ?*print-OR5-forcing-gwhip-19* = FALSE
    ?*print-OR5-forcing-gwhip-20* = FALSE
    ?*print-OR5-forcing-gwhip-21* = FALSE
    ?*print-OR5-forcing-gwhip-22* = FALSE
    ?*print-OR5-forcing-gwhip-23* = FALSE
    ?*print-OR5-forcing-gwhip-24* = FALSE
    ?*print-OR5-forcing-gwhip-25* = FALSE
    ?*print-OR5-forcing-gwhip-26* = FALSE
    ?*print-OR5-forcing-gwhip-27* = FALSE
    ?*print-OR5-forcing-gwhip-28* = FALSE
    ?*print-OR5-forcing-gwhip-29* = FALSE
    ?*print-OR5-forcing-gwhip-30* = FALSE
    ?*print-OR5-forcing-gwhip-31* = FALSE
    ?*print-OR5-forcing-gwhip-32* = FALSE
    ?*print-OR5-forcing-gwhip-33* = FALSE
    ?*print-OR5-forcing-gwhip-34* = FALSE
    ?*print-OR5-forcing-gwhip-35* = FALSE
    ?*print-OR5-forcing-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR6-forcing-gwhip* = FALSE
    ?*print-OR6-forcing-gwhip-1* = FALSE
    ?*print-OR6-forcing-gwhip-2* = FALSE
    ?*print-OR6-forcing-gwhip-3* = FALSE
    ?*print-OR6-forcing-gwhip-4* = FALSE
    ?*print-OR6-forcing-gwhip-5* = FALSE
    ?*print-OR6-forcing-gwhip-6* = FALSE
    ?*print-OR6-forcing-gwhip-7* = FALSE
    ?*print-OR6-forcing-gwhip-8* = FALSE
    ?*print-OR6-forcing-gwhip-9* = FALSE
    ?*print-OR6-forcing-gwhip-10* = FALSE
    ?*print-OR6-forcing-gwhip-11* = FALSE
    ?*print-OR6-forcing-gwhip-12* = FALSE
    ?*print-OR6-forcing-gwhip-13* = FALSE
    ?*print-OR6-forcing-gwhip-14* = FALSE
    ?*print-OR6-forcing-gwhip-15* = FALSE
    ?*print-OR6-forcing-gwhip-16* = FALSE
    ?*print-OR6-forcing-gwhip-17* = FALSE
    ?*print-OR6-forcing-gwhip-18* = FALSE
    ?*print-OR6-forcing-gwhip-19* = FALSE
    ?*print-OR6-forcing-gwhip-20* = FALSE
    ?*print-OR6-forcing-gwhip-21* = FALSE
    ?*print-OR6-forcing-gwhip-22* = FALSE
    ?*print-OR6-forcing-gwhip-23* = FALSE
    ?*print-OR6-forcing-gwhip-24* = FALSE
    ?*print-OR6-forcing-gwhip-25* = FALSE
    ?*print-OR6-forcing-gwhip-26* = FALSE
    ?*print-OR6-forcing-gwhip-27* = FALSE
    ?*print-OR6-forcing-gwhip-28* = FALSE
    ?*print-OR6-forcing-gwhip-29* = FALSE
    ?*print-OR6-forcing-gwhip-30* = FALSE
    ?*print-OR6-forcing-gwhip-31* = FALSE
    ?*print-OR6-forcing-gwhip-32* = FALSE
    ?*print-OR6-forcing-gwhip-33* = FALSE
    ?*print-OR6-forcing-gwhip-34* = FALSE
    ?*print-OR6-forcing-gwhip-35* = FALSE
    ?*print-OR6-forcing-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR7-forcing-gwhip* = FALSE
    ?*print-OR7-forcing-gwhip-1* = FALSE
    ?*print-OR7-forcing-gwhip-2* = FALSE
    ?*print-OR7-forcing-gwhip-3* = FALSE
    ?*print-OR7-forcing-gwhip-4* = FALSE
    ?*print-OR7-forcing-gwhip-5* = FALSE
    ?*print-OR7-forcing-gwhip-6* = FALSE
    ?*print-OR7-forcing-gwhip-7* = FALSE
    ?*print-OR7-forcing-gwhip-8* = FALSE
    ?*print-OR7-forcing-gwhip-9* = FALSE
    ?*print-OR7-forcing-gwhip-10* = FALSE
    ?*print-OR7-forcing-gwhip-11* = FALSE
    ?*print-OR7-forcing-gwhip-12* = FALSE
    ?*print-OR7-forcing-gwhip-13* = FALSE
    ?*print-OR7-forcing-gwhip-14* = FALSE
    ?*print-OR7-forcing-gwhip-15* = FALSE
    ?*print-OR7-forcing-gwhip-16* = FALSE
    ?*print-OR7-forcing-gwhip-17* = FALSE
    ?*print-OR7-forcing-gwhip-18* = FALSE
    ?*print-OR7-forcing-gwhip-19* = FALSE
    ?*print-OR7-forcing-gwhip-20* = FALSE
    ?*print-OR7-forcing-gwhip-21* = FALSE
    ?*print-OR7-forcing-gwhip-22* = FALSE
    ?*print-OR7-forcing-gwhip-23* = FALSE
    ?*print-OR7-forcing-gwhip-24* = FALSE
    ?*print-OR7-forcing-gwhip-25* = FALSE
    ?*print-OR7-forcing-gwhip-26* = FALSE
    ?*print-OR7-forcing-gwhip-27* = FALSE
    ?*print-OR7-forcing-gwhip-28* = FALSE
    ?*print-OR7-forcing-gwhip-29* = FALSE
    ?*print-OR7-forcing-gwhip-30* = FALSE
    ?*print-OR7-forcing-gwhip-31* = FALSE
    ?*print-OR7-forcing-gwhip-32* = FALSE
    ?*print-OR7-forcing-gwhip-33* = FALSE
    ?*print-OR7-forcing-gwhip-34* = FALSE
    ?*print-OR7-forcing-gwhip-35* = FALSE
    ?*print-OR7-forcing-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR8-forcing-gwhip* = FALSE
    ?*print-OR8-forcing-gwhip-1* = FALSE
    ?*print-OR8-forcing-gwhip-2* = FALSE
    ?*print-OR8-forcing-gwhip-3* = FALSE
    ?*print-OR8-forcing-gwhip-4* = FALSE
    ?*print-OR8-forcing-gwhip-5* = FALSE
    ?*print-OR8-forcing-gwhip-6* = FALSE
    ?*print-OR8-forcing-gwhip-7* = FALSE
    ?*print-OR8-forcing-gwhip-8* = FALSE
    ?*print-OR8-forcing-gwhip-9* = FALSE
    ?*print-OR8-forcing-gwhip-10* = FALSE
    ?*print-OR8-forcing-gwhip-11* = FALSE
    ?*print-OR8-forcing-gwhip-12* = FALSE
    ?*print-OR8-forcing-gwhip-13* = FALSE
    ?*print-OR8-forcing-gwhip-14* = FALSE
    ?*print-OR8-forcing-gwhip-15* = FALSE
    ?*print-OR8-forcing-gwhip-16* = FALSE
    ?*print-OR8-forcing-gwhip-17* = FALSE
    ?*print-OR8-forcing-gwhip-18* = FALSE
    ?*print-OR8-forcing-gwhip-19* = FALSE
    ?*print-OR8-forcing-gwhip-20* = FALSE
    ?*print-OR8-forcing-gwhip-21* = FALSE
    ?*print-OR8-forcing-gwhip-22* = FALSE
    ?*print-OR8-forcing-gwhip-23* = FALSE
    ?*print-OR8-forcing-gwhip-24* = FALSE
    ?*print-OR8-forcing-gwhip-25* = FALSE
    ?*print-OR8-forcing-gwhip-26* = FALSE
    ?*print-OR8-forcing-gwhip-27* = FALSE
    ?*print-OR8-forcing-gwhip-28* = FALSE
    ?*print-OR8-forcing-gwhip-29* = FALSE
    ?*print-OR8-forcing-gwhip-30* = FALSE
    ?*print-OR8-forcing-gwhip-31* = FALSE
    ?*print-OR8-forcing-gwhip-32* = FALSE
    ?*print-OR8-forcing-gwhip-33* = FALSE
    ?*print-OR8-forcing-gwhip-34* = FALSE
    ?*print-OR8-forcing-gwhip-35* = FALSE
    ?*print-OR8-forcing-gwhip-36* = FALSE
)


(defglobal
    ?*print-OR2-contrad-gwhip* = FALSE
    ?*print-OR2-contrad-gwhip-1* = FALSE
    ?*print-OR2-contrad-gwhip-2* = FALSE
    ?*print-OR2-contrad-gwhip-3* = FALSE
    ?*print-OR2-contrad-gwhip-4* = FALSE
    ?*print-OR2-contrad-gwhip-5* = FALSE
    ?*print-OR2-contrad-gwhip-6* = FALSE
    ?*print-OR2-contrad-gwhip-7* = FALSE
    ?*print-OR2-contrad-gwhip-8* = FALSE
    ?*print-OR2-contrad-gwhip-9* = FALSE
    ?*print-OR2-contrad-gwhip-10* = FALSE
    ?*print-OR2-contrad-gwhip-11* = FALSE
    ?*print-OR2-contrad-gwhip-12* = FALSE
    ?*print-OR2-contrad-gwhip-13* = FALSE
    ?*print-OR2-contrad-gwhip-14* = FALSE
    ?*print-OR2-contrad-gwhip-15* = FALSE
    ?*print-OR2-contrad-gwhip-16* = FALSE
    ?*print-OR2-contrad-gwhip-17* = FALSE
    ?*print-OR2-contrad-gwhip-18* = FALSE
    ?*print-OR2-contrad-gwhip-19* = FALSE
    ?*print-OR2-contrad-gwhip-20* = FALSE
    ?*print-OR2-contrad-gwhip-21* = FALSE
    ?*print-OR2-contrad-gwhip-22* = FALSE
    ?*print-OR2-contrad-gwhip-23* = FALSE
    ?*print-OR2-contrad-gwhip-24* = FALSE
    ?*print-OR2-contrad-gwhip-25* = FALSE
    ?*print-OR2-contrad-gwhip-26* = FALSE
    ?*print-OR2-contrad-gwhip-27* = FALSE
    ?*print-OR2-contrad-gwhip-28* = FALSE
    ?*print-OR2-contrad-gwhip-29* = FALSE
    ?*print-OR2-contrad-gwhip-30* = FALSE
    ?*print-OR2-contrad-gwhip-31* = FALSE
    ?*print-OR2-contrad-gwhip-32* = FALSE
    ?*print-OR2-contrad-gwhip-33* = FALSE
    ?*print-OR2-contrad-gwhip-34* = FALSE
    ?*print-OR2-contrad-gwhip-35* = FALSE
    ?*print-OR2-contrad-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR3-contrad-gwhip* = FALSE
    ?*print-OR3-contrad-gwhip-1* = FALSE
    ?*print-OR3-contrad-gwhip-2* = FALSE
    ?*print-OR3-contrad-gwhip-3* = FALSE
    ?*print-OR3-contrad-gwhip-4* = FALSE
    ?*print-OR3-contrad-gwhip-5* = FALSE
    ?*print-OR3-contrad-gwhip-6* = FALSE
    ?*print-OR3-contrad-gwhip-7* = FALSE
    ?*print-OR3-contrad-gwhip-8* = FALSE
    ?*print-OR3-contrad-gwhip-9* = FALSE
    ?*print-OR3-contrad-gwhip-10* = FALSE
    ?*print-OR3-contrad-gwhip-11* = FALSE
    ?*print-OR3-contrad-gwhip-12* = FALSE
    ?*print-OR3-contrad-gwhip-13* = FALSE
    ?*print-OR3-contrad-gwhip-14* = FALSE
    ?*print-OR3-contrad-gwhip-15* = FALSE
    ?*print-OR3-contrad-gwhip-16* = FALSE
    ?*print-OR3-contrad-gwhip-17* = FALSE
    ?*print-OR3-contrad-gwhip-18* = FALSE
    ?*print-OR3-contrad-gwhip-19* = FALSE
    ?*print-OR3-contrad-gwhip-20* = FALSE
    ?*print-OR3-contrad-gwhip-21* = FALSE
    ?*print-OR3-contrad-gwhip-22* = FALSE
    ?*print-OR3-contrad-gwhip-23* = FALSE
    ?*print-OR3-contrad-gwhip-24* = FALSE
    ?*print-OR3-contrad-gwhip-25* = FALSE
    ?*print-OR3-contrad-gwhip-26* = FALSE
    ?*print-OR3-contrad-gwhip-27* = FALSE
    ?*print-OR3-contrad-gwhip-28* = FALSE
    ?*print-OR3-contrad-gwhip-29* = FALSE
    ?*print-OR3-contrad-gwhip-30* = FALSE
    ?*print-OR3-contrad-gwhip-31* = FALSE
    ?*print-OR3-contrad-gwhip-32* = FALSE
    ?*print-OR3-contrad-gwhip-33* = FALSE
    ?*print-OR3-contrad-gwhip-34* = FALSE
    ?*print-OR3-contrad-gwhip-35* = FALSE
    ?*print-OR3-contrad-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR4-contrad-gwhip* = FALSE
    ?*print-OR4-contrad-gwhip-1* = FALSE
    ?*print-OR4-contrad-gwhip-2* = FALSE
    ?*print-OR4-contrad-gwhip-3* = FALSE
    ?*print-OR4-contrad-gwhip-4* = FALSE
    ?*print-OR4-contrad-gwhip-5* = FALSE
    ?*print-OR4-contrad-gwhip-6* = FALSE
    ?*print-OR4-contrad-gwhip-7* = FALSE
    ?*print-OR4-contrad-gwhip-8* = FALSE
    ?*print-OR4-contrad-gwhip-9* = FALSE
    ?*print-OR4-contrad-gwhip-10* = FALSE
    ?*print-OR4-contrad-gwhip-11* = FALSE
    ?*print-OR4-contrad-gwhip-12* = FALSE
    ?*print-OR4-contrad-gwhip-13* = FALSE
    ?*print-OR4-contrad-gwhip-14* = FALSE
    ?*print-OR4-contrad-gwhip-15* = FALSE
    ?*print-OR4-contrad-gwhip-16* = FALSE
    ?*print-OR4-contrad-gwhip-17* = FALSE
    ?*print-OR4-contrad-gwhip-18* = FALSE
    ?*print-OR4-contrad-gwhip-19* = FALSE
    ?*print-OR4-contrad-gwhip-20* = FALSE
    ?*print-OR4-contrad-gwhip-21* = FALSE
    ?*print-OR4-contrad-gwhip-22* = FALSE
    ?*print-OR4-contrad-gwhip-23* = FALSE
    ?*print-OR4-contrad-gwhip-24* = FALSE
    ?*print-OR4-contrad-gwhip-25* = FALSE
    ?*print-OR4-contrad-gwhip-26* = FALSE
    ?*print-OR4-contrad-gwhip-27* = FALSE
    ?*print-OR4-contrad-gwhip-28* = FALSE
    ?*print-OR4-contrad-gwhip-29* = FALSE
    ?*print-OR4-contrad-gwhip-30* = FALSE
    ?*print-OR4-contrad-gwhip-31* = FALSE
    ?*print-OR4-contrad-gwhip-32* = FALSE
    ?*print-OR4-contrad-gwhip-33* = FALSE
    ?*print-OR4-contrad-gwhip-34* = FALSE
    ?*print-OR4-contrad-gwhip-35* = FALSE
    ?*print-OR4-contrad-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR5-contrad-gwhip* = FALSE
    ?*print-OR5-contrad-gwhip-1* = FALSE
    ?*print-OR5-contrad-gwhip-2* = FALSE
    ?*print-OR5-contrad-gwhip-3* = FALSE
    ?*print-OR5-contrad-gwhip-4* = FALSE
    ?*print-OR5-contrad-gwhip-5* = FALSE
    ?*print-OR5-contrad-gwhip-6* = FALSE
    ?*print-OR5-contrad-gwhip-7* = FALSE
    ?*print-OR5-contrad-gwhip-8* = FALSE
    ?*print-OR5-contrad-gwhip-9* = FALSE
    ?*print-OR5-contrad-gwhip-10* = FALSE
    ?*print-OR5-contrad-gwhip-11* = FALSE
    ?*print-OR5-contrad-gwhip-12* = FALSE
    ?*print-OR5-contrad-gwhip-13* = FALSE
    ?*print-OR5-contrad-gwhip-14* = FALSE
    ?*print-OR5-contrad-gwhip-15* = FALSE
    ?*print-OR5-contrad-gwhip-16* = FALSE
    ?*print-OR5-contrad-gwhip-17* = FALSE
    ?*print-OR5-contrad-gwhip-18* = FALSE
    ?*print-OR5-contrad-gwhip-19* = FALSE
    ?*print-OR5-contrad-gwhip-20* = FALSE
    ?*print-OR5-contrad-gwhip-21* = FALSE
    ?*print-OR5-contrad-gwhip-22* = FALSE
    ?*print-OR5-contrad-gwhip-23* = FALSE
    ?*print-OR5-contrad-gwhip-24* = FALSE
    ?*print-OR5-contrad-gwhip-25* = FALSE
    ?*print-OR5-contrad-gwhip-26* = FALSE
    ?*print-OR5-contrad-gwhip-27* = FALSE
    ?*print-OR5-contrad-gwhip-28* = FALSE
    ?*print-OR5-contrad-gwhip-29* = FALSE
    ?*print-OR5-contrad-gwhip-30* = FALSE
    ?*print-OR5-contrad-gwhip-31* = FALSE
    ?*print-OR5-contrad-gwhip-32* = FALSE
    ?*print-OR5-contrad-gwhip-33* = FALSE
    ?*print-OR5-contrad-gwhip-34* = FALSE
    ?*print-OR5-contrad-gwhip-35* = FALSE
    ?*print-OR5-contrad-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR6-contrad-gwhip* = FALSE
    ?*print-OR6-contrad-gwhip-1* = FALSE
    ?*print-OR6-contrad-gwhip-2* = FALSE
    ?*print-OR6-contrad-gwhip-3* = FALSE
    ?*print-OR6-contrad-gwhip-4* = FALSE
    ?*print-OR6-contrad-gwhip-5* = FALSE
    ?*print-OR6-contrad-gwhip-6* = FALSE
    ?*print-OR6-contrad-gwhip-7* = FALSE
    ?*print-OR6-contrad-gwhip-8* = FALSE
    ?*print-OR6-contrad-gwhip-9* = FALSE
    ?*print-OR6-contrad-gwhip-10* = FALSE
    ?*print-OR6-contrad-gwhip-11* = FALSE
    ?*print-OR6-contrad-gwhip-12* = FALSE
    ?*print-OR6-contrad-gwhip-13* = FALSE
    ?*print-OR6-contrad-gwhip-14* = FALSE
    ?*print-OR6-contrad-gwhip-15* = FALSE
    ?*print-OR6-contrad-gwhip-16* = FALSE
    ?*print-OR6-contrad-gwhip-17* = FALSE
    ?*print-OR6-contrad-gwhip-18* = FALSE
    ?*print-OR6-contrad-gwhip-19* = FALSE
    ?*print-OR6-contrad-gwhip-20* = FALSE
    ?*print-OR6-contrad-gwhip-21* = FALSE
    ?*print-OR6-contrad-gwhip-22* = FALSE
    ?*print-OR6-contrad-gwhip-23* = FALSE
    ?*print-OR6-contrad-gwhip-24* = FALSE
    ?*print-OR6-contrad-gwhip-25* = FALSE
    ?*print-OR6-contrad-gwhip-26* = FALSE
    ?*print-OR6-contrad-gwhip-27* = FALSE
    ?*print-OR6-contrad-gwhip-28* = FALSE
    ?*print-OR6-contrad-gwhip-29* = FALSE
    ?*print-OR6-contrad-gwhip-30* = FALSE
    ?*print-OR6-contrad-gwhip-31* = FALSE
    ?*print-OR6-contrad-gwhip-32* = FALSE
    ?*print-OR6-contrad-gwhip-33* = FALSE
    ?*print-OR6-contrad-gwhip-34* = FALSE
    ?*print-OR6-contrad-gwhip-35* = FALSE
    ?*print-OR6-contrad-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR7-contrad-gwhip* = FALSE
    ?*print-OR7-contrad-gwhip-1* = FALSE
    ?*print-OR7-contrad-gwhip-2* = FALSE
    ?*print-OR7-contrad-gwhip-3* = FALSE
    ?*print-OR7-contrad-gwhip-4* = FALSE
    ?*print-OR7-contrad-gwhip-5* = FALSE
    ?*print-OR7-contrad-gwhip-6* = FALSE
    ?*print-OR7-contrad-gwhip-7* = FALSE
    ?*print-OR7-contrad-gwhip-8* = FALSE
    ?*print-OR7-contrad-gwhip-9* = FALSE
    ?*print-OR7-contrad-gwhip-10* = FALSE
    ?*print-OR7-contrad-gwhip-11* = FALSE
    ?*print-OR7-contrad-gwhip-12* = FALSE
    ?*print-OR7-contrad-gwhip-13* = FALSE
    ?*print-OR7-contrad-gwhip-14* = FALSE
    ?*print-OR7-contrad-gwhip-15* = FALSE
    ?*print-OR7-contrad-gwhip-16* = FALSE
    ?*print-OR7-contrad-gwhip-17* = FALSE
    ?*print-OR7-contrad-gwhip-18* = FALSE
    ?*print-OR7-contrad-gwhip-19* = FALSE
    ?*print-OR7-contrad-gwhip-20* = FALSE
    ?*print-OR7-contrad-gwhip-21* = FALSE
    ?*print-OR7-contrad-gwhip-22* = FALSE
    ?*print-OR7-contrad-gwhip-23* = FALSE
    ?*print-OR7-contrad-gwhip-24* = FALSE
    ?*print-OR7-contrad-gwhip-25* = FALSE
    ?*print-OR7-contrad-gwhip-26* = FALSE
    ?*print-OR7-contrad-gwhip-27* = FALSE
    ?*print-OR7-contrad-gwhip-28* = FALSE
    ?*print-OR7-contrad-gwhip-29* = FALSE
    ?*print-OR7-contrad-gwhip-30* = FALSE
    ?*print-OR7-contrad-gwhip-31* = FALSE
    ?*print-OR7-contrad-gwhip-32* = FALSE
    ?*print-OR7-contrad-gwhip-33* = FALSE
    ?*print-OR7-contrad-gwhip-34* = FALSE
    ?*print-OR7-contrad-gwhip-35* = FALSE
    ?*print-OR7-contrad-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR8-contrad-gwhip* = FALSE
    ?*print-OR8-contrad-gwhip-1* = FALSE
    ?*print-OR8-contrad-gwhip-2* = FALSE
    ?*print-OR8-contrad-gwhip-3* = FALSE
    ?*print-OR8-contrad-gwhip-4* = FALSE
    ?*print-OR8-contrad-gwhip-5* = FALSE
    ?*print-OR8-contrad-gwhip-6* = FALSE
    ?*print-OR8-contrad-gwhip-7* = FALSE
    ?*print-OR8-contrad-gwhip-8* = FALSE
    ?*print-OR8-contrad-gwhip-9* = FALSE
    ?*print-OR8-contrad-gwhip-10* = FALSE
    ?*print-OR8-contrad-gwhip-11* = FALSE
    ?*print-OR8-contrad-gwhip-12* = FALSE
    ?*print-OR8-contrad-gwhip-13* = FALSE
    ?*print-OR8-contrad-gwhip-14* = FALSE
    ?*print-OR8-contrad-gwhip-15* = FALSE
    ?*print-OR8-contrad-gwhip-16* = FALSE
    ?*print-OR8-contrad-gwhip-17* = FALSE
    ?*print-OR8-contrad-gwhip-18* = FALSE
    ?*print-OR8-contrad-gwhip-19* = FALSE
    ?*print-OR8-contrad-gwhip-20* = FALSE
    ?*print-OR8-contrad-gwhip-21* = FALSE
    ?*print-OR8-contrad-gwhip-22* = FALSE
    ?*print-OR8-contrad-gwhip-23* = FALSE
    ?*print-OR8-contrad-gwhip-24* = FALSE
    ?*print-OR8-contrad-gwhip-25* = FALSE
    ?*print-OR8-contrad-gwhip-26* = FALSE
    ?*print-OR8-contrad-gwhip-27* = FALSE
    ?*print-OR8-contrad-gwhip-28* = FALSE
    ?*print-OR8-contrad-gwhip-29* = FALSE
    ?*print-OR8-contrad-gwhip-30* = FALSE
    ?*print-OR8-contrad-gwhip-31* = FALSE
    ?*print-OR8-contrad-gwhip-32* = FALSE
    ?*print-OR8-contrad-gwhip-33* = FALSE
    ?*print-OR8-contrad-gwhip-34* = FALSE
    ?*print-OR8-contrad-gwhip-35* = FALSE
    ?*print-OR8-contrad-gwhip-36* = FALSE
)


(defglobal
    ?*print-OR2-gwhip* = FALSE
    ?*print-OR2-gwhip-1* = FALSE
    ?*print-OR2-gwhip-2* = FALSE
    ?*print-OR2-gwhip-3* = FALSE
    ?*print-OR2-gwhip-4* = FALSE
    ?*print-OR2-gwhip-5* = FALSE
    ?*print-OR2-gwhip-6* = FALSE
    ?*print-OR2-gwhip-7* = FALSE
    ?*print-OR2-gwhip-8* = FALSE
    ?*print-OR2-gwhip-9* = FALSE
    ?*print-OR2-gwhip-10* = FALSE
    ?*print-OR2-gwhip-11* = FALSE
    ?*print-OR2-gwhip-12* = FALSE
    ?*print-OR2-gwhip-13* = FALSE
    ?*print-OR2-gwhip-14* = FALSE
    ?*print-OR2-gwhip-15* = FALSE
    ?*print-OR2-gwhip-16* = FALSE
    ?*print-OR2-gwhip-17* = FALSE
    ?*print-OR2-gwhip-18* = FALSE
    ?*print-OR2-gwhip-19* = FALSE
    ?*print-OR2-gwhip-20* = FALSE
    ?*print-OR2-gwhip-21* = FALSE
    ?*print-OR2-gwhip-22* = FALSE
    ?*print-OR2-gwhip-23* = FALSE
    ?*print-OR2-gwhip-24* = FALSE
    ?*print-OR2-gwhip-25* = FALSE
    ?*print-OR2-gwhip-26* = FALSE
    ?*print-OR2-gwhip-27* = FALSE
    ?*print-OR2-gwhip-28* = FALSE
    ?*print-OR2-gwhip-29* = FALSE
    ?*print-OR2-gwhip-30* = FALSE
    ?*print-OR2-gwhip-31* = FALSE
    ?*print-OR2-gwhip-32* = FALSE
    ?*print-OR2-gwhip-33* = FALSE
    ?*print-OR2-gwhip-34* = FALSE
    ?*print-OR2-gwhip-35* = FALSE
    ?*print-OR2-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR3-gwhip* = FALSE
    ?*print-OR3-gwhip-1* = FALSE
    ?*print-OR3-gwhip-2* = FALSE
    ?*print-OR3-gwhip-3* = FALSE
    ?*print-OR3-gwhip-4* = FALSE
    ?*print-OR3-gwhip-5* = FALSE
    ?*print-OR3-gwhip-6* = FALSE
    ?*print-OR3-gwhip-7* = FALSE
    ?*print-OR3-gwhip-8* = FALSE
    ?*print-OR3-gwhip-9* = FALSE
    ?*print-OR3-gwhip-10* = FALSE
    ?*print-OR3-gwhip-11* = FALSE
    ?*print-OR3-gwhip-12* = FALSE
    ?*print-OR3-gwhip-13* = FALSE
    ?*print-OR3-gwhip-14* = FALSE
    ?*print-OR3-gwhip-15* = FALSE
    ?*print-OR3-gwhip-16* = FALSE
    ?*print-OR3-gwhip-17* = FALSE
    ?*print-OR3-gwhip-18* = FALSE
    ?*print-OR3-gwhip-19* = FALSE
    ?*print-OR3-gwhip-20* = FALSE
    ?*print-OR3-gwhip-21* = FALSE
    ?*print-OR3-gwhip-22* = FALSE
    ?*print-OR3-gwhip-23* = FALSE
    ?*print-OR3-gwhip-24* = FALSE
    ?*print-OR3-gwhip-25* = FALSE
    ?*print-OR3-gwhip-26* = FALSE
    ?*print-OR3-gwhip-27* = FALSE
    ?*print-OR3-gwhip-28* = FALSE
    ?*print-OR3-gwhip-29* = FALSE
    ?*print-OR3-gwhip-30* = FALSE
    ?*print-OR3-gwhip-31* = FALSE
    ?*print-OR3-gwhip-32* = FALSE
    ?*print-OR3-gwhip-33* = FALSE
    ?*print-OR3-gwhip-34* = FALSE
    ?*print-OR3-gwhip-35* = FALSE
    ?*print-OR3-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR4-gwhip* = FALSE
    ?*print-OR4-gwhip-1* = FALSE
    ?*print-OR4-gwhip-2* = FALSE
    ?*print-OR4-gwhip-3* = FALSE
    ?*print-OR4-gwhip-4* = FALSE
    ?*print-OR4-gwhip-5* = FALSE
    ?*print-OR4-gwhip-6* = FALSE
    ?*print-OR4-gwhip-7* = FALSE
    ?*print-OR4-gwhip-8* = FALSE
    ?*print-OR4-gwhip-9* = FALSE
    ?*print-OR4-gwhip-10* = FALSE
    ?*print-OR4-gwhip-11* = FALSE
    ?*print-OR4-gwhip-12* = FALSE
    ?*print-OR4-gwhip-13* = FALSE
    ?*print-OR4-gwhip-14* = FALSE
    ?*print-OR4-gwhip-15* = FALSE
    ?*print-OR4-gwhip-16* = FALSE
    ?*print-OR4-gwhip-17* = FALSE
    ?*print-OR4-gwhip-18* = FALSE
    ?*print-OR4-gwhip-19* = FALSE
    ?*print-OR4-gwhip-20* = FALSE
    ?*print-OR4-gwhip-21* = FALSE
    ?*print-OR4-gwhip-22* = FALSE
    ?*print-OR4-gwhip-23* = FALSE
    ?*print-OR4-gwhip-24* = FALSE
    ?*print-OR4-gwhip-25* = FALSE
    ?*print-OR4-gwhip-26* = FALSE
    ?*print-OR4-gwhip-27* = FALSE
    ?*print-OR4-gwhip-28* = FALSE
    ?*print-OR4-gwhip-29* = FALSE
    ?*print-OR4-gwhip-30* = FALSE
    ?*print-OR4-gwhip-31* = FALSE
    ?*print-OR4-gwhip-32* = FALSE
    ?*print-OR4-gwhip-33* = FALSE
    ?*print-OR4-gwhip-34* = FALSE
    ?*print-OR4-gwhip-35* = FALSE
    ?*print-OR4-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR5-gwhip* = FALSE
    ?*print-OR5-gwhip-1* = FALSE
    ?*print-OR5-gwhip-2* = FALSE
    ?*print-OR5-gwhip-3* = FALSE
    ?*print-OR5-gwhip-4* = FALSE
    ?*print-OR5-gwhip-5* = FALSE
    ?*print-OR5-gwhip-6* = FALSE
    ?*print-OR5-gwhip-7* = FALSE
    ?*print-OR5-gwhip-8* = FALSE
    ?*print-OR5-gwhip-9* = FALSE
    ?*print-OR5-gwhip-10* = FALSE
    ?*print-OR5-gwhip-11* = FALSE
    ?*print-OR5-gwhip-12* = FALSE
    ?*print-OR5-gwhip-13* = FALSE
    ?*print-OR5-gwhip-14* = FALSE
    ?*print-OR5-gwhip-15* = FALSE
    ?*print-OR5-gwhip-16* = FALSE
    ?*print-OR5-gwhip-17* = FALSE
    ?*print-OR5-gwhip-18* = FALSE
    ?*print-OR5-gwhip-19* = FALSE
    ?*print-OR5-gwhip-20* = FALSE
    ?*print-OR5-gwhip-21* = FALSE
    ?*print-OR5-gwhip-22* = FALSE
    ?*print-OR5-gwhip-23* = FALSE
    ?*print-OR5-gwhip-24* = FALSE
    ?*print-OR5-gwhip-25* = FALSE
    ?*print-OR5-gwhip-26* = FALSE
    ?*print-OR5-gwhip-27* = FALSE
    ?*print-OR5-gwhip-28* = FALSE
    ?*print-OR5-gwhip-29* = FALSE
    ?*print-OR5-gwhip-30* = FALSE
    ?*print-OR5-gwhip-31* = FALSE
    ?*print-OR5-gwhip-32* = FALSE
    ?*print-OR5-gwhip-33* = FALSE
    ?*print-OR5-gwhip-34* = FALSE
    ?*print-OR5-gwhip-35* = FALSE
    ?*print-OR5-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR6-gwhip* = FALSE
    ?*print-OR6-gwhip-1* = FALSE
    ?*print-OR6-gwhip-2* = FALSE
    ?*print-OR6-gwhip-3* = FALSE
    ?*print-OR6-gwhip-4* = FALSE
    ?*print-OR6-gwhip-5* = FALSE
    ?*print-OR6-gwhip-6* = FALSE
    ?*print-OR6-gwhip-7* = FALSE
    ?*print-OR6-gwhip-8* = FALSE
    ?*print-OR6-gwhip-9* = FALSE
    ?*print-OR6-gwhip-10* = FALSE
    ?*print-OR6-gwhip-11* = FALSE
    ?*print-OR6-gwhip-12* = FALSE
    ?*print-OR6-gwhip-13* = FALSE
    ?*print-OR6-gwhip-14* = FALSE
    ?*print-OR6-gwhip-15* = FALSE
    ?*print-OR6-gwhip-16* = FALSE
    ?*print-OR6-gwhip-17* = FALSE
    ?*print-OR6-gwhip-18* = FALSE
    ?*print-OR6-gwhip-19* = FALSE
    ?*print-OR6-gwhip-20* = FALSE
    ?*print-OR6-gwhip-21* = FALSE
    ?*print-OR6-gwhip-22* = FALSE
    ?*print-OR6-gwhip-23* = FALSE
    ?*print-OR6-gwhip-24* = FALSE
    ?*print-OR6-gwhip-25* = FALSE
    ?*print-OR6-gwhip-26* = FALSE
    ?*print-OR6-gwhip-27* = FALSE
    ?*print-OR6-gwhip-28* = FALSE
    ?*print-OR6-gwhip-29* = FALSE
    ?*print-OR6-gwhip-30* = FALSE
    ?*print-OR6-gwhip-31* = FALSE
    ?*print-OR6-gwhip-32* = FALSE
    ?*print-OR6-gwhip-33* = FALSE
    ?*print-OR6-gwhip-34* = FALSE
    ?*print-OR6-gwhip-35* = FALSE
    ?*print-OR6-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR7-gwhip* = FALSE
    ?*print-OR7-gwhip-1* = FALSE
    ?*print-OR7-gwhip-2* = FALSE
    ?*print-OR7-gwhip-3* = FALSE
    ?*print-OR7-gwhip-4* = FALSE
    ?*print-OR7-gwhip-5* = FALSE
    ?*print-OR7-gwhip-6* = FALSE
    ?*print-OR7-gwhip-7* = FALSE
    ?*print-OR7-gwhip-8* = FALSE
    ?*print-OR7-gwhip-9* = FALSE
    ?*print-OR7-gwhip-10* = FALSE
    ?*print-OR7-gwhip-11* = FALSE
    ?*print-OR7-gwhip-12* = FALSE
    ?*print-OR7-gwhip-13* = FALSE
    ?*print-OR7-gwhip-14* = FALSE
    ?*print-OR7-gwhip-15* = FALSE
    ?*print-OR7-gwhip-16* = FALSE
    ?*print-OR7-gwhip-17* = FALSE
    ?*print-OR7-gwhip-18* = FALSE
    ?*print-OR7-gwhip-19* = FALSE
    ?*print-OR7-gwhip-20* = FALSE
    ?*print-OR7-gwhip-21* = FALSE
    ?*print-OR7-gwhip-22* = FALSE
    ?*print-OR7-gwhip-23* = FALSE
    ?*print-OR7-gwhip-24* = FALSE
    ?*print-OR7-gwhip-25* = FALSE
    ?*print-OR7-gwhip-26* = FALSE
    ?*print-OR7-gwhip-27* = FALSE
    ?*print-OR7-gwhip-28* = FALSE
    ?*print-OR7-gwhip-29* = FALSE
    ?*print-OR7-gwhip-30* = FALSE
    ?*print-OR7-gwhip-31* = FALSE
    ?*print-OR7-gwhip-32* = FALSE
    ?*print-OR7-gwhip-33* = FALSE
    ?*print-OR7-gwhip-34* = FALSE
    ?*print-OR7-gwhip-35* = FALSE
    ?*print-OR7-gwhip-36* = FALSE
)

(defglobal
    ?*print-OR8-gwhip* = FALSE
    ?*print-OR8-gwhip-1* = FALSE
    ?*print-OR8-gwhip-2* = FALSE
    ?*print-OR8-gwhip-3* = FALSE
    ?*print-OR8-gwhip-4* = FALSE
    ?*print-OR8-gwhip-5* = FALSE
    ?*print-OR8-gwhip-6* = FALSE
    ?*print-OR8-gwhip-7* = FALSE
    ?*print-OR8-gwhip-8* = FALSE
    ?*print-OR8-gwhip-9* = FALSE
    ?*print-OR8-gwhip-10* = FALSE
    ?*print-OR8-gwhip-11* = FALSE
    ?*print-OR8-gwhip-12* = FALSE
    ?*print-OR8-gwhip-13* = FALSE
    ?*print-OR8-gwhip-14* = FALSE
    ?*print-OR8-gwhip-15* = FALSE
    ?*print-OR8-gwhip-16* = FALSE
    ?*print-OR8-gwhip-17* = FALSE
    ?*print-OR8-gwhip-18* = FALSE
    ?*print-OR8-gwhip-19* = FALSE
    ?*print-OR8-gwhip-20* = FALSE
    ?*print-OR8-gwhip-21* = FALSE
    ?*print-OR8-gwhip-22* = FALSE
    ?*print-OR8-gwhip-23* = FALSE
    ?*print-OR8-gwhip-24* = FALSE
    ?*print-OR8-gwhip-25* = FALSE
    ?*print-OR8-gwhip-26* = FALSE
    ?*print-OR8-gwhip-27* = FALSE
    ?*print-OR8-gwhip-28* = FALSE
    ?*print-OR8-gwhip-29* = FALSE
    ?*print-OR8-gwhip-30* = FALSE
    ?*print-OR8-gwhip-31* = FALSE
    ?*print-OR8-gwhip-32* = FALSE
    ?*print-OR8-gwhip-33* = FALSE
    ?*print-OR8-gwhip-34* = FALSE
    ?*print-OR8-gwhip-35* = FALSE
    ?*print-OR8-gwhip-36* = FALSE
)



(defglobal
    ?*print-forcing-whip* = FALSE
    ?*print-forcing-whip-1* = FALSE
    ?*print-forcing-whip-2* = FALSE
    ?*print-forcing-whip-3* = FALSE
    ?*print-forcing-whip-4* = FALSE
    ?*print-forcing-whip-5* = FALSE
    ?*print-forcing-whip-6* = FALSE
    ?*print-forcing-whip-7* = FALSE
    ?*print-forcing-whip-8* = FALSE
    ?*print-forcing-whip-9* = FALSE
    ?*print-forcing-whip-10* = FALSE
    ?*print-forcing-whip-11* = FALSE
    ?*print-forcing-whip-12* = FALSE
    ?*print-forcing-whip-13* = FALSE
    ?*print-forcing-whip-14* = FALSE
    ?*print-forcing-whip-15* = FALSE
    ?*print-forcing-whip-16* = FALSE
    ?*print-forcing-whip-17* = FALSE
    ?*print-forcing-whip-18* = FALSE
    ?*print-forcing-whip-19* = FALSE
    ?*print-forcing-whip-20* = FALSE
    ?*print-forcing-whip-21* = FALSE
    ?*print-forcing-whip-22* = FALSE
    ?*print-forcing-whip-23* = FALSE
    ?*print-forcing-whip-24* = FALSE
    ?*print-forcing-whip-25* = FALSE
    ?*print-forcing-whip-26* = FALSE
    ?*print-forcing-whip-27* = FALSE
    ?*print-forcing-whip-28* = FALSE
    ?*print-forcing-whip-29* = FALSE
    ?*print-forcing-whip-30* = FALSE
    ?*print-forcing-whip-31* = FALSE
    ?*print-forcing-whip-32* = FALSE
    ?*print-forcing-whip-33* = FALSE
    ?*print-forcing-whip-34* = FALSE
    ?*print-forcing-whip-35* = FALSE
    ?*print-forcing-whip-36* = FALSE
)

(defglobal
    ?*print-forcing-gwhip* = FALSE
    ?*print-forcing-gwhip-1* = FALSE
    ?*print-forcing-gwhip-2* = FALSE
    ?*print-forcing-gwhip-3* = FALSE
    ?*print-forcing-gwhip-4* = FALSE
    ?*print-forcing-gwhip-5* = FALSE
    ?*print-forcing-gwhip-6* = FALSE
    ?*print-forcing-gwhip-7* = FALSE
    ?*print-forcing-gwhip-8* = FALSE
    ?*print-forcing-gwhip-9* = FALSE
    ?*print-forcing-gwhip-10* = FALSE
    ?*print-forcing-gwhip-11* = FALSE
    ?*print-forcing-gwhip-12* = FALSE
    ?*print-forcing-gwhip-13* = FALSE
    ?*print-forcing-gwhip-14* = FALSE
    ?*print-forcing-gwhip-15* = FALSE
    ?*print-forcing-gwhip-16* = FALSE
    ?*print-forcing-gwhip-17* = FALSE
    ?*print-forcing-gwhip-18* = FALSE
    ?*print-forcing-gwhip-19* = FALSE
    ?*print-forcing-gwhip-20* = FALSE
    ?*print-forcing-gwhip-21* = FALSE
    ?*print-forcing-gwhip-22* = FALSE
    ?*print-forcing-gwhip-23* = FALSE
    ?*print-forcing-gwhip-24* = FALSE
    ?*print-forcing-gwhip-25* = FALSE
    ?*print-forcing-gwhip-26* = FALSE
    ?*print-forcing-gwhip-27* = FALSE
    ?*print-forcing-gwhip-28* = FALSE
    ?*print-forcing-gwhip-29* = FALSE
    ?*print-forcing-gwhip-30* = FALSE
    ?*print-forcing-gwhip-31* = FALSE
    ?*print-forcing-gwhip-32* = FALSE
    ?*print-forcing-gwhip-33* = FALSE
    ?*print-forcing-gwhip-34* = FALSE
    ?*print-forcing-gwhip-35* = FALSE
    ?*print-forcing-gwhip-36* = FALSE
)

(defglobal
   ?*print-forcing-braid* = FALSE
    ?*print-forcing-braid-1* = FALSE
    ?*print-forcing-braid-2* = FALSE
    ?*print-forcing-braid-3* = FALSE
    ?*print-forcing-braid-4* = FALSE
    ?*print-forcing-braid-5* = FALSE
    ?*print-forcing-braid-6* = FALSE
    ?*print-forcing-braid-7* = FALSE
    ?*print-forcing-braid-8* = FALSE
    ?*print-forcing-braid-9* = FALSE
    ?*print-forcing-braid-10* = FALSE
    ?*print-forcing-braid-11* = FALSE
    ?*print-forcing-braid-12* = FALSE
    ?*print-forcing-braid-13* = FALSE
    ?*print-forcing-braid-14* = FALSE
    ?*print-forcing-braid-15* = FALSE
    ?*print-forcing-braid-16* = FALSE
    ?*print-forcing-braid-17* = FALSE
    ?*print-forcing-braid-18* = FALSE
    ?*print-forcing-braid-19* = FALSE
    ?*print-forcing-braid-20* = FALSE
    ?*print-forcing-braid-21* = FALSE
    ?*print-forcing-braid-22* = FALSE
    ?*print-forcing-braid-23* = FALSE
    ?*print-forcing-braid-24* = FALSE
    ?*print-forcing-braid-25* = FALSE
    ?*print-forcing-braid-26* = FALSE
    ?*print-forcing-braid-27* = FALSE
    ?*print-forcing-braid-28* = FALSE
    ?*print-forcing-braid-29* = FALSE
    ?*print-forcing-braid-30* = FALSE
    ?*print-forcing-braid-31* = FALSE
    ?*print-forcing-braid-32* = FALSE
    ?*print-forcing-braid-33* = FALSE
    ?*print-forcing-braid-34* = FALSE
    ?*print-forcing-braid-35* = FALSE
    ?*print-forcing-braid-36* = FALSE
)

(defglobal
   ?*print-forcing-gbraid* = FALSE
    ?*print-forcing-gbraid-1* = FALSE
    ?*print-forcing-gbraid-2* = FALSE
    ?*print-forcing-gbraid-3* = FALSE
    ?*print-forcing-gbraid-4* = FALSE
    ?*print-forcing-gbraid-5* = FALSE
    ?*print-forcing-gbraid-6* = FALSE
    ?*print-forcing-gbraid-7* = FALSE
    ?*print-forcing-gbraid-8* = FALSE
    ?*print-forcing-gbraid-9* = FALSE
    ?*print-forcing-gbraid-10* = FALSE
    ?*print-forcing-gbraid-11* = FALSE
    ?*print-forcing-gbraid-12* = FALSE
    ?*print-forcing-gbraid-13* = FALSE
    ?*print-forcing-gbraid-14* = FALSE
    ?*print-forcing-gbraid-15* = FALSE
    ?*print-forcing-gbraid-16* = FALSE
    ?*print-forcing-gbraid-17* = FALSE
    ?*print-forcing-gbraid-18* = FALSE
    ?*print-forcing-gbraid-19* = FALSE
    ?*print-forcing-gbraid-20* = FALSE
    ?*print-forcing-gbraid-21* = FALSE
    ?*print-forcing-gbraid-22* = FALSE
    ?*print-forcing-gbraid-23* = FALSE
    ?*print-forcing-gbraid-24* = FALSE
    ?*print-forcing-gbraid-25* = FALSE
    ?*print-forcing-gbraid-26* = FALSE
    ?*print-forcing-gbraid-27* = FALSE
    ?*print-forcing-gbraid-28* = FALSE
    ?*print-forcing-gbraid-29* = FALSE
    ?*print-forcing-gbraid-30* = FALSE
    ?*print-forcing-gbraid-31* = FALSE
    ?*print-forcing-gbraid-32* = FALSE
    ?*print-forcing-gbraid-33* = FALSE
    ?*print-forcing-gbraid-34* = FALSE
    ?*print-forcing-gbraid-35* = FALSE
    ?*print-forcing-gbraid-36* = FALSE
)

(defglobal ?*print-templates* = FALSE)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal
    ?*biwhip-contrads[0]* = (create$)
    ?*biwhip-contrads[1]* = (create$)
    ?*biwhip-contrads[2]* = (create$)
    ?*biwhip-contrads[3]* = (create$)
    ?*biwhip-contrads[4]* = (create$)
    ?*biwhip-contrads[5]* = (create$)
    ?*biwhip-contrads[6]* = (create$)
    ?*biwhip-contrads[7]* = (create$)
    ?*biwhip-contrads[8]* = (create$)
    ?*biwhip-contrads[9]* = (create$)
    ?*biwhip-contrads[10]* = (create$)
    ?*biwhip-contrads[11]* = (create$)
    ?*biwhip-contrads[12]* = (create$)
    ?*biwhip-contrads[13]* = (create$)
    ?*biwhip-contrads[14]* = (create$)
    ?*biwhip-contrads[15]* = (create$)
    ?*biwhip-contrads[16]* = (create$)
    ?*biwhip-contrads[17]* = (create$)
    ?*biwhip-contrads[18]* = (create$)
    ?*biwhip-contrads[19]* = (create$)
    ?*biwhip-contrads[20]* = (create$)
    ?*biwhip-contrads[21]* = (create$)
    ?*biwhip-contrads[22]* = (create$)
    ?*biwhip-contrads[23]* = (create$)
    ?*biwhip-contrads[24]* = (create$)
    ?*biwhip-contrads[25]* = (create$)
    ?*biwhip-contrads[26]* = (create$)
    ?*biwhip-contrads[27]* = (create$)
    ?*biwhip-contrads[28]* = (create$)
    ?*biwhip-contrads[29]* = (create$)
    ?*biwhip-contrads[30]* = (create$)
    ?*biwhip-contrads[31]* = (create$)
    ?*biwhip-contrads[32]* = (create$)
    ?*biwhip-contrads[33]* = (create$)
    ?*biwhip-contrads[34]* = (create$)
    ?*biwhip-contrads[35]* = (create$)
    ?*biwhip-contrads[36]* = (create$)
    ?*all-biwhip-contrads* = (create$)
)

(defglobal
    ?*biwhip-contrads[0]-count* = 0
    ?*biwhip-contrads[1]-count* = 0
    ?*biwhip-contrads[2]-count* = 0
    ?*biwhip-contrads[3]-count* = 0
    ?*biwhip-contrads[4]-count* = 0
    ?*biwhip-contrads[5]-count* = 0
    ?*biwhip-contrads[6]-count* = 0
    ?*biwhip-contrads[7]-count* = 0
    ?*biwhip-contrads[8]-count* = 0
    ?*biwhip-contrads[9]-count* = 0
    ?*biwhip-contrads[10]-count* = 0
    ?*biwhip-contrads[11]-count* = 0
    ?*biwhip-contrads[12]-count* = 0
    ?*biwhip-contrads[13]-count* = 0
    ?*biwhip-contrads[14]-count* = 0
    ?*biwhip-contrads[15]-count* = 0
    ?*biwhip-contrads[16]-count* = 0
    ?*biwhip-contrads[17]-count* = 0
    ?*biwhip-contrads[18]-count* = 0
    ?*biwhip-contrads[19]-count* = 0
    ?*biwhip-contrads[20]-count* = 0
    ?*biwhip-contrads[21]-count* = 0
    ?*biwhip-contrads[22]-count* = 0
    ?*biwhip-contrads[23]-count* = 0
    ?*biwhip-contrads[24]-count* = 0
    ?*biwhip-contrads[25]-count* = 0
    ?*biwhip-contrads[26]-count* = 0
    ?*biwhip-contrads[27]-count* = 0
    ?*biwhip-contrads[28]-count* = 0
    ?*biwhip-contrads[29]-count* = 0
    ?*biwhip-contrads[30]-count* = 0
    ?*biwhip-contrads[31]-count* = 0
    ?*biwhip-contrads[32]-count* = 0
    ?*biwhip-contrads[33]-count* = 0
    ?*biwhip-contrads[34]-count* = 0
    ?*biwhip-contrads[35]-count* = 0
    ?*biwhip-contrads[36]-count* = 0
    ?*all-biwhip-contrads-count* = 0
)



(deffunction initialise-biwhip-contrads ()
    (bind ?*biwhip-contrads[0]* (create$))
    (bind ?*biwhip-contrads[1]* (create$))
    (bind ?*biwhip-contrads[2]* (create$))
    (bind ?*biwhip-contrads[3]* (create$))
    (bind ?*biwhip-contrads[4]* (create$))
    (bind ?*biwhip-contrads[5]* (create$))
    (bind ?*biwhip-contrads[6]* (create$))
    (bind ?*biwhip-contrads[7]* (create$))
    (bind ?*biwhip-contrads[8]* (create$))
    (bind ?*biwhip-contrads[9]* (create$))
    (bind ?*biwhip-contrads[10]* (create$))
    (bind ?*biwhip-contrads[11]* (create$))
    (bind ?*biwhip-contrads[12]* (create$))
    (bind ?*biwhip-contrads[13]* (create$))
    (bind ?*biwhip-contrads[14]* (create$))
    (bind ?*biwhip-contrads[15]* (create$))
    (bind ?*biwhip-contrads[16]* (create$))
    (bind ?*biwhip-contrads[17]* (create$))
    (bind ?*biwhip-contrads[18]* (create$))
    (bind ?*biwhip-contrads[19]* (create$))
    (bind ?*biwhip-contrads[20]* (create$))
    (bind ?*biwhip-contrads[21]* (create$))
    (bind ?*biwhip-contrads[22]* (create$))
    (bind ?*biwhip-contrads[23]* (create$))
    (bind ?*biwhip-contrads[24]* (create$))
    (bind ?*biwhip-contrads[25]* (create$))
    (bind ?*biwhip-contrads[26]* (create$))
    (bind ?*biwhip-contrads[27]* (create$))
    (bind ?*biwhip-contrads[28]* (create$))
    (bind ?*biwhip-contrads[29]* (create$))
    (bind ?*biwhip-contrads[30]* (create$))
    (bind ?*biwhip-contrads[31]* (create$))
    (bind ?*biwhip-contrads[32]* (create$))
    (bind ?*biwhip-contrads[33]* (create$))
    (bind ?*biwhip-contrads[34]* (create$))
    (bind ?*biwhip-contrads[35]* (create$))
    (bind ?*biwhip-contrads[36]* (create$))
    (bind ?*all-biwhip-contrads* (create$))

    (bind ?*biwhip-contrads[0]-count* 0)
    (bind ?*biwhip-contrads[1]-count* 0)
    (bind ?*biwhip-contrads[2]-count* 0)
    (bind ?*biwhip-contrads[3]-count* 0)
    (bind ?*biwhip-contrads[4]-count* 0)
    (bind ?*biwhip-contrads[5]-count* 0)
    (bind ?*biwhip-contrads[6]-count* 0)
    (bind ?*biwhip-contrads[7]-count* 0)
    (bind ?*biwhip-contrads[8]-count* 0)
    (bind ?*biwhip-contrads[9]-count* 0)
    (bind ?*biwhip-contrads[10]-count* 0)
    (bind ?*biwhip-contrads[11]-count* 0)
    (bind ?*biwhip-contrads[12]-count* 0)
    (bind ?*biwhip-contrads[13]-count* 0)
    (bind ?*biwhip-contrads[14]-count* 0)
    (bind ?*biwhip-contrads[15]-count* 0)
    (bind ?*biwhip-contrads[16]-count* 0)
    (bind ?*biwhip-contrads[17]-count* 0)
    (bind ?*biwhip-contrads[18]-count* 0)
    (bind ?*biwhip-contrads[19]-count* 0)
    (bind ?*biwhip-contrads[20]-count* 0)
    (bind ?*biwhip-contrads[21]-count* 0)
    (bind ?*biwhip-contrads[22]-count* 0)
    (bind ?*biwhip-contrads[23]-count* 0)
    (bind ?*biwhip-contrads[24]-count* 0)
    (bind ?*biwhip-contrads[25]-count* 0)
    (bind ?*biwhip-contrads[26]-count* 0)
    (bind ?*biwhip-contrads[27]-count* 0)
    (bind ?*biwhip-contrads[28]-count* 0)
    (bind ?*biwhip-contrads[29]-count* 0)
    (bind ?*biwhip-contrads[30]-count* 0)
    (bind ?*biwhip-contrads[31]-count* 0)
    (bind ?*biwhip-contrads[32]-count* 0)
    (bind ?*biwhip-contrads[33]-count* 0)
    (bind ?*biwhip-contrads[34]-count* 0)
    (bind ?*biwhip-contrads[35]-count* 0)
    (bind ?*biwhip-contrads[36]-count* 0)
	(bind ?*all-biwhip-contrads-count* 0)
)




(defglobal
    ?*bibraid-contrads[0]* = (create$)
    ?*bibraid-contrads[1]* = (create$)
    ?*bibraid-contrads[2]* = (create$)
    ?*bibraid-contrads[3]* = (create$)
    ?*bibraid-contrads[4]* = (create$)
    ?*bibraid-contrads[5]* = (create$)
    ?*bibraid-contrads[6]* = (create$)
    ?*bibraid-contrads[7]* = (create$)
    ?*bibraid-contrads[8]* = (create$)
    ?*bibraid-contrads[9]* = (create$)
    ?*bibraid-contrads[10]* = (create$)
    ?*bibraid-contrads[11]* = (create$)
    ?*bibraid-contrads[12]* = (create$)
    ?*bibraid-contrads[13]* = (create$)
    ?*bibraid-contrads[14]* = (create$)
    ?*bibraid-contrads[15]* = (create$)
    ?*bibraid-contrads[16]* = (create$)
    ?*bibraid-contrads[17]* = (create$)
    ?*bibraid-contrads[18]* = (create$)
    ?*bibraid-contrads[19]* = (create$)
    ?*bibraid-contrads[20]* = (create$)
    ?*bibraid-contrads[21]* = (create$)
    ?*bibraid-contrads[22]* = (create$)
    ?*bibraid-contrads[23]* = (create$)
    ?*bibraid-contrads[24]* = (create$)
    ?*bibraid-contrads[25]* = (create$)
    ?*bibraid-contrads[26]* = (create$)
    ?*bibraid-contrads[27]* = (create$)
    ?*bibraid-contrads[28]* = (create$)
    ?*bibraid-contrads[29]* = (create$)
    ?*bibraid-contrads[30]* = (create$)
    ?*bibraid-contrads[31]* = (create$)
    ?*bibraid-contrads[32]* = (create$)
    ?*bibraid-contrads[33]* = (create$)
    ?*bibraid-contrads[34]* = (create$)
    ?*bibraid-contrads[35]* = (create$)
    ?*bibraid-contrads[36]* = (create$)
    ?*all-bibraid-contrads* = (create$)
)

(defglobal
    ?*bibraid-contrads[0]-count* = 0
    ?*bibraid-contrads[1]-count* = 0
    ?*bibraid-contrads[2]-count* = 0
    ?*bibraid-contrads[3]-count* = 0
    ?*bibraid-contrads[4]-count* = 0
    ?*bibraid-contrads[5]-count* = 0
    ?*bibraid-contrads[6]-count* = 0
    ?*bibraid-contrads[7]-count* = 0
    ?*bibraid-contrads[8]-count* = 0
    ?*bibraid-contrads[9]-count* = 0
    ?*bibraid-contrads[10]-count* = 0
    ?*bibraid-contrads[11]-count* = 0
    ?*bibraid-contrads[12]-count* = 0
    ?*bibraid-contrads[13]-count* = 0
    ?*bibraid-contrads[14]-count* = 0
    ?*bibraid-contrads[15]-count* = 0
    ?*bibraid-contrads[16]-count* = 0
    ?*bibraid-contrads[17]-count* = 0
    ?*bibraid-contrads[18]-count* = 0
    ?*bibraid-contrads[19]-count* = 0
    ?*bibraid-contrads[20]-count* = 0
    ?*bibraid-contrads[21]-count* = 0
    ?*bibraid-contrads[22]-count* = 0
    ?*bibraid-contrads[23]-count* = 0
    ?*bibraid-contrads[24]-count* = 0
    ?*bibraid-contrads[25]-count* = 0
    ?*bibraid-contrads[26]-count* = 0
    ?*bibraid-contrads[27]-count* = 0
    ?*bibraid-contrads[28]-count* = 0
    ?*bibraid-contrads[29]-count* = 0
    ?*bibraid-contrads[30]-count* = 0
    ?*bibraid-contrads[31]-count* = 0
    ?*bibraid-contrads[32]-count* = 0
    ?*bibraid-contrads[33]-count* = 0
    ?*bibraid-contrads[34]-count* = 0
    ?*bibraid-contrads[35]-count* = 0
    ?*bibraid-contrads[36]-count* = 0
    ?*all-bibraid-contrads-count* = 0
)



(deffunction initialise-bibraid-contrads ()
    (bind ?*bibraid-contrads[0]* (create$))
    (bind ?*bibraid-contrads[1]* (create$))
    (bind ?*bibraid-contrads[2]* (create$))
    (bind ?*bibraid-contrads[3]* (create$))
    (bind ?*bibraid-contrads[4]* (create$))
    (bind ?*bibraid-contrads[5]* (create$))
    (bind ?*bibraid-contrads[6]* (create$))
    (bind ?*bibraid-contrads[7]* (create$))
    (bind ?*bibraid-contrads[8]* (create$))
    (bind ?*bibraid-contrads[9]* (create$))
    (bind ?*bibraid-contrads[10]* (create$))
    (bind ?*bibraid-contrads[11]* (create$))
    (bind ?*bibraid-contrads[12]* (create$))
    (bind ?*bibraid-contrads[13]* (create$))
    (bind ?*bibraid-contrads[14]* (create$))
    (bind ?*bibraid-contrads[15]* (create$))
    (bind ?*bibraid-contrads[16]* (create$))
    (bind ?*bibraid-contrads[17]* (create$))
    (bind ?*bibraid-contrads[18]* (create$))
    (bind ?*bibraid-contrads[19]* (create$))
    (bind ?*bibraid-contrads[20]* (create$))
    (bind ?*bibraid-contrads[21]* (create$))
    (bind ?*bibraid-contrads[22]* (create$))
    (bind ?*bibraid-contrads[23]* (create$))
    (bind ?*bibraid-contrads[24]* (create$))
    (bind ?*bibraid-contrads[25]* (create$))
    (bind ?*bibraid-contrads[26]* (create$))
    (bind ?*bibraid-contrads[27]* (create$))
    (bind ?*bibraid-contrads[28]* (create$))
    (bind ?*bibraid-contrads[29]* (create$))
    (bind ?*bibraid-contrads[30]* (create$))
    (bind ?*bibraid-contrads[31]* (create$))
    (bind ?*bibraid-contrads[32]* (create$))
    (bind ?*bibraid-contrads[33]* (create$))
    (bind ?*bibraid-contrads[34]* (create$))
    (bind ?*bibraid-contrads[35]* (create$))
    (bind ?*bibraid-contrads[36]* (create$))
    (bind ?*all-bibraid-contrads* (create$))

    (bind ?*bibraid-contrads[0]-count* 0)
    (bind ?*bibraid-contrads[1]-count* 0)
    (bind ?*bibraid-contrads[2]-count* 0)
    (bind ?*bibraid-contrads[3]-count* 0)
    (bind ?*bibraid-contrads[4]-count* 0)
    (bind ?*bibraid-contrads[5]-count* 0)
    (bind ?*bibraid-contrads[6]-count* 0)
    (bind ?*bibraid-contrads[7]-count* 0)
    (bind ?*bibraid-contrads[8]-count* 0)
    (bind ?*bibraid-contrads[9]-count* 0)
    (bind ?*bibraid-contrads[10]-count* 0)
    (bind ?*bibraid-contrads[11]-count* 0)
    (bind ?*bibraid-contrads[12]-count* 0)
    (bind ?*bibraid-contrads[13]-count* 0)
    (bind ?*bibraid-contrads[14]-count* 0)
    (bind ?*bibraid-contrads[15]-count* 0)
    (bind ?*bibraid-contrads[16]-count* 0)
    (bind ?*bibraid-contrads[17]-count* 0)
    (bind ?*bibraid-contrads[18]-count* 0)
    (bind ?*bibraid-contrads[19]-count* 0)
    (bind ?*bibraid-contrads[20]-count* 0)
    (bind ?*bibraid-contrads[21]-count* 0)
    (bind ?*bibraid-contrads[22]-count* 0)
    (bind ?*bibraid-contrads[23]-count* 0)
    (bind ?*bibraid-contrads[24]-count* 0)
    (bind ?*bibraid-contrads[25]-count* 0)
    (bind ?*bibraid-contrads[26]-count* 0)
    (bind ?*bibraid-contrads[27]-count* 0)
    (bind ?*bibraid-contrads[28]-count* 0)
    (bind ?*bibraid-contrads[29]-count* 0)
    (bind ?*bibraid-contrads[30]-count* 0)
    (bind ?*bibraid-contrads[31]-count* 0)
    (bind ?*bibraid-contrads[32]-count* 0)
    (bind ?*bibraid-contrads[33]-count* 0)
    (bind ?*bibraid-contrads[34]-count* 0)
    (bind ?*bibraid-contrads[35]-count* 0)
    (bind ?*bibraid-contrads[36]-count* 0)
    (bind ?*all-bibraid-contrads-count* 0)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; print bi-xxx and related rules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; forcing bi-whips and forcing bi-braids

(defglobal
    ?*print-forcing-bi-whip* = FALSE
    ?*print-forcing-bi-braid* = FALSE
    ?*print-forcing-bi-TE* = FALSE
)

(defglobal ?*print-ECP*-details* = TRUE)

;;; w*-whips

(defglobal
    ?*print-w*-whip* = FALSE
    ?*print-w*-whip-1* = FALSE
    ?*print-w*-whip-2* = FALSE
    ?*print-w*-whip-3* = FALSE
    ?*print-w*-whip-4* = FALSE
    ?*print-w*-whip-5* = FALSE
    ?*print-w*-whip-6* = FALSE
    ?*print-w*-whip-7* = FALSE
    ?*print-w*-whip-8* = FALSE
    ?*print-w*-whip-9* = FALSE
    ?*print-w*-whip-10* = FALSE
    ?*print-w*-whip-11* = FALSE
    ?*print-w*-whip-12* = FALSE
    ?*print-w*-whip-13* = FALSE
    ?*print-w*-whip-14* = FALSE
    ?*print-w*-whip-15* = FALSE
    ?*print-w*-whip-16* = FALSE
    ?*print-w*-whip-17* = FALSE
    ?*print-w*-whip-18* = FALSE
    ?*print-w*-whip-19* = FALSE
    ?*print-w*-whip-20* = FALSE
    ?*print-w*-whip-21* = FALSE
    ?*print-w*-whip-22* = FALSE
    ?*print-w*-whip-23* = FALSE
    ?*print-w*-whip-24* = FALSE
    ?*print-w*-whip-25* = FALSE
    ?*print-w*-whip-26* = FALSE
    ?*print-w*-whip-27* = FALSE
    ?*print-w*-whip-28* = FALSE
    ?*print-w*-whip-29* = FALSE
    ?*print-w*-whip-30* = FALSE
    ?*print-w*-whip-31* = FALSE
    ?*print-w*-whip-32* = FALSE
    ?*print-w*-whip-33* = FALSE
    ?*print-w*-whip-34* = FALSE
    ?*print-w*-whip-35* = FALSE
    ?*print-w*-whip-36* = FALSE
)


;;; b*-braids

(defglobal
    ?*print-b*-braid* = FALSE
    ?*print-b*-braid-1* = FALSE
    ?*print-b*-braid-2* = FALSE
    ?*print-b*-braid-3* = FALSE
    ?*print-b*-braid-4* = FALSE
    ?*print-b*-braid-5* = FALSE
    ?*print-b*-braid-6* = FALSE
    ?*print-b*-braid-7* = FALSE
    ?*print-b*-braid-8* = FALSE
    ?*print-b*-braid-9* = FALSE
    ?*print-b*-braid-10* = FALSE
    ?*print-b*-braid-11* = FALSE
    ?*print-b*-braid-12* = FALSE
    ?*print-b*-braid-13* = FALSE
    ?*print-b*-braid-14* = FALSE
    ?*print-b*-braid-15* = FALSE
    ?*print-b*-braid-16* = FALSE
    ?*print-b*-braid-17* = FALSE
    ?*print-b*-braid-18* = FALSE
    ?*print-b*-braid-19* = FALSE
    ?*print-b*-braid-20* = FALSE
    ?*print-b*-braid-21* = FALSE
    ?*print-b*-braid-22* = FALSE
    ?*print-b*-braid-23* = FALSE
    ?*print-b*-braid-24* = FALSE
    ?*print-b*-braid-25* = FALSE
    ?*print-b*-braid-26* = FALSE
    ?*print-b*-braid-27* = FALSE
    ?*print-b*-braid-28* = FALSE
    ?*print-b*-braid-29* = FALSE
    ?*print-b*-braid-30* = FALSE
    ?*print-b*-braid-31* = FALSE
    ?*print-b*-braid-32* = FALSE
    ?*print-b*-braid-33* = FALSE
    ?*print-b*-braid-34* = FALSE
    ?*print-b*-braid-35* = FALSE
    ?*print-b*-braid-36* = FALSE
)


;;; bi-whip contradictions

(defglobal
    ?*print-biwhip-contrad* = FALSE
    ?*print-biwhip-1-contrad* = FALSE
    ?*print-biwhip-2-contrad* = FALSE
    ?*print-biwhip-3-contrad* = FALSE
    ?*print-biwhip-4-contrad* = FALSE
    ?*print-biwhip-5-contrad* = FALSE
    ?*print-biwhip-6-contrad* = FALSE
    ?*print-biwhip-7-contrad* = FALSE
    ?*print-biwhip-8-contrad* = FALSE
    ?*print-biwhip-9-contrad* = FALSE
    ?*print-biwhip-10-contrad* = FALSE
    ?*print-biwhip-11-contrad* = FALSE
    ?*print-biwhip-12-contrad* = FALSE
    ?*print-biwhip-13-contrad* = FALSE
    ?*print-biwhip-14-contrad* = FALSE
    ?*print-biwhip-15-contrad* = FALSE
    ?*print-biwhip-16-contrad* = FALSE
    ?*print-biwhip-17-contrad* = FALSE
    ?*print-biwhip-18-contrad* = FALSE
    ?*print-biwhip-19-contrad* = FALSE
    ?*print-biwhip-20-contrad* = FALSE
    ?*print-biwhip-21-contrad* = FALSE
    ?*print-biwhip-22-contrad* = FALSE
    ?*print-biwhip-23-contrad* = FALSE
    ?*print-biwhip-24-contrad* = FALSE
    ?*print-biwhip-25-contrad* = FALSE
    ?*print-biwhip-26-contrad* = FALSE
    ?*print-biwhip-27-contrad* = FALSE
    ?*print-biwhip-28-contrad* = FALSE
    ?*print-biwhip-29-contrad* = FALSE
    ?*print-biwhip-30-contrad* = FALSE
    ?*print-biwhip-31-contrad* = FALSE
    ?*print-biwhip-32-contrad* = FALSE
    ?*print-biwhip-33-contrad* = FALSE
    ?*print-biwhip-34-contrad* = FALSE
    ?*print-biwhip-35-contrad* = FALSE
    ?*print-biwhip-36-contrad* = FALSE
)

;;; bi-braid contradictions

(defglobal
    ?*print-bibraid-contrad* = FALSE
    ?*print-bibraid-1-contrad* = FALSE
    ?*print-bibraid-2-contrad* = FALSE
    ?*print-bibraid-3-contrad* = FALSE
    ?*print-bibraid-4-contrad* = FALSE
    ?*print-bibraid-5-contrad* = FALSE
    ?*print-bibraid-6-contrad* = FALSE
    ?*print-bibraid-7-contrad* = FALSE
    ?*print-bibraid-8-contrad* = FALSE
    ?*print-bibraid-9-contrad* = FALSE
    ?*print-bibraid-10-contrad* = FALSE
    ?*print-bibraid-11-contrad* = FALSE
    ?*print-bibraid-12-contrad* = FALSE
    ?*print-bibraid-13-contrad* = FALSE
    ?*print-bibraid-14-contrad* = FALSE
    ?*print-bibraid-15-contrad* = FALSE
    ?*print-bibraid-16-contrad* = FALSE
    ?*print-bibraid-17-contrad* = FALSE
    ?*print-bibraid-18-contrad* = FALSE
    ?*print-bibraid-19-contrad* = FALSE
    ?*print-bibraid-20-contrad* = FALSE
    ?*print-bibraid-21-contrad* = FALSE
    ?*print-bibraid-22-contrad* = FALSE
    ?*print-bibraid-23-contrad* = FALSE
    ?*print-bibraid-24-contrad* = FALSE
    ?*print-bibraid-25-contrad* = FALSE
    ?*print-bibraid-26-contrad* = FALSE
    ?*print-bibraid-27-contrad* = FALSE
    ?*print-bibraid-28-contrad* = FALSE
    ?*print-bibraid-29-contrad* = FALSE
    ?*print-bibraid-30-contrad* = FALSE
    ?*print-bibraid-31-contrad* = FALSE
    ?*print-bibraid-32-contrad* = FALSE
    ?*print-bibraid-33-contrad* = FALSE
    ?*print-bibraid-34-contrad* = FALSE
    ?*print-bibraid-35-contrad* = FALSE
    ?*print-bibraid-36-contrad* = FALSE
)


;;; w-whips

(defglobal
    ?*print-w-whip* = FALSE
    ?*print-w-whip-1* = FALSE
    ?*print-w-whip-2* = FALSE
    ?*print-w-whip-3* = FALSE
    ?*print-w-whip-4* = FALSE
    ?*print-w-whip-5* = FALSE
    ?*print-w-whip-6* = FALSE
    ?*print-w-whip-7* = FALSE
    ?*print-w-whip-8* = FALSE
    ?*print-w-whip-9* = FALSE
    ?*print-w-whip-10* = FALSE
    ?*print-w-whip-11* = FALSE
    ?*print-w-whip-12* = FALSE
    ?*print-w-whip-13* = FALSE
    ?*print-w-whip-14* = FALSE
    ?*print-w-whip-15* = FALSE
    ?*print-w-whip-16* = FALSE
    ?*print-w-whip-17* = FALSE
    ?*print-w-whip-18* = FALSE
    ?*print-w-whip-19* = FALSE
    ?*print-w-whip-20* = FALSE
    ?*print-w-whip-21* = FALSE
    ?*print-w-whip-22* = FALSE
    ?*print-w-whip-23* = FALSE
    ?*print-w-whip-24* = FALSE
    ?*print-w-whip-25* = FALSE
    ?*print-w-whip-26* = FALSE
    ?*print-w-whip-27* = FALSE
    ?*print-w-whip-28* = FALSE
    ?*print-w-whip-29* = FALSE
    ?*print-w-whip-30* = FALSE
    ?*print-w-whip-31* = FALSE
    ?*print-w-whip-32* = FALSE
    ?*print-w-whip-33* = FALSE
    ?*print-w-whip-34* = FALSE
    ?*print-w-whip-35* = FALSE
    ?*print-w-whip-36* = FALSE
)

;;; b-braids

(defglobal
    ?*print-b-braid* = FALSE
    ?*print-b-braid-1* = FALSE
    ?*print-b-braid-2* = FALSE
    ?*print-b-braid-3* = FALSE
    ?*print-b-braid-4* = FALSE
    ?*print-b-braid-5* = FALSE
    ?*print-b-braid-6* = FALSE
    ?*print-b-braid-7* = FALSE
    ?*print-b-braid-8* = FALSE
    ?*print-b-braid-9* = FALSE
    ?*print-b-braid-10* = FALSE
    ?*print-b-braid-11* = FALSE
    ?*print-b-braid-12* = FALSE
    ?*print-b-braid-13* = FALSE
    ?*print-b-braid-14* = FALSE
    ?*print-b-braid-15* = FALSE
    ?*print-b-braid-16* = FALSE
    ?*print-b-braid-17* = FALSE
    ?*print-b-braid-18* = FALSE
    ?*print-b-braid-19* = FALSE
    ?*print-b-braid-20* = FALSE
    ?*print-b-braid-21* = FALSE
    ?*print-b-braid-22* = FALSE
    ?*print-b-braid-23* = FALSE
    ?*print-b-braid-24* = FALSE
    ?*print-b-braid-25* = FALSE
    ?*print-b-braid-26* = FALSE
    ?*print-b-braid-27* = FALSE
    ?*print-b-braid-28* = FALSE
    ?*print-b-braid-29* = FALSE
    ?*print-b-braid-30* = FALSE
    ?*print-b-braid-31* = FALSE
    ?*print-b-braid-32* = FALSE
    ?*print-b-braid-33* = FALSE
    ?*print-b-braid-34* = FALSE
    ?*print-b-braid-35* = FALSE
    ?*print-b-braid-36* = FALSE
)


