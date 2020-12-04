
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
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GENERAL CLIPS or JESS VARIABLES AND GENERAL BEHAVIOUR
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*CSP-Rules-VersionNumber* = 2.1)

;;; Decide whether to use Clips or Jess
(defglobal ?*inference-engine* = CLIPS)
; or (but there is no longer any guarantee of full compatibility with JESS):
; (defglobal ?*inference-engine* = JESS)

(defglobal ?*Jess-version* = "8.0a1")

(defglobal ?*inference-engine-version* =
    (if (eq ?*inference-engine* CLIPS) then ?*Clips-version*
        else (if (eq ?*inference-engine* JESS) then ?*Jess-version*
            else "ERROR")
    )
)

;;; CLIPS/JESS default strategy is depth-first; keep it so
;;; All the global variables will be kept by a reset.
;;; This is important for a good loading of rules and for keeping track of lists of solved instances
(defglobal ?*dummy-for-setting-CLIPS-behaviour* = (progn
    (set-strategy depth)
    (set-reset-globals FALSE)
))




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GENERAL GLOBAL VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal
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
    
    ?*add-grid-to-solved-list* = TRUE
    ?*add-instance-to-solved-list* = TRUE
    ?*solved-list* = (create$)
    ;;; Variable used to restrict the search for eliminations to a list of candidates
    ?*focus-list* = (create$)

    ?*init-instance-time* = 0
    ?*solve-instance-time* = 0
    ?*total-instance-time* = 0
    ?*end-instance-time* = 0

    ?*DFS-max-depth* = 0

    ?*has-oddagon* = FALSE
)


(deffunction init-universal-globals ()
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

    (bind ?*context-counter* 0)
    (bind ?*max-depth* 0)
    (bind ?*biTE-context-counter* 0)

    (bind ?*solved-list* (create$))
    (bind ?*focus-list* (create$))

    (bind ?*init-instance-time* 0)
    (bind ?*solve-instance-time* 0)
    (bind ?*total-instance-time* 0)
    (bind ?*end-instance-time* 0)

    (bind ?has-oddagon* FALSE)
)


;;; Each application may have additional global variables.
;;; In that case, it must redefine the following init-specific-globals function
(deffunction init-specific-globals () TRUE)



;;; The following variables are NOT re-initialised by init-universal-globals
;;; so that they can be defined manually before solution
;;; As a result, they MUST be re-initialised manually after each run

;;; Variable used to simulate the effect of non-programmed patterns
;;; used by rule "simulated-elimination-rule", applied before any other rule
(defglobal ?*simulated-eliminations* = (create$))


;;; Variable and function used to avoid testing useless patterns when the solution is already known
(defglobal ?*known-to-be-in-solution* = (create$))
(deffunction known-to-be-in-solution (?label) (member$ ?label ?*known-to-be-in-solution*))






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBAL VARIABLES USED FOR SELECTING WHICH RULES WILL BE LOADED, AND THEIR DEFAULT VALUES
;;;
;;; BY DEFAULT, ALL THE RULES IN BRT AND ONLY THESE RULES ARE LOADED; THEY CANNOT BE DISABLED
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Type of optimisation for the chain rules (SPEED or MEMORY)
(defglobal ?*chain-rules-optimisation-type* = SPEED)

;;; By default, all the rules can be applied in any context
(defglobal ?*Context-restriction* = FALSE)


;;; in the previous standard behaviour of CSP-Rules, when a pattern could have produced more than one elimination,
;;; the activation of a simpler rule by the first elimination could prevent further potential eliminations.
;;; This default behaviour is now changed for Whips[1], bivalue-chains (typed or not), t-Whips (typed or not) and Subsets.
;;; But CSP-Rules allows to revert to the previous behaviour,
;;; independently for Whips[1], for bivalue-chains and t-Whips of any length and for Subsets.
;;; Un-comment the relevant line(s) in the configuration file if you want these rules to be "interrupted" as the other rules

(defglobal ?*blocked-Whips[1]* = TRUE)
(defglobal ?*blocked-bivalue-chains* = TRUE) ; this applies to both the typed and untyped versions
(defglobal ?*blocked-t-Whips* = TRUE) ; this applies to both the typed and untyped versions
(defglobal ?*blocked-Subsets* = TRUE)


;;; Although CSP-Rules doesn't have generic Subsets rules, it provides the general global variables to manage them
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


;;; setting ?*All-generic-chain-rules* allows to load all the first level rules
;;; the first level rules are those defined below
(defglobal ?*All-generic-chain-rules* = FALSE)

;;; Whips[1] and ?*Typed-Partial-Whips[1] are special cases because they must be active in many cases
;;; even when longer Whips or Typed-Whips are not
;;; These variables are managed by CSP-Rules, not by the user
(defglobal ?*Whips[1]* = FALSE)
(defglobal ?*Typed-Partial-Whips[1]* = FALSE)

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
(defglobal ?*Typed-g-Whips* = FALSE)
(defglobal ?*Typed-Chains* = FALSE)

(defglobal ?*restrict-csp-types-in-typed-chains* = FALSE)
(defglobal ?*allowed-csp-types* = (create$))


(defglobal ?*G-Labels* = FALSE)
(defglobal ?*G-Bivalue-Chains* = FALSE)
(defglobal ?*G2-Whips* = FALSE)
(defglobal ?*G-Whips* = FALSE)
(defglobal ?*G-Braids* = FALSE)

(defglobal ?*Forcing-Whips* = FALSE)
(defglobal ?*Forcing-Braids* = FALSE)
(defglobal ?*Forcing-G-Whips* = FALSE)
(defglobal ?*Forcing-G-Braids* = FALSE)


;;; by default, all the chain rules of any coded length are loaded when their pattern is activated,
;;; but this can be changed by the user

(defglobal ?*bivalue-chains-max-length* = 20)
(defglobal ?*z-chains-max-length* = 20)
(defglobal ?*oddagons-max-length* = 35)
(defglobal ?*t-whips-max-length* = 36)
(defglobal ?*whips-max-length* = 36)
(defglobal ?*braids-max-length* = 36)

(defglobal ?*g-bivalue-chains-max-length* = 20)
(defglobal ?*g2whips-max-length* = 36)
(defglobal ?*gwhips-max-length* = 36)
(defglobal ?*g2braids-max-length* = 36)
(defglobal ?*gbraids-max-length* = 36)

(defglobal ?*typed-bivalue-chains-max-length* = 20)
(defglobal ?*typed-z-chains-max-length* = 20)
(defglobal ?*typed-t-whips-max-length* = 36)
(defglobal ?*typed-whips-max-length* = 36)
(defglobal ?*typed-gwhips-max-length* = 36)

(defglobal ?*forcing-whips-max-length* = 36)
(defglobal ?*forcing-gwhips-max-length* = 36)
(defglobal ?*forcing-braids-max-length* = 36)
(defglobal ?*forcing-gbraids-max-length* = 36)


(defglobal ?*special-TE* = FALSE) ;;; by default, there is no Trial and Error at depth 1
(defglobal ?*TE1* = FALSE) ;;; by default, there is no Trial and Error at depth 1
(defglobal ?*TE2* = FALSE) ;;; by default, there is no Trial and Error at depth 2
(defglobal ?*TE3* = FALSE) ;;; by default, there is no Trial and Error at depth 3

(defglobal ?*Templates* = FALSE)
(defglobal ?*Templates-max-length* = 1)

(defglobal ?*special-DFS* = FALSE) ;;; by default, there is no depth-first search
(defglobal ?*DFS* = FALSE) ;;; by default, there is no depth-first search


(defglobal ?*rating-type* = "") ;;; the final value will be computed automatically in the application loader
(defglobal ?*generic-rating-type* = "") ;;; this will be computed by the generic loader
(defglobal ?*application-specific-rating-type* = "") ;;; this will be computed by the application loader



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBAL VARIABLES USED FOR BATCH PROCESSING
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

;;; variables used when studying lists of grids, to keep track of those that are solved by a given strategy:
(defglobal 
    ?*not-solved-list* = (create$)
    ?*no-sol-list* = (create$)
    ?*multi-sol-list* = (create$)
)

;;; variables used to keep track of special patterns:
(defglobal
    ?*oddagon-list* = (create$)
    ?*special-list* = (create$)
    ?*special-list1* = (create$)
    ?*special-list2* = (create$)
)


;;; ?*save-solutions* should be kept to FALSE, except within a function that opens a writable solutions file with symbol "solutions-file"
(defglobal 
    ?*save-solutions* = FALSE
    ?*solutions-file* = "solutions-file"
)



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

;;; The variables defined below allow a very fine tuning of what's printed.
;;; Application of particular techniques can be traced when some of the following variables are set to TRUE.
;;; The detailed correct message can be found in the rhs of each rule.
;;; The resulting situation can be printed in detail before or after anything is changed by the rhs, or both.

;;; Setting ?*print-actions* to TRUE allows to trace all actions at once, except basic constraint propagation rules.
;;; To trace these, ?*print-details* must be set to TRUE (deleted for efficiency).
;;; Setting ?*print-init-details* to TRUE allows to trace the initialization of candidate sets (deleted for efficiency).

(defglobal ?*print-initial-state* = TRUE) ; number of values and candidates, csp-links, links, density
(defglobal ?*print-actions* = TRUE) ; print all the non-ECP rules
(defglobal ?*print-solution* = TRUE)

(defglobal ?*print-all-details* = FALSE) ; includes any of the following
(defglobal ?*print-init-details* = FALSE) ; print data about c-values and candidates initialisation
(defglobal ?*print-ECP-details* = FALSE) ; print all the ECP eliminations

(defglobal ?*print-levels* = TRUE) ; <<<<<<<<<<<<<<<<<< useful for tracking the advancement of hard instances

(defglobal ?*print-hypothesis* = TRUE) ; used only for T&E; by default, hypotheses are printed when T&E is on
(defglobal ?*print-phase* = TRUE) ; used only for T&E



(defglobal ?*print-exceptional-patterns* = TRUE)
(defglobal ?*debug* = FALSE)
(defglobal ?*g-debug* = FALSE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; print rule firings according to length (or "size") of defining pattern
;;; Lk is the number of CSP-variables involved in the pattern definition
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
;;; print rule firings according to type (or type and size) of defining pattern
;;; very fine grain details (seldom used - but has been useful for debugging)
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







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GLOBAL VARIABLES RELATED TO BI-WHIPS, BI-BRAIDS, BI-T&E, W*-WHIPS AND W*-BRAIDS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; if w*-whips or b*-braids are activated,
;;; one must first activate Bi-Whips or Bi-Braids or Bi-T&E,
;;; unless all the bi-braid contradictions have been pre-computed
(defglobal ?*Bi-Whips* = FALSE)
(defglobal ?*Bi-Braids* = FALSE)
(defglobal ?*pre-computed-all-bi-braid-contrads* = FALSE)

;;; if bi-braids are used, bi-whips of minimum length up to 2 must be used
(defglobal ?*biwhips-max-length* = 36)
(defglobal ?*bibraids-max-length* = 36)

;;; When W*-Whips or B*-Braids are used, ?*ECP** is automatically set to True
;;; but it can be used independently of W*-Whips or B*-Braids
(defglobal ?*ECP** = FALSE)


(defglobal ?*W*-Whips* = FALSE)
(defglobal ?*w*-whips-max-length* = 20)
(defglobal ?*B*-Braids* = FALSE)
(defglobal ?*b*-braids-max-length* = 20)


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
;;; let's keep this for later
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*Forcing-Bi-Whips* = FALSE)
(defglobal ?*Forcing-Bi-Braids* = FALSE)
(defglobal ?*Forcing-bi-TE* = FALSE)

(defglobal ?*W-Whips* = FALSE)
(defglobal ?*B-Braids* = FALSE)
(defglobal ?*w-whips-max-length* = 20)
(defglobal ?*b-braids-max-length* = 20)



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


