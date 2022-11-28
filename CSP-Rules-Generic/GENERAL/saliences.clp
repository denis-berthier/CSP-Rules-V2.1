
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              SALIENCES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;           January 2006 - December 2021             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; This file defines the saliences of the generic rules of CSP-Rules.
;;; It also provides hooks for defining the saliences of application-specific rules.

;;; WARNING : there seems to be lots of saliences
;;; but in any real configuration, only few of them will be effectively used



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; GENERIC FUNCTIONS FOR THE DEFINITION OF SALIENCES
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




(defglobal ?*saliences-initialised* = FALSE)
(defglobal ?*next-rule-salience* = 0)

(deffunction define-highest-salience()
    (bind ?*next-rule-salience* 9990)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; LEVEL LO
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; There is a basic strategy (BRT) based on singles and elementary constraints propagation.
;;; It consists, in that order of precedence, of:
;;; - contradiction detection,
;;; - elementary constraints propagation,
;;; - singles, i.e. assertion of a value when a csp-variable has a single candidate.


;;; Any strategy is the aggregation of this basic strategy with  one or more techniques
;;; such as "whips", "braids", ...

;;; It is generally considered bad style to make use of mant saliences in a knowledge base and I agree with this in general.
;;; But this should not be made into a dogma.
;;; In the present case, using saliences (in combination with control facts for activating the complex techniques when and only when necessary)
;;; is very efficient and it does not make the knowledge base obscure.
;;; It allows the knowledge base to be easily extended.
;;; It allows easy modifications of the techniques ordering.

;;; The rules defining any technique must be set up with the appropriate saliences,
;;; so that complex techniques are activated progressively, when nothing easier is applicable.
;;; This allows to keep reasonable computing times for easy grids.

;;; Assertion of new c-values (and simultaneous retraction of candidates - via the modify CLIPS primitive)
;;; should not occur before simple constraints resulting from assertion of previous c-values
;;; are fully propagated along all the constraints.
;;; This precedence order is essential for contradiction detection.

;;; In this version of CSP-Rules, the delayed initialsation of links leads to spectacularly faster solutions for Kakuro. Generally speaking, it leads to fewer links and csp-links at the  start of "serious play"

;;; The following predefined saliences implement these constraints on precedence order.




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; IN CASE TYPED CHAINS ARE USED, THIS ENSURES THEIR PROPER MANAGEMENT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*Typed-Chains-related-salience* = 0)

(deffunction define-Typed-Chains-related-salience()
    (bind ?*Typed-Chains-related-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; IN CASE TRIAL AND ERROR IS ALLOWED:
;;; MEMORY MANAGEMENT, HYPOTHESIS GENERATION, PHASE AND CONTEXT MANAGEMENT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Once a new context is created for T&E (or DFS), it should be fully initialised before anything is allowed to happen in it.
;;; Once it is found inconsistent, it should be properly cleaned before anything else happens (for memory management reasons).
;;; Therefore, the following saliences are the highest of all.

(defglobal ?*init-context-salience* = 0)
(defglobal ?*init-context-salience-1* = 0)
(defglobal ?*init-context-salience-2* = 0)
(defglobal ?*contradiction-in-elim-context-salience* = 0)
(defglobal ?*contradiction-in-context-salience* = 0)
(defglobal ?*clean-context-salience* = 0)

(deffunction define-TE1-context-saliences ()
    (bind ?*init-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-context-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-context-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*contradiction-in-elim-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*contradiction-in-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*clean-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GENERAL INITIALISATIONS AND SIMULATED ELIMINATIONS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Define enough saliences for possibly complex initialisations specific to an application

(deffunction define-specific-init-saliences ())


(defglobal ?*init-salience* = 0)
(defglobal ?*init-salience-1* = 0)
(defglobal ?*init-salience-2* = 0)
(defglobal ?*init-salience-3* = 0)
(defglobal ?*init-salience-4* = 0)
(defglobal ?*init-salience-5* = 0)
(defglobal ?*init-salience-6* = 0)
(defglobal ?*init-salience-7* = 0)
(defglobal ?*init-salience-8* = 0)
(defglobal ?*init-salience-9* = 0)
(defglobal ?*init-salience-10* = 0)

(deffunction define-generic-init-saliences ()
    ;;; the generic version provides five levels of initialisation; this should be much more than necessary
    (bind ?*init-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-salience-4* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-salience-5* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-salience-6* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-salience-7* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-salience-8* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-salience-9* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-salience-10* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)


;;; Generically, CSP-Rules provides the possibility for simulating eliminations
;;; that would be done by rules that are not (yet) programmed
;;; This may be useful for testing the efficiency of complex rules before programming them
;;; They must be applied immediately after all the initialisations are done,
;;; but before starting resolution

(defglobal ?*simulated-eliminations-salience* = 0)

(deffunction define-simulated-eliminations-saliences ()
    (bind ?*simulated-eliminations-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; BLOCKED RULE APPLICATION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Blocked rule eliminations allow to apply all the potential effects of a rule before any other rule is tried.
;;; This may be used to eliminate spurious interruptions of a rule by a simpler one.
;;; Notice that this might be used more often than it is in CSP-Rules V2.0, in particular for Subset rules.

(defglobal ?*apply-a-blocked-rule-salience* = 0)
(defglobal ?*apply-a-blocked-rule-salience-1* = 0)
(defglobal ?*apply-a-blocked-rule-salience-2* = 0)
(defglobal ?*apply-a-blocked-rule-salience-3* = 0)
(defglobal ?*apply-a-blocked-rule-salience-4* = 0)
(defglobal ?*apply-a-blocked-rule-salience-5* = 0)
(defglobal ?*apply-a-blocked-rule-salience-6* = 0)
(defglobal ?*apply-a-blocked-rule-salience-7* = 0)
(defglobal ?*apply-a-blocked-rule-salience-8* = 0)
(defglobal ?*apply-a-blocked-rule-salience-9* = 0)
(defglobal ?*apply-a-blocked-rule-salience-10* = 0)
(defglobal ?*end-apply-a-blocked-rule-salience* = 0)
(defglobal ?*end-apply-a-blocked-rule-salience-1* = 0)
(defglobal ?*end-apply-a-blocked-rule-salience-2* = 0)
(defglobal ?*end-apply-a-blocked-rule-salience-3* = 0)

(defglobal ?*update-OR2-salience* = 0)
(defglobal ?*update-OR3-salience* = 0)
(defglobal ?*update-OR4-salience* = 0)
(defglobal ?*update-OR5-salience* = 0)
(defglobal ?*update-OR6-salience* = 0)
(defglobal ?*update-OR7-salience* = 0)
(defglobal ?*update-OR8-salience* = 0)
(defglobal ?*update-OR9-salience* = 0)
(defglobal ?*update-OR10-salience* = 0)
(defglobal ?*update-OR11-salience* = 0)
(defglobal ?*update-OR12-salience* = 0)
(defglobal ?*symmetrify-salience* = 0)


(deffunction define-blocked-rule-saliences ()
    (bind ?*apply-a-blocked-rule-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*apply-a-blocked-rule-salience-1* ?*apply-a-blocked-rule-salience*)
    (bind ?*apply-a-blocked-rule-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*apply-a-blocked-rule-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*apply-a-blocked-rule-salience-4* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*apply-a-blocked-rule-salience-5* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*apply-a-blocked-rule-salience-6* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*apply-a-blocked-rule-salience-7* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*apply-a-blocked-rule-salience-8* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*apply-a-blocked-rule-salience-9* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*apply-a-blocked-rule-salience-10* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*end-apply-a-blocked-rule-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*end-apply-a-blocked-rule-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*end-apply-a-blocked-rule-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*end-apply-a-blocked-rule-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
    (bind ?*update-OR2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*update-OR3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*update-OR4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*update-OR5-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*update-OR6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*update-OR7-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*update-OR8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*update-OR9-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*update-OR10-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*update-OR11-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*update-OR12-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*symmetrify-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; BASIC SYSTEM MANAGEMENT:
;;; ELEMENTARY CONSTRAINTS PROPAGATION, SPECIAL INITIALISATION RULES,
;;; CONTRADICTION DETECTION, SOLUTION DETECTION, PRINTING OF SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(deffunction define-specific-constraints-propagation-saliences ())


(defglobal ?*special-simple-constraints-propagation-salience* = 0)
(defglobal ?*csp-variable-constraints-propagation-salience* = 0)
(defglobal ?*simple-constraints-propagation-salience* = 0)
(defglobal ?*activate-special-whip-1-salience* = 0)
(defglobal ?*special-whip-1-salience* = 0)
(defglobal ?*special-whip-1-salience-1* = 0)
(defglobal ?*special-whip-1-salience-2* = 0)
(defglobal ?*special-whip-1-salience-3* = 0)
(defglobal ?*special-whip-1-salience-4* = 0)
(defglobal ?*special-whip-1-salience-5* = 0)
(defglobal ?*special-whip-1-salience-6* = 0)
(defglobal ?*special-whip-1-salience-7* = 0)
(defglobal ?*special-whip-1-salience-8* = 0)
(defglobal ?*special-whip-1-salience-9* = 0)
(defglobal ?*special-whip-1-salience-10* = 0)
(defglobal ?*biwhip-constraints-propagation-salience* = 0)
(defglobal ?*bibraid-constraints-propagation-salience* = 0)
(defglobal ?*bi-TE-constraints-propagation-salience* = 0)
(defglobal ?*indirect-constraints-propagation-salience* = 0)
(defglobal ?*solution-found-salience-0* = 0)
(defglobal ?*contradiction-salience* = 0)
(defglobal ?*solution-found-salience* = 0)


(deffunction define-generic-constraints-propagation-and-management-saliences ()
    ;;; For efficiency reasons, a specific salience is given to the simplest of the propagation rules,
    ;;; that must apply immediately after any other constraints propagation

    (bind ?*special-simple-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*csp-variable-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*simple-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; For cases (Futoshiki, Kakuro) in which special whips[1] are used to compute the initial state
    ;;; ten saliences are predefined:
    (bind ?*activate-special-whip-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-whip-1-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-whip-1-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-whip-1-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-whip-1-salience-4* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-whip-1-salience-5* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-whip-1-salience-6* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-whip-1-salience-7* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-whip-1-salience-8* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-whip-1-salience-9* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*special-whip-1-salience-10* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; in case indirect constraints (biwhip, bibraid, or other) are used, they must also apply as soon as possible
    (bind ?*biwhip-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*bibraid-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*bi-TE-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*indirect-constraints-propagation-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    ;;; Except for special reasons,
    ;;; contradictions and solutions (in this order) should be detected as soon as possible
    (bind ?*solution-found-salience-0* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*contradiction-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*solution-found-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)



(deffunction define-specific-post-solution-found-saliences ())




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SINGLES AND POST-SINGLES BEFORE INIT-LINKS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction define-specific-pre-Singles-saliences ())


(defglobal ?*special-single-salience* = 0)
(defglobal ?*activate-naked-single-salience* = 0)
(defglobal ?*naked-single-salience* = 0)
(defglobal ?*activate-hidden-single-salience* = 0)
(defglobal ?*hidden-single-salience* = 0)
(defglobal ?*activate-single-salience* = 0)
(defglobal ?*single-salience* = 0)

(deffunction define-Singles-saliences ()
    (bind ?*special-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-naked-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*naked-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-hidden-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*hidden-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*single-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)


(defglobal ?*update-OR1-salience* = 0)
(deffunction define-specific-post-Singles-pre-init-links-saliences ()
    (bind ?*update-OR1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ; move to after Singles
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; INITIALISATION OF LINKS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; the generic part of CSP-Rules provides five levels of initialisation for csp links and ten levels for non-csp links,
;;; this should be much more than necessary for any application
;;; this is mainly used for a better displaying of the list of candidates in the facts base (useful for debugging)
;;; in V2.0, links are computed only after the basic rules in BRT are applied

(deffunction define-specific-init-links-saliences ())



(defglobal ?*activate-init-links-salience* = 0)
(defglobal ?*init-csp-links-salience* = 0)
(defglobal ?*init-csp-links-salience-1* = 0)
(defglobal ?*init-csp-links-salience-2* = 0)
(defglobal ?*init-csp-links-salience-3* = 0)
(defglobal ?*init-csp-links-salience-4* = 0)
(defglobal ?*init-csp-links-salience-5* = 0)
(defglobal ?*init-non-csp-links-salience* = 0)
(defglobal ?*init-non-csp-links-salience-1* = 0)
(defglobal ?*init-non-csp-links-salience-2* = 0)
(defglobal ?*init-non-csp-links-salience-3* = 0)
(defglobal ?*init-non-csp-links-salience-4* = 0)
(defglobal ?*init-non-csp-links-salience-5* = 0)
(defglobal ?*init-non-csp-links-salience-6* = 0)
(defglobal ?*init-non-csp-links-salience-7* = 0)
(defglobal ?*init-non-csp-links-salience-8* = 0)
(defglobal ?*init-non-csp-links-salience-9* = 0)
(defglobal ?*init-non-csp-links-salience-10* = 0)
(defglobal ?*init-links-end-salience* = 0)

(deffunction define-generic-init-links-saliences ()
    (bind ?*activate-init-links-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-csp-links-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-csp-links-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-csp-links-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-csp-links-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-csp-links-salience-4* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-csp-links-salience-5* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*init-non-csp-links-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-non-csp-links-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-non-csp-links-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-non-csp-links-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-non-csp-links-salience-4* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-non-csp-links-salience-5* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-non-csp-links-salience-6* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-non-csp-links-salience-7* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-non-csp-links-salience-8* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-non-csp-links-salience-9* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*init-non-csp-links-salience-10* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*init-links-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ALL SALIENCES AT L0, including link initialisation for level 1
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*enter-module-salience* = 0)
(defglobal ?*activate-BRT-salience* = 0)
(defglobal ?*start-serious-play-salience* = 0)


(deffunction define-saliences-at-L0 ()
    ;;; th starting value of all saliences:
    (define-highest-salience)
    ;;; useful at load time:
    (define-Typed-Chains-related-salience)
    ;;; context management in case of T&E
    (define-TE1-context-saliences)

    ;;; start initialisation here
    (define-specific-init-saliences)
    (define-generic-init-saliences)
    ;;; immdiately after initialisation
    (define-simulated-eliminations-saliences)
    ;;; highest salience for rules application:
    (define-blocked-rule-saliences)

    ;;; start easy resolution here
    (bind ?*enter-module-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-BRT-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (define-specific-constraints-propagation-saliences)
    (define-generic-constraints-propagation-and-management-saliences)
    (define-specific-post-solution-found-saliences)

    (define-specific-pre-Singles-saliences)
    (define-Singles-saliences)
    (define-specific-post-Singles-pre-init-links-saliences)

    ;;; The following is indeed relevant to the start of level 1.
    ;;; It is written here in order to leave level 1 for "real" resolution rules.
    ;;; Initialise the links here:
    (define-specific-init-links-saliences)
    (define-generic-init-links-saliences)
    ;;; start serious resolution here:
    ;;; this salience comes after init-links to alllow the number of links and csp-links and the density
    ;;; to be displayed before "serious play"
    (bind ?*start-serious-play-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; NO CONFLUENCE RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; In case uniqueness and other no confluence rules are used, they should apply as soon as possible

(defglobal ?*uniqueness-1-salience* = 0)
(defglobal ?*uniqueness-2-salience* = 0)
(defglobal ?*uniqueness-3-salience* = 0)
(defglobal ?*uniqueness-4-salience* = 0)
(defglobal ?*uniqueness-5-salience* = 0)
(defglobal ?*uniqueness-6-salience* = 0)
(defglobal ?*uniqueness-7-salience* = 0)
(defglobal ?*uniqueness-8-salience* = 0)
(defglobal ?*uniqueness-9-salience* = 0)
(defglobal ?*uniqueness-10-salience* = 0)
(defglobal ?*uniqueness-11-salience* = 0)
(defglobal ?*uniqueness-12-salience* = 0)
(defglobal ?*uniqueness-13-salience* = 0)
(defglobal ?*uniqueness-14-salience* = 0)
(defglobal ?*uniqueness-15-salience* = 0)
(defglobal ?*uniqueness-16-salience* = 0)
(defglobal ?*uniqueness-17-salience* = 0)
(defglobal ?*uniqueness-18-salience* = 0)
(defglobal ?*uniqueness-19-salience* = 0)
(defglobal ?*uniqueness-20-salience* = 0)

(defglobal ?*no-confluence-1-salience* = 0)
(defglobal ?*no-confluence-2-salience* = 0)
(defglobal ?*no-confluence-3-salience* = 0)
(defglobal ?*no-confluence-4-salience* = 0)
(defglobal ?*no-confluence-5-salience* = 0)
(defglobal ?*no-confluence-6-salience* = 0)
(defglobal ?*no-confluence-7-salience* = 0)
(defglobal ?*no-confluence-8-salience* = 0)
(defglobal ?*no-confluence-9-salience* = 0)
(defglobal ?*no-confluence-10-salience* = 0)
(defglobal ?*no-confluence-11-salience* = 0)
(defglobal ?*no-confluence-12-salience* = 0)
(defglobal ?*no-confluence-13-salience* = 0)
(defglobal ?*no-confluence-14-salience* = 0)
(defglobal ?*no-confluence-15-salience* = 0)
(defglobal ?*no-confluence-16-salience* = 0)
(defglobal ?*no-confluence-17-salience* = 0)
(defglobal ?*no-confluence-18-salience* = 0)
(defglobal ?*no-confluence-19-salience* = 0)
(defglobal ?*no-confluence-20-salience* = 0)


(deffunction define-no-confluence-saliences ()
    (bind ?*uniqueness-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-5-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-7-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-9-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-10-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-11-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-12-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-13-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-14-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-15-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-16-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-17-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-18-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-19-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*uniqueness-20-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*no-confluence-1-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-5-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-7-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-9-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-10-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-11-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-12-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-13-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-14-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-15-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-16-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-17-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-18-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-19-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*no-confluence-20-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)



;;; ANY OTHER RESOLUTION RULE MUST HAVE A LOWER SALIENCE THAN THOSE DEFINED BY FUNCTION define-generic-L0-saliences




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; GENERIC RESOLUTION RULES FOR CHAINS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L1: FIRST LEVEL GENERIC RESOLUTION RULES INVOLVING 1 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*activate-z-chain[1]-salience* = 0)
(defglobal ?*z-chain[1]-salience* = 0)
(defglobal ?*partial-z-chain[1]-salience* = 0)

(defglobal ?*activate-blocked-whip[1]-salience* = 0)
(defglobal ?*blocked-whip[1]-salience* = 0)
(defglobal ?*activate-whip[1]-salience* = 0)
(defglobal ?*whip[1]-salience* = 0)
(defglobal ?*end-whip[1]-salience* = 0)

(defglobal ?*activate-g2whip[1]-salience* = 0)
(defglobal ?*g2whip[1]-salience* = 0)

(defglobal ?*activate-g-whip[1]-salience* = 0)
(defglobal ?*g-whip[1]-salience* = 0)

(defglobal ?*activate-braid[1]-salience* = 0)
(defglobal ?*braid[1]-salience* = 0)

(defglobal ?*activate-g-braid[1]-salience* = 0)
(defglobal ?*g-braid[1]-salience* = 0)

(defglobal ?*activate-OR2-forcing-whip[1]-salience* = 0)
(defglobal ?*OR2-forcing-whip[1]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[1]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[1]-salience* = 0)
(defglobal ?*OR2-contrad-whip[1]-salience* = 0)

(defglobal ?*activate-OR2-whip[1]-salience* = 0)
(defglobal ?*OR2-whip[1]-salience-1* = 0)
(defglobal ?*OR2-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[1]-salience* = 0)
(defglobal ?*OR3-forcing-whip[1]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[1]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[1]-salience* = 0)
(defglobal ?*OR3-contrad-whip[1]-salience* = 0)

(defglobal ?*activate-OR3-whip[1]-salience* = 0)
(defglobal ?*OR3-whip[1]-salience-1* = 0)
(defglobal ?*OR3-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[1]-salience* = 0)
(defglobal ?*OR4-forcing-whip[1]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[1]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[1]-salience* = 0)
(defglobal ?*OR4-contrad-whip[1]-salience* = 0)

(defglobal ?*activate-OR4-whip[1]-salience* = 0)
(defglobal ?*OR4-whip[1]-salience-1* = 0)
(defglobal ?*OR4-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[1]-salience* = 0)
(defglobal ?*OR5-forcing-whip[1]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[1]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[1]-salience* = 0)
(defglobal ?*OR5-contrad-whip[1]-salience* = 0)

(defglobal ?*activate-OR5-whip[1]-salience* = 0)
(defglobal ?*OR5-whip[1]-salience-1* = 0)
(defglobal ?*OR5-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[1]-salience* = 0)
(defglobal ?*OR6-forcing-whip[1]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[1]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[1]-salience* = 0)
(defglobal ?*OR6-contrad-whip[1]-salience* = 0)

(defglobal ?*activate-OR6-whip[1]-salience* = 0)
(defglobal ?*OR6-whip[1]-salience-1* = 0)
(defglobal ?*OR6-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[1]-salience* = 0)
(defglobal ?*OR7-forcing-whip[1]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[1]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[1]-salience* = 0)
(defglobal ?*OR7-contrad-whip[1]-salience* = 0)

(defglobal ?*activate-OR7-whip[1]-salience* = 0)
(defglobal ?*OR7-whip[1]-salience-1* = 0)
(defglobal ?*OR7-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[1]-salience* = 0)
(defglobal ?*OR8-forcing-whip[1]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[1]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[1]-salience* = 0)
(defglobal ?*OR8-contrad-whip[1]-salience* = 0)

(defglobal ?*activate-OR8-whip[1]-salience* = 0)
(defglobal ?*OR8-whip[1]-salience-1* = 0)
(defglobal ?*OR8-whip[1]-salience-2* = 0)


(defglobal ?*activate-forcing-whip[1]-salience* = 0)
(defglobal ?*forcing-whip[1]-value-salience* = 0)
(defglobal ?*forcing-whip[1]-candidate-salience* = 0)



(defglobal ?*activate-w*-whip[[1]]-salience* = 0)
(defglobal ?*w*-whip[[1]]-salience* = 0)
(defglobal ?*activate-b*-braid[[1]]-salience* = 0)
(defglobal ?*b*-braid[[1]]-salience* = 0)

;;; The first four involve 0 CSP-Variable, but they are used only for rules with more than 1.
;;; they are here because this allows to use the already existing facts (exists-link ...)
(defglobal ?*activate-biwhip[0]-salience* = 0)
(defglobal ?*biwhip[0]-salience* = 0)
(defglobal ?*activate-bibraid[0]-salience* = 0)
(defglobal ?*bibraid[0]-salience* = 0)

(defglobal ?*activate-biwhip[1]-salience* = 0)
(defglobal ?*biwhip[1]-salience* = 0)
(defglobal ?*activate-bibraid[1]-salience* = 0)
(defglobal ?*bibraid[1]-salience* = 0)


(deffunction define-generic-saliences-at-L1 ()

	(bind ?*activate-z-chain[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*z-chain[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-z-chain[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-blocked-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*blocked-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*end-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-g2whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*g2whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-g-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*g-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-braid[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*braid[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-g-braid[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*g-braid[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    
    (bind ?*activate-OR2-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR2-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR2-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR2-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR2-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR2-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR2-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR2-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR2-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR2-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR2-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR3-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR3-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR3-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR3-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR3-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR3-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR3-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR3-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR3-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR3-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR3-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR4-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR4-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR4-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR4-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR4-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR4-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR4-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR4-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR4-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR4-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR4-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR5-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR5-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR5-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR5-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR5-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR5-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR5-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR5-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR5-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR5-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR5-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR6-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR6-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR6-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR6-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR6-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR6-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR6-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR6-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR6-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR6-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR6-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR7-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR7-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR7-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR7-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR7-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR7-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR7-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR7-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR7-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR7-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR7-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR8-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR8-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR8-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR8-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR8-contrad-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR8-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR8-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR8-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR8-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR8-forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR8-forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )


    (bind ?*activate-forcing-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*forcing-whip[1]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*forcing-whip[1]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    
	(bind ?*activate-w*-whip[[1]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*w*-whip[[1]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-b*-braid[[1]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*b*-braid[[1]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-biwhip[0]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*biwhip[0]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*activate-bibraid[0]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*bibraid[0]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-biwhip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*biwhip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-bibraid[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*bibraid[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; BIVALUE, TRIVALUE AND QUADRIVALUE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*activate-bivalue-salience* = 0)
(defglobal ?*bivalue-salience* = 0)

(deffunction define-bivalue-saliences ()
    ;; special bivalue
    (bind ?*activate-bivalue-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*bivalue-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

;;; used only for OR2-Forcing-Whips:
(defglobal ?*activate-2-value-salience* = 0)
(defglobal ?*2-value-salience* = 0)

(deffunction define-2-value-saliences ()
    (bind ?*activate-2-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*2-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

;;; used only for Forcing{3}-T&E and OR3-Forcing-Whips:
(defglobal ?*activate-3-value-salience* = 0)
(defglobal ?*3-value-salience* = 0)

(deffunction define-3-value-saliences ()
    (bind ?*activate-3-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*3-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

;;; used only for Forcing{4}-T&E and OR4-Forcing-Whips:
(defglobal ?*activate-4-value-salience* = 0)
(defglobal ?*4-value-salience* = 0)

(deffunction define-4-value-saliences ()
    (bind ?*activate-4-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*4-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

;;; used only for Forcing{5}-T&E and OR5-Forcing-Whips:
(defglobal ?*activate-5-value-salience* = 0)
(defglobal ?*5-value-salience* = 0)

(deffunction define-5-value-saliences ()
    (bind ?*activate-5-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*5-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

;;; used only for Forcing{6}-T&E and OR6-Forcing-Whips:
(defglobal ?*activate-6-value-salience* = 0)
(defglobal ?*6-value-salience* = 0)

(deffunction define-6-value-saliences ()
    (bind ?*activate-6-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*6-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-k-value-saliences ()
    (define-2-value-saliences)
    (define-3-value-saliences)
    (define-4-value-saliences)
    (define-5-value-saliences)
    (define-6-value-saliences)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L2: FIRST LEVEL GENERIC RESOLUTION RULES INVOLVING 2 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L2-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[2]-salience* = 0)
(defglobal ?*typed-bivalue-chain[2]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[2]-salience* = 0)

(defglobal ?*activate-bivalue-chain[2]-salience* = 0)
(defglobal ?*bivalue-chain[2]-salience* = 0)
(defglobal ?*partial-bivalue-chain[2]-salience* = 0)

(defglobal ?*typed-partial-whip[1]-salience* = 0)

(defglobal ?*activate-typed-z-chain[2]-salience* = 0)
(defglobal ?*typed-z-chain[2]-salience* = 0)
(defglobal ?*typed-partial-z-chain[2]-salience* = 0)

(defglobal ?*partial-whip[1]-salience* = 0)

(defglobal ?*activate-z-chain[2]-salience* = 0)
(defglobal ?*z-chain[2]-salience* = 0)
(defglobal ?*partial-z-chain[2]-salience* = 0)


(defglobal ?*is-csp-variable-for-candidate-salience* = 0) ; <<<<<<<<<<<<<<<<<<<<<<<<<<

(defglobal ?*activate-typed-t-whip[2]-salience* = 0)
(defglobal ?*typed-t-whip[2]-salience* = 0)
(defglobal ?*typed-partial-t-whip[1]-salience* = 0)

(defglobal ?*activate-t-whip[2]-salience* = 0)
(defglobal ?*t-whip[2]-salience* = 0)
(defglobal ?*partial-t-whip[1]-salience* = 0)

(defglobal ?*activate-typed-whip[2]-salience* = 0)
(defglobal ?*typed-whip[2]-salience* = 0)

(defglobal ?*activate-whip[2]-salience* = 0)
(defglobal ?*whip[2]-salience* = 0)

(defglobal ?*activate-init-physical-glinks-salience* = 0)
(defglobal ?*init-physical-glinks-salience* = 0)
(defglobal ?*init-physical-glinks-salience-1* = 0)
(defglobal ?*init-physical-glinks-salience-2* = 0)
(defglobal ?*init-physical-glinks-salience-3* = 0)
(defglobal ?*init-physical-glinks-salience-4* = 0)
(defglobal ?*init-physical-glinks-salience-5* = 0)
(defglobal ?*init-physical-glinks-salience-6* = 0)
(defglobal ?*init-physical-glinks-salience-7* = 0)
(defglobal ?*init-physical-glinks-salience-8* = 0)
(defglobal ?*init-physical-glinks-salience-9* = 0)
(defglobal ?*init-physical-glinks-salience-10* = 0)

(defglobal ?*activate-init-g-labels-salience* = 0)
(defglobal ?*init-g-labels-salience* = 0)
(defglobal ?*init-g-labels-salience-1* = 0)
(defglobal ?*init-g-labels-salience-2* = 0)
(defglobal ?*init-g-labels-salience-3* = 0)
(defglobal ?*init-g-labels-salience-4* = 0)
(defglobal ?*init-g-labels-salience-5* = 0)

(defglobal ?*activate-init-g-candidates-salience* = 0)
(defglobal ?*init-g-candidates-salience* = 0)
(defglobal ?*init-g-candidates-salience-1* = 0)
(defglobal ?*init-g-candidates-salience-2* = 0)
(defglobal ?*init-g-candidates-salience-3* = 0)
(defglobal ?*init-g-candidates-salience-4* = 0)
(defglobal ?*init-g-candidates-salience-5* = 0)

(defglobal ?*init-csp-glinks-salience* = 0)
(defglobal ?*init-csp-glinks-salience-1* = 0)
(defglobal ?*init-csp-glinks-salience-2* = 0)
(defglobal ?*init-csp-glinks-salience-3* = 0)
(defglobal ?*init-csp-glinks-salience-4* = 0)
(defglobal ?*init-csp-glinks-salience-5* = 0)

(defglobal ?*init-non-csp-glinks-salience* = 0)
(defglobal ?*init-non-csp-glinks-salience-1* = 0)
(defglobal ?*init-non-csp-glinks-salience-2* = 0)
(defglobal ?*init-non-csp-glinks-salience-3* = 0)
(defglobal ?*init-non-csp-glinks-salience-4* = 0)
(defglobal ?*init-non-csp-glinks-salience-5* = 0)

(defglobal ?*init-glinks-end-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[1]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[1]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[2]-salience* = 0)
(defglobal ?*g-bivalue-chain[2]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[2]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[2]-salience-2* = 0)

(defglobal ?*activate-g2whip[2]-salience* = 0)
(defglobal ?*g2whip[2]-salience* = 0)
(defglobal ?*partial-g2whip[1]-salience-1* = 0)
(defglobal ?*partial-g2whip[1]-salience-2* = 0)
(defglobal ?*partial-g2whip[1]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[2]-salience* = 0)
(defglobal ?*typed-gwhip[2]-salience* = 0)
(defglobal ?*typed-partial-gwhip[1]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[1]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[1]-salience-3* = 0)

(defglobal ?*activate-gwhip[2]-salience* = 0)
(defglobal ?*gwhip[2]-salience* = 0)
(defglobal ?*partial-gwhip[1]-salience-1* = 0)
(defglobal ?*partial-gwhip[1]-salience-2* = 0)
(defglobal ?*partial-gwhip[1]-salience-3* = 0)

(defglobal ?*activate-braid[2]-salience* = 0)
(defglobal ?*braid[2]-salience* = 0)
(defglobal ?*partial-braid[1]-salience* = 0)

(defglobal ?*activate-gbraid[2]-salience* = 0)
(defglobal ?*gbraid[2]-salience* = 0)
(defglobal ?*partial-gbraid[1]-salience-1* = 0)
(defglobal ?*partial-gbraid[1]-salience-2* = 0)
(defglobal ?*partial-gbraid[1]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[2]-salience* = 0)
(defglobal ?*OR2-forcing-whip[2]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[2]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[2]-salience* = 0)
(defglobal ?*OR2-contrad-whip[2]-salience* = 0)

(defglobal ?*activate-OR2-whip[2]-salience* = 0)
(defglobal ?*OR2-whip[2]-salience-1* = 0)
(defglobal ?*OR2-whip[2]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[1]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[2]-salience* = 0)
(defglobal ?*OR3-forcing-whip[2]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[2]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[2]-salience* = 0)
(defglobal ?*OR3-contrad-whip[2]-salience* = 0)

(defglobal ?*activate-OR3-whip[2]-salience* = 0)
(defglobal ?*OR3-whip[2]-salience-1* = 0)
(defglobal ?*OR3-whip[2]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[1]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[2]-salience* = 0)
(defglobal ?*OR4-forcing-whip[2]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[2]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[2]-salience* = 0)
(defglobal ?*OR4-contrad-whip[2]-salience* = 0)

(defglobal ?*activate-OR4-whip[2]-salience* = 0)
(defglobal ?*OR4-whip[2]-salience-1* = 0)
(defglobal ?*OR4-whip[2]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[1]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[2]-salience* = 0)
(defglobal ?*OR5-forcing-whip[2]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[2]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[2]-salience* = 0)
(defglobal ?*OR5-contrad-whip[2]-salience* = 0)

(defglobal ?*activate-OR5-whip[2]-salience* = 0)
(defglobal ?*OR5-whip[2]-salience-1* = 0)
(defglobal ?*OR5-whip[2]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[1]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[2]-salience* = 0)
(defglobal ?*OR6-forcing-whip[2]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[2]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[2]-salience* = 0)
(defglobal ?*OR6-contrad-whip[2]-salience* = 0)

(defglobal ?*activate-OR6-whip[2]-salience* = 0)
(defglobal ?*OR6-whip[2]-salience-1* = 0)
(defglobal ?*OR6-whip[2]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[1]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[2]-salience* = 0)
(defglobal ?*OR7-forcing-whip[2]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[2]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[2]-salience* = 0)
(defglobal ?*OR7-contrad-whip[2]-salience* = 0)

(defglobal ?*activate-OR7-whip[2]-salience* = 0)
(defglobal ?*OR7-whip[2]-salience-1* = 0)
(defglobal ?*OR7-whip[2]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[1]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[1]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[2]-salience* = 0)
(defglobal ?*OR8-forcing-whip[2]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[2]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[2]-salience* = 0)
(defglobal ?*OR8-contrad-whip[2]-salience* = 0)

(defglobal ?*activate-OR8-whip[2]-salience* = 0)
(defglobal ?*OR8-whip[2]-salience-1* = 0)
(defglobal ?*OR8-whip[2]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[1]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[1]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[2]-salience* = 0)
(defglobal ?*forcing-whip[2]-value-salience* = 0)
(defglobal ?*forcing-whip[2]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[2]-salience* = 0)
(defglobal ?*forcing-gwhip[2]-value-salience* = 0)
(defglobal ?*forcing-gwhip[2]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[2]-salience* = 0)
(defglobal ?*forcing-braid[2]-value-salience* = 0)
(defglobal ?*forcing-braid[2]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[2]-salience* = 0)
(defglobal ?*forcing-gbraid[2]-value-salience* = 0)
(defglobal ?*forcing-gbraid[2]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[2]]-salience* = 0)
(defglobal ?*w*-whip[[2]]-salience* = 0)
(defglobal ?*partial-w*-whip[[1]]-salience* = 0)

(defglobal ?*activate-b*-braid[[2]]-salience* = 0)
(defglobal ?*b*-braid[[2]]-salience* = 0)
(defglobal ?*partial-b*-braid[[1]]-salience* = 0)

(defglobal ?*activate-biwhip[2]-salience* = 0)
(defglobal ?*biwhip[2]-salience* = 0)
(defglobal ?*partial-biwhip[1]-salience* = 0)

(defglobal ?*activate-bibraid[2]-salience* = 0)
(defglobal ?*bibraid[2]-salience* = 0)
(defglobal ?*partial-bibraid[1]-salience* = 0)

(deffunction define-generic-saliences-at-L2 ()
    (bind ?*activate-typed-bivalue-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*typed-bivalue-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*typed-partial-bivalue-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-bivalue-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*bivalue-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-bivalue-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
    (bind ?*typed-partial-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-typed-z-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*typed-z-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*typed-partial-z-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
    (bind ?*partial-whip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-z-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*z-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-z-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    
    (bind ?*is-csp-variable-for-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))) ; <<<<<<<<

    (bind ?*activate-typed-t-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*typed-t-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-t-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*t-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
    ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
    ;;; so that no typed-whip[2] can be applied before all the typed-t-whips[2] have had their chance
    ;;; Beware: this makes whips much less efficient
    (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 2 ?*typed-t-whips-max-length*)) then
        (bind ?*activate-typed-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
        (bind ?*typed-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )
    
    (bind ?*activate-typed-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*typed-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
    ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
    ;;; so that no whip[2] can be applied before all the t-whips[2] have had their chance
    ;;; Beware: this makes whips much less efficient
    (if (and ?*Whips* ?*t-Whips* (<= 2 ?*t-whips-max-length*)) then
        (bind ?*activate-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
        (bind ?*whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

	(bind ?*activate-init-physical-glinks-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-physical-glinks-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-physical-glinks-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-physical-glinks-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-physical-glinks-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-physical-glinks-salience-4* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-physical-glinks-salience-5* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-physical-glinks-salience-6* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-physical-glinks-salience-7* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-physical-glinks-salience-8* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-physical-glinks-salience-9* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-physical-glinks-salience-10* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-init-g-labels-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-labels-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-labels-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-labels-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-labels-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-labels-salience-4* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-labels-salience-5* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-init-g-candidates-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-candidates-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-candidates-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-candidates-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-candidates-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-candidates-salience-4* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-g-candidates-salience-4* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*init-csp-glinks-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-csp-glinks-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-csp-glinks-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-csp-glinks-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-csp-glinks-salience-4* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-csp-glinks-salience-5* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*init-non-csp-glinks-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-non-csp-glinks-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-non-csp-glinks-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-non-csp-glinks-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-non-csp-glinks-salience-4* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*init-non-csp-glinks-salience-5* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    
	(bind ?*init-glinks-end-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-g-bivalue-chain[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-g-bivalue-chain[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-g-bivalue-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*g-bivalue-chain[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-g-bivalue-chain[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-g-bivalue-chain[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-g2whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*g2whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-g2whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-g2whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-g2whip[1]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-typed-gwhip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*typed-gwhip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*typed-partial-gwhip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*typed-partial-gwhip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*typed-partial-gwhip[1]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-gwhip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*gwhip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-gwhip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-gwhip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-gwhip[1]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-braid[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*braid[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-braid[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-gbraid[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*gbraid[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-gbraid[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-gbraid[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-gbraid[1]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    
    (bind ?*activate-OR2-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR2-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR2-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR2-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR2-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR2-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR2-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR2-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR2-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR2-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR2-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR2-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR2-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR3-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR3-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR3-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR3-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR3-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR3-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR3-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR3-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR3-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR3-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR3-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR3-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR3-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR4-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR4-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR4-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR4-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR4-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR4-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR4-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR4-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR4-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR4-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR4-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR4-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR4-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR5-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR5-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR5-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR5-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR5-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR5-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR5-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR5-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR5-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR5-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR5-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR5-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR5-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR6-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR6-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR6-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR6-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR6-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR6-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR6-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR6-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR6-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR6-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR6-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR6-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR6-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR7-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR7-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR7-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR7-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR7-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR7-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR7-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR7-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR7-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR7-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR7-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR7-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR7-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )

    (bind ?*activate-OR8-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR8-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR8-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR8-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR8-contrad-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-OR8-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR8-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*OR8-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR8-whip[1]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*partial-OR8-whip[1]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
       (bind ?*activate-OR8-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR8-forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
       (bind ?*OR8-forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    )


    (bind ?*activate-forcing-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*forcing-whip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*forcing-whip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-forcing-gwhip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*forcing-gwhip[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*forcing-gwhip[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-forcing-braid[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*forcing-braid[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*forcing-braid[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*activate-forcing-gbraid[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*forcing-gbraid[2]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*forcing-gbraid[2]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-w*-whip[[2]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*w*-whip[[2]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-w*-whip[[1]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-b*-braid[[2]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*b*-braid[[2]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-b*-braid[[1]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-biwhip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*biwhip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-biwhip[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

	(bind ?*activate-bibraid[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*bibraid[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
	(bind ?*partial-bibraid[1]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L3: GENERIC RESOLUTION RULES INVOLVING 3 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L3-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[3]-salience* = 0)
(defglobal ?*typed-bivalue-chain[3]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[3]-salience* = 0)

(defglobal ?*activate-bivalue-chain[3]-salience* = 0)
(defglobal ?*bivalue-chain[3]-salience* = 0)
(defglobal ?*partial-bivalue-chain[3]-salience* = 0)

(defglobal ?*activate-typed-z-chain[3]-salience* = 0)
(defglobal ?*typed-z-chain[3]-salience* = 0)
(defglobal ?*typed-partial-z-chain[3]-salience* = 0)

(defglobal ?*activate-z-chain[3]-salience* = 0)
(defglobal ?*z-chain[3]-salience* = 0)
(defglobal ?*partial-z-chain[3]-salience* = 0)

(defglobal ?*activate-oddagon[3]-salience* = 0)
(defglobal ?*oddagon[3]-salience* = 0)
(defglobal ?*partial-oddagon[2]-salience* = 0)
(defglobal ?*activate-anti-oddagon[3]-salience* = 0)
(defglobal ?*anti-oddagon[3]-salience* = 0)
(defglobal ?*partial-anti-oddagon[2]-salience* = 0)

(defglobal ?*activate-typed-t-whip[3]-salience* = 0)
(defglobal ?*typed-t-whip[3]-salience* = 0)

(defglobal ?*activate-t-whip[3]-salience* = 0)
(defglobal ?*t-whip[3]-salience* = 0)

(defglobal ?*activate-typed-whip[3]-salience* = 0)
(defglobal ?*typed-whip[3]-salience* = 0)
(defglobal ?*typed-partial-whip[2]-salience* = 0)

(defglobal ?*activate-whip[3]-salience* = 0)
(defglobal ?*whip[3]-salience* = 0)
(defglobal ?*partial-whip[2]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[3]-salience* = 0)
(defglobal ?*g-bivalue-chain[3]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[3]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[3]-salience-2* = 0)

(defglobal ?*activate-g2whip[3]-salience* = 0)
(defglobal ?*g2whip[3]-salience* = 0)
(defglobal ?*partial-g2whip[2]-salience-1* = 0)
(defglobal ?*partial-g2whip[2]-salience-2* = 0)
(defglobal ?*partial-g2whip[2]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[3]-salience* = 0)
(defglobal ?*typed-gwhip[3]-salience* = 0)
(defglobal ?*typed-partial-gwhip[2]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[2]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[2]-salience-3* = 0)

(defglobal ?*activate-gwhip[3]-salience* = 0)
(defglobal ?*gwhip[3]-salience* = 0)
(defglobal ?*partial-gwhip[2]-salience-1* = 0)
(defglobal ?*partial-gwhip[2]-salience-2* = 0)
(defglobal ?*partial-gwhip[2]-salience-3* = 0)

(defglobal ?*activate-braid[3]-salience* = 0)
(defglobal ?*braid[3]-salience* = 0)
(defglobal ?*partial-braid[2]-salience* = 0)

(defglobal ?*activate-gbraid[3]-salience* = 0)
(defglobal ?*gbraid[3]-salience* = 0)
(defglobal ?*partial-gbraid[2]-salience-1* = 0)
(defglobal ?*partial-gbraid[2]-salience-2* = 0)
(defglobal ?*partial-gbraid[2]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[3]-salience* = 0)
(defglobal ?*OR2-forcing-whip[3]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[3]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[3]-salience* = 0)
(defglobal ?*OR2-contrad-whip[3]-salience* = 0)

(defglobal ?*activate-OR2-whip[3]-salience* = 0)
(defglobal ?*OR2-whip[3]-salience-1* = 0)
(defglobal ?*OR2-whip[3]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[2]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[2]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[3]-salience* = 0)
(defglobal ?*OR3-forcing-whip[3]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[3]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[3]-salience* = 0)
(defglobal ?*OR3-contrad-whip[3]-salience* = 0)

(defglobal ?*activate-OR3-whip[3]-salience* = 0)
(defglobal ?*OR3-whip[3]-salience-1* = 0)
(defglobal ?*OR3-whip[3]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[2]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[2]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[3]-salience* = 0)
(defglobal ?*OR4-forcing-whip[3]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[3]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[3]-salience* = 0)
(defglobal ?*OR4-contrad-whip[3]-salience* = 0)

(defglobal ?*activate-OR4-whip[3]-salience* = 0)
(defglobal ?*OR4-whip[3]-salience-1* = 0)
(defglobal ?*OR4-whip[3]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[2]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[2]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[3]-salience* = 0)
(defglobal ?*OR5-forcing-whip[3]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[3]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[3]-salience* = 0)
(defglobal ?*OR5-contrad-whip[3]-salience* = 0)

(defglobal ?*activate-OR5-whip[3]-salience* = 0)
(defglobal ?*OR5-whip[3]-salience-1* = 0)
(defglobal ?*OR5-whip[3]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[2]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[2]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[3]-salience* = 0)
(defglobal ?*OR6-forcing-whip[3]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[3]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[3]-salience* = 0)
(defglobal ?*OR6-contrad-whip[3]-salience* = 0)

(defglobal ?*activate-OR6-whip[3]-salience* = 0)
(defglobal ?*OR6-whip[3]-salience-1* = 0)
(defglobal ?*OR6-whip[3]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[2]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[2]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[3]-salience* = 0)
(defglobal ?*OR7-forcing-whip[3]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[3]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[3]-salience* = 0)
(defglobal ?*OR7-contrad-whip[3]-salience* = 0)

(defglobal ?*activate-OR7-whip[3]-salience* = 0)
(defglobal ?*OR7-whip[3]-salience-1* = 0)
(defglobal ?*OR7-whip[3]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[2]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[2]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[3]-salience* = 0)
(defglobal ?*OR8-forcing-whip[3]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[3]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[3]-salience* = 0)
(defglobal ?*OR8-contrad-whip[3]-salience* = 0)

(defglobal ?*activate-OR8-whip[3]-salience* = 0)
(defglobal ?*OR8-whip[3]-salience-1* = 0)
(defglobal ?*OR8-whip[3]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[2]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[2]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[3]-salience* = 0)
(defglobal ?*forcing-whip[3]-value-salience* = 0)
(defglobal ?*forcing-whip[3]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[3]-salience* = 0)
(defglobal ?*forcing-gwhip[3]-value-salience* = 0)
(defglobal ?*forcing-gwhip[3]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[3]-salience* = 0)
(defglobal ?*forcing-braid[3]-value-salience* = 0)
(defglobal ?*forcing-braid[3]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[3]-salience* = 0)
(defglobal ?*forcing-gbraid[3]-value-salience* = 0)
(defglobal ?*forcing-gbraid[3]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[3]]-salience* = 0)
(defglobal ?*w*-whip[[3]]-salience* = 0)
(defglobal ?*partial-w*-whip[[2]]-salience* = 0)

(defglobal ?*activate-b*-braid[[3]]-salience* = 0)
(defglobal ?*b*-braid[[3]]-salience* = 0)
(defglobal ?*partial-b*-braid[[2]]-salience* = 0)

(defglobal ?*activate-biwhip[3]-salience* = 0)
(defglobal ?*biwhip[3]-salience* = 0)
(defglobal ?*partial-biwhip[2]-salience* = 0)

(defglobal ?*activate-bibraid[3]-salience* = 0)
(defglobal ?*bibraid[3]-salience* = 0)
(defglobal ?*partial-bibraid[2]-salience* = 0)

(deffunction define-generic-saliences-at-L3 ()
   (bind ?*activate-typed-bivalue-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-oddagon[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*oddagon[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-oddagon[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*activate-anti-oddagon[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*anti-oddagon[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-anti-oddagon[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[3] can be applied before all the typed-t-whips[3] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 3 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[3] can be applied before all the t-whips[3] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 3 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[2]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[2]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[2]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[2]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[2]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[2]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[3]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[3]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[3]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[3]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[2]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[3]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[3]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[2]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[2]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L4: GENERIC RESOLUTION RULES INVOLVING 4 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L4-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[4]-salience* = 0)
(defglobal ?*typed-bivalue-chain[4]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[4]-salience* = 0)

(defglobal ?*activate-bivalue-chain[4]-salience* = 0)
(defglobal ?*bivalue-chain[4]-salience* = 0)
(defglobal ?*partial-bivalue-chain[4]-salience* = 0)

(defglobal ?*activate-typed-z-chain[4]-salience* = 0)
(defglobal ?*typed-z-chain[4]-salience* = 0)
(defglobal ?*typed-partial-z-chain[4]-salience* = 0)

(defglobal ?*activate-z-chain[4]-salience* = 0)
(defglobal ?*z-chain[4]-salience* = 0)
(defglobal ?*partial-z-chain[4]-salience* = 0)

(defglobal ?*activate-typed-t-whip[4]-salience* = 0)
(defglobal ?*typed-t-whip[4]-salience* = 0)

(defglobal ?*activate-t-whip[4]-salience* = 0)
(defglobal ?*t-whip[4]-salience* = 0)

(defglobal ?*activate-typed-whip[4]-salience* = 0)
(defglobal ?*typed-whip[4]-salience* = 0)
(defglobal ?*typed-partial-whip[3]-salience* = 0)

(defglobal ?*activate-whip[4]-salience* = 0)
(defglobal ?*whip[4]-salience* = 0)
(defglobal ?*partial-whip[3]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[4]-salience* = 0)
(defglobal ?*g-bivalue-chain[4]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[4]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[4]-salience-2* = 0)

(defglobal ?*activate-g2whip[4]-salience* = 0)
(defglobal ?*g2whip[4]-salience* = 0)
(defglobal ?*partial-g2whip[3]-salience-1* = 0)
(defglobal ?*partial-g2whip[3]-salience-2* = 0)
(defglobal ?*partial-g2whip[3]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[4]-salience* = 0)
(defglobal ?*typed-gwhip[4]-salience* = 0)
(defglobal ?*typed-partial-gwhip[3]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[3]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[3]-salience-3* = 0)

(defglobal ?*activate-gwhip[4]-salience* = 0)
(defglobal ?*gwhip[4]-salience* = 0)
(defglobal ?*partial-gwhip[3]-salience-1* = 0)
(defglobal ?*partial-gwhip[3]-salience-2* = 0)
(defglobal ?*partial-gwhip[3]-salience-3* = 0)

(defglobal ?*activate-braid[4]-salience* = 0)
(defglobal ?*braid[4]-salience* = 0)
(defglobal ?*partial-braid[3]-salience* = 0)

(defglobal ?*activate-gbraid[4]-salience* = 0)
(defglobal ?*gbraid[4]-salience* = 0)
(defglobal ?*partial-gbraid[3]-salience-1* = 0)
(defglobal ?*partial-gbraid[3]-salience-2* = 0)
(defglobal ?*partial-gbraid[3]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[4]-salience* = 0)
(defglobal ?*OR2-forcing-whip[4]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[4]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[4]-salience* = 0)
(defglobal ?*OR2-contrad-whip[4]-salience* = 0)

(defglobal ?*activate-OR2-whip[4]-salience* = 0)
(defglobal ?*OR2-whip[4]-salience-1* = 0)
(defglobal ?*OR2-whip[4]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[3]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[3]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[4]-salience* = 0)
(defglobal ?*OR3-forcing-whip[4]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[4]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[4]-salience* = 0)
(defglobal ?*OR3-contrad-whip[4]-salience* = 0)

(defglobal ?*activate-OR3-whip[4]-salience* = 0)
(defglobal ?*OR3-whip[4]-salience-1* = 0)
(defglobal ?*OR3-whip[4]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[3]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[3]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[4]-salience* = 0)
(defglobal ?*OR4-forcing-whip[4]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[4]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[4]-salience* = 0)
(defglobal ?*OR4-contrad-whip[4]-salience* = 0)

(defglobal ?*activate-OR4-whip[4]-salience* = 0)
(defglobal ?*OR4-whip[4]-salience-1* = 0)
(defglobal ?*OR4-whip[4]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[3]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[3]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[4]-salience* = 0)
(defglobal ?*OR5-forcing-whip[4]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[4]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[4]-salience* = 0)
(defglobal ?*OR5-contrad-whip[4]-salience* = 0)

(defglobal ?*activate-OR5-whip[4]-salience* = 0)
(defglobal ?*OR5-whip[4]-salience-1* = 0)
(defglobal ?*OR5-whip[4]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[3]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[3]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[4]-salience* = 0)
(defglobal ?*OR6-forcing-whip[4]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[4]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[4]-salience* = 0)
(defglobal ?*OR6-contrad-whip[4]-salience* = 0)

(defglobal ?*activate-OR6-whip[4]-salience* = 0)
(defglobal ?*OR6-whip[4]-salience-1* = 0)
(defglobal ?*OR6-whip[4]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[3]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[3]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[4]-salience* = 0)
(defglobal ?*OR7-forcing-whip[4]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[4]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[4]-salience* = 0)
(defglobal ?*OR7-contrad-whip[4]-salience* = 0)

(defglobal ?*activate-OR7-whip[4]-salience* = 0)
(defglobal ?*OR7-whip[4]-salience-1* = 0)
(defglobal ?*OR7-whip[4]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[3]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[3]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[4]-salience* = 0)
(defglobal ?*OR8-forcing-whip[4]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[4]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[4]-salience* = 0)
(defglobal ?*OR8-contrad-whip[4]-salience* = 0)

(defglobal ?*activate-OR8-whip[4]-salience* = 0)
(defglobal ?*OR8-whip[4]-salience-1* = 0)
(defglobal ?*OR8-whip[4]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[3]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[3]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[4]-salience* = 0)
(defglobal ?*forcing-whip[4]-value-salience* = 0)
(defglobal ?*forcing-whip[4]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[4]-salience* = 0)
(defglobal ?*forcing-gwhip[4]-value-salience* = 0)
(defglobal ?*forcing-gwhip[4]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[4]-salience* = 0)
(defglobal ?*forcing-braid[4]-value-salience* = 0)
(defglobal ?*forcing-braid[4]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[4]-salience* = 0)
(defglobal ?*forcing-gbraid[4]-value-salience* = 0)
(defglobal ?*forcing-gbraid[4]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[4]]-salience* = 0)
(defglobal ?*w*-whip[[4]]-salience* = 0)
(defglobal ?*partial-w*-whip[[3]]-salience* = 0)

(defglobal ?*activate-b*-braid[[4]]-salience* = 0)
(defglobal ?*b*-braid[[4]]-salience* = 0)
(defglobal ?*partial-b*-braid[[3]]-salience* = 0)

(defglobal ?*activate-biwhip[4]-salience* = 0)
(defglobal ?*biwhip[4]-salience* = 0)
(defglobal ?*partial-biwhip[3]-salience* = 0)

(defglobal ?*activate-bibraid[4]-salience* = 0)
(defglobal ?*bibraid[4]-salience* = 0)
(defglobal ?*partial-bibraid[3]-salience* = 0)

(deffunction define-generic-saliences-at-L4 ()
   (bind ?*activate-typed-bivalue-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[4] can be applied before all the typed-t-whips[4] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 4 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[4] can be applied before all the t-whips[4] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 4 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[3]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[3]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[3]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[3]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[3]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[3]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[4]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[4]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[4]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[4]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[3]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[4]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[4]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[3]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[3]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L5: GENERIC RESOLUTION RULES INVOLVING 5 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L5-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[5]-salience* = 0)
(defglobal ?*typed-bivalue-chain[5]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[5]-salience* = 0)

(defglobal ?*activate-bivalue-chain[5]-salience* = 0)
(defglobal ?*bivalue-chain[5]-salience* = 0)
(defglobal ?*partial-bivalue-chain[5]-salience* = 0)

(defglobal ?*activate-typed-z-chain[5]-salience* = 0)
(defglobal ?*typed-z-chain[5]-salience* = 0)
(defglobal ?*typed-partial-z-chain[5]-salience* = 0)

(defglobal ?*activate-z-chain[5]-salience* = 0)
(defglobal ?*z-chain[5]-salience* = 0)
(defglobal ?*partial-z-chain[5]-salience* = 0)

(defglobal ?*activate-oddagon[5]-salience* = 0)
(defglobal ?*oddagon[5]-salience* = 0)
(defglobal ?*partial-oddagon[4]-salience* = 0)
(defglobal ?*activate-anti-oddagon[5]-salience* = 0)
(defglobal ?*anti-oddagon[5]-salience* = 0)
(defglobal ?*partial-anti-oddagon[4]-salience* = 0)

(defglobal ?*activate-typed-t-whip[5]-salience* = 0)
(defglobal ?*typed-t-whip[5]-salience* = 0)

(defglobal ?*activate-t-whip[5]-salience* = 0)
(defglobal ?*t-whip[5]-salience* = 0)

(defglobal ?*activate-typed-whip[5]-salience* = 0)
(defglobal ?*typed-whip[5]-salience* = 0)
(defglobal ?*typed-partial-whip[4]-salience* = 0)

(defglobal ?*activate-whip[5]-salience* = 0)
(defglobal ?*whip[5]-salience* = 0)
(defglobal ?*partial-whip[4]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[5]-salience* = 0)
(defglobal ?*g-bivalue-chain[5]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[5]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[5]-salience-2* = 0)

(defglobal ?*activate-g2whip[5]-salience* = 0)
(defglobal ?*g2whip[5]-salience* = 0)
(defglobal ?*partial-g2whip[4]-salience-1* = 0)
(defglobal ?*partial-g2whip[4]-salience-2* = 0)
(defglobal ?*partial-g2whip[4]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[5]-salience* = 0)
(defglobal ?*typed-gwhip[5]-salience* = 0)
(defglobal ?*typed-partial-gwhip[4]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[4]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[4]-salience-3* = 0)

(defglobal ?*activate-gwhip[5]-salience* = 0)
(defglobal ?*gwhip[5]-salience* = 0)
(defglobal ?*partial-gwhip[4]-salience-1* = 0)
(defglobal ?*partial-gwhip[4]-salience-2* = 0)
(defglobal ?*partial-gwhip[4]-salience-3* = 0)

(defglobal ?*activate-braid[5]-salience* = 0)
(defglobal ?*braid[5]-salience* = 0)
(defglobal ?*partial-braid[4]-salience* = 0)

(defglobal ?*activate-gbraid[5]-salience* = 0)
(defglobal ?*gbraid[5]-salience* = 0)
(defglobal ?*partial-gbraid[4]-salience-1* = 0)
(defglobal ?*partial-gbraid[4]-salience-2* = 0)
(defglobal ?*partial-gbraid[4]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[5]-salience* = 0)
(defglobal ?*OR2-forcing-whip[5]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[5]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[5]-salience* = 0)
(defglobal ?*OR2-contrad-whip[5]-salience* = 0)

(defglobal ?*activate-OR2-whip[5]-salience* = 0)
(defglobal ?*OR2-whip[5]-salience-1* = 0)
(defglobal ?*OR2-whip[5]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[4]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[4]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[5]-salience* = 0)
(defglobal ?*OR3-forcing-whip[5]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[5]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[5]-salience* = 0)
(defglobal ?*OR3-contrad-whip[5]-salience* = 0)

(defglobal ?*activate-OR3-whip[5]-salience* = 0)
(defglobal ?*OR3-whip[5]-salience-1* = 0)
(defglobal ?*OR3-whip[5]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[4]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[4]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[5]-salience* = 0)
(defglobal ?*OR4-forcing-whip[5]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[5]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[5]-salience* = 0)
(defglobal ?*OR4-contrad-whip[5]-salience* = 0)

(defglobal ?*activate-OR4-whip[5]-salience* = 0)
(defglobal ?*OR4-whip[5]-salience-1* = 0)
(defglobal ?*OR4-whip[5]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[4]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[4]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[5]-salience* = 0)
(defglobal ?*OR5-forcing-whip[5]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[5]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[5]-salience* = 0)
(defglobal ?*OR5-contrad-whip[5]-salience* = 0)

(defglobal ?*activate-OR5-whip[5]-salience* = 0)
(defglobal ?*OR5-whip[5]-salience-1* = 0)
(defglobal ?*OR5-whip[5]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[4]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[4]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[5]-salience* = 0)
(defglobal ?*OR6-forcing-whip[5]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[5]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[5]-salience* = 0)
(defglobal ?*OR6-contrad-whip[5]-salience* = 0)

(defglobal ?*activate-OR6-whip[5]-salience* = 0)
(defglobal ?*OR6-whip[5]-salience-1* = 0)
(defglobal ?*OR6-whip[5]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[4]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[4]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[5]-salience* = 0)
(defglobal ?*OR7-forcing-whip[5]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[5]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[5]-salience* = 0)
(defglobal ?*OR7-contrad-whip[5]-salience* = 0)

(defglobal ?*activate-OR7-whip[5]-salience* = 0)
(defglobal ?*OR7-whip[5]-salience-1* = 0)
(defglobal ?*OR7-whip[5]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[4]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[4]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[5]-salience* = 0)
(defglobal ?*OR8-forcing-whip[5]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[5]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[5]-salience* = 0)
(defglobal ?*OR8-contrad-whip[5]-salience* = 0)

(defglobal ?*activate-OR8-whip[5]-salience* = 0)
(defglobal ?*OR8-whip[5]-salience-1* = 0)
(defglobal ?*OR8-whip[5]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[4]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[4]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[5]-salience* = 0)
(defglobal ?*forcing-whip[5]-value-salience* = 0)
(defglobal ?*forcing-whip[5]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[5]-salience* = 0)
(defglobal ?*forcing-gwhip[5]-value-salience* = 0)
(defglobal ?*forcing-gwhip[5]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[5]-salience* = 0)
(defglobal ?*forcing-braid[5]-value-salience* = 0)
(defglobal ?*forcing-braid[5]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[5]-salience* = 0)
(defglobal ?*forcing-gbraid[5]-value-salience* = 0)
(defglobal ?*forcing-gbraid[5]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[5]]-salience* = 0)
(defglobal ?*w*-whip[[5]]-salience* = 0)
(defglobal ?*partial-w*-whip[[4]]-salience* = 0)

(defglobal ?*activate-b*-braid[[5]]-salience* = 0)
(defglobal ?*b*-braid[[5]]-salience* = 0)
(defglobal ?*partial-b*-braid[[4]]-salience* = 0)

(defglobal ?*activate-biwhip[5]-salience* = 0)
(defglobal ?*biwhip[5]-salience* = 0)
(defglobal ?*partial-biwhip[4]-salience* = 0)

(defglobal ?*activate-bibraid[5]-salience* = 0)
(defglobal ?*bibraid[5]-salience* = 0)
(defglobal ?*partial-bibraid[4]-salience* = 0)

(deffunction define-generic-saliences-at-L5 ()
   (bind ?*activate-typed-bivalue-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-oddagon[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*oddagon[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-oddagon[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*activate-anti-oddagon[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*anti-oddagon[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-anti-oddagon[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[5] can be applied before all the typed-t-whips[5] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 5 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[5] can be applied before all the t-whips[5] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 5 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[4]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[4]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[4]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[4]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[4]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[4]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[5]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[5]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[5]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[5]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[4]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[5]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[5]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[4]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[4]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L6: GENERIC RESOLUTION RULES INVOLVING 6 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L6-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[6]-salience* = 0)
(defglobal ?*typed-bivalue-chain[6]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[6]-salience* = 0)

(defglobal ?*activate-bivalue-chain[6]-salience* = 0)
(defglobal ?*bivalue-chain[6]-salience* = 0)
(defglobal ?*partial-bivalue-chain[6]-salience* = 0)

(defglobal ?*activate-typed-z-chain[6]-salience* = 0)
(defglobal ?*typed-z-chain[6]-salience* = 0)
(defglobal ?*typed-partial-z-chain[6]-salience* = 0)

(defglobal ?*activate-z-chain[6]-salience* = 0)
(defglobal ?*z-chain[6]-salience* = 0)
(defglobal ?*partial-z-chain[6]-salience* = 0)

(defglobal ?*activate-typed-t-whip[6]-salience* = 0)
(defglobal ?*typed-t-whip[6]-salience* = 0)

(defglobal ?*activate-t-whip[6]-salience* = 0)
(defglobal ?*t-whip[6]-salience* = 0)

(defglobal ?*activate-typed-whip[6]-salience* = 0)
(defglobal ?*typed-whip[6]-salience* = 0)
(defglobal ?*typed-partial-whip[5]-salience* = 0)

(defglobal ?*activate-whip[6]-salience* = 0)
(defglobal ?*whip[6]-salience* = 0)
(defglobal ?*partial-whip[5]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[6]-salience* = 0)
(defglobal ?*g-bivalue-chain[6]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[6]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[6]-salience-2* = 0)

(defglobal ?*activate-g2whip[6]-salience* = 0)
(defglobal ?*g2whip[6]-salience* = 0)
(defglobal ?*partial-g2whip[5]-salience-1* = 0)
(defglobal ?*partial-g2whip[5]-salience-2* = 0)
(defglobal ?*partial-g2whip[5]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[6]-salience* = 0)
(defglobal ?*typed-gwhip[6]-salience* = 0)
(defglobal ?*typed-partial-gwhip[5]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[5]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[5]-salience-3* = 0)

(defglobal ?*activate-gwhip[6]-salience* = 0)
(defglobal ?*gwhip[6]-salience* = 0)
(defglobal ?*partial-gwhip[5]-salience-1* = 0)
(defglobal ?*partial-gwhip[5]-salience-2* = 0)
(defglobal ?*partial-gwhip[5]-salience-3* = 0)

(defglobal ?*activate-braid[6]-salience* = 0)
(defglobal ?*braid[6]-salience* = 0)
(defglobal ?*partial-braid[5]-salience* = 0)

(defglobal ?*activate-gbraid[6]-salience* = 0)
(defglobal ?*gbraid[6]-salience* = 0)
(defglobal ?*partial-gbraid[5]-salience-1* = 0)
(defglobal ?*partial-gbraid[5]-salience-2* = 0)
(defglobal ?*partial-gbraid[5]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[6]-salience* = 0)
(defglobal ?*OR2-forcing-whip[6]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[6]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[6]-salience* = 0)
(defglobal ?*OR2-contrad-whip[6]-salience* = 0)

(defglobal ?*activate-OR2-whip[6]-salience* = 0)
(defglobal ?*OR2-whip[6]-salience-1* = 0)
(defglobal ?*OR2-whip[6]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[5]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[5]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[6]-salience* = 0)
(defglobal ?*OR3-forcing-whip[6]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[6]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[6]-salience* = 0)
(defglobal ?*OR3-contrad-whip[6]-salience* = 0)

(defglobal ?*activate-OR3-whip[6]-salience* = 0)
(defglobal ?*OR3-whip[6]-salience-1* = 0)
(defglobal ?*OR3-whip[6]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[5]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[5]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[6]-salience* = 0)
(defglobal ?*OR4-forcing-whip[6]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[6]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[6]-salience* = 0)
(defglobal ?*OR4-contrad-whip[6]-salience* = 0)

(defglobal ?*activate-OR4-whip[6]-salience* = 0)
(defglobal ?*OR4-whip[6]-salience-1* = 0)
(defglobal ?*OR4-whip[6]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[5]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[5]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[6]-salience* = 0)
(defglobal ?*OR5-forcing-whip[6]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[6]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[6]-salience* = 0)
(defglobal ?*OR5-contrad-whip[6]-salience* = 0)

(defglobal ?*activate-OR5-whip[6]-salience* = 0)
(defglobal ?*OR5-whip[6]-salience-1* = 0)
(defglobal ?*OR5-whip[6]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[5]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[5]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[6]-salience* = 0)
(defglobal ?*OR6-forcing-whip[6]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[6]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[6]-salience* = 0)
(defglobal ?*OR6-contrad-whip[6]-salience* = 0)

(defglobal ?*activate-OR6-whip[6]-salience* = 0)
(defglobal ?*OR6-whip[6]-salience-1* = 0)
(defglobal ?*OR6-whip[6]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[5]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[5]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[6]-salience* = 0)
(defglobal ?*OR7-forcing-whip[6]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[6]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[6]-salience* = 0)
(defglobal ?*OR7-contrad-whip[6]-salience* = 0)

(defglobal ?*activate-OR7-whip[6]-salience* = 0)
(defglobal ?*OR7-whip[6]-salience-1* = 0)
(defglobal ?*OR7-whip[6]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[5]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[5]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[6]-salience* = 0)
(defglobal ?*OR8-forcing-whip[6]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[6]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[6]-salience* = 0)
(defglobal ?*OR8-contrad-whip[6]-salience* = 0)

(defglobal ?*activate-OR8-whip[6]-salience* = 0)
(defglobal ?*OR8-whip[6]-salience-1* = 0)
(defglobal ?*OR8-whip[6]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[5]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[5]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[6]-salience* = 0)
(defglobal ?*forcing-whip[6]-value-salience* = 0)
(defglobal ?*forcing-whip[6]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[6]-salience* = 0)
(defglobal ?*forcing-gwhip[6]-value-salience* = 0)
(defglobal ?*forcing-gwhip[6]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[6]-salience* = 0)
(defglobal ?*forcing-braid[6]-value-salience* = 0)
(defglobal ?*forcing-braid[6]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[6]-salience* = 0)
(defglobal ?*forcing-gbraid[6]-value-salience* = 0)
(defglobal ?*forcing-gbraid[6]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[6]]-salience* = 0)
(defglobal ?*w*-whip[[6]]-salience* = 0)
(defglobal ?*partial-w*-whip[[5]]-salience* = 0)

(defglobal ?*activate-b*-braid[[6]]-salience* = 0)
(defglobal ?*b*-braid[[6]]-salience* = 0)
(defglobal ?*partial-b*-braid[[5]]-salience* = 0)

(defglobal ?*activate-biwhip[6]-salience* = 0)
(defglobal ?*biwhip[6]-salience* = 0)
(defglobal ?*partial-biwhip[5]-salience* = 0)

(defglobal ?*activate-bibraid[6]-salience* = 0)
(defglobal ?*bibraid[6]-salience* = 0)
(defglobal ?*partial-bibraid[5]-salience* = 0)

(deffunction define-generic-saliences-at-L6 ()
   (bind ?*activate-typed-bivalue-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[6] can be applied before all the typed-t-whips[6] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 6 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[6] can be applied before all the t-whips[6] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 6 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[5]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[5]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[5]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[5]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[5]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[5]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[6]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[6]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[6]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[6]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[5]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[6]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[6]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[5]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L7: GENERIC RESOLUTION RULES INVOLVING 7 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L7-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[7]-salience* = 0)
(defglobal ?*typed-bivalue-chain[7]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[7]-salience* = 0)

(defglobal ?*activate-bivalue-chain[7]-salience* = 0)
(defglobal ?*bivalue-chain[7]-salience* = 0)
(defglobal ?*partial-bivalue-chain[7]-salience* = 0)

(defglobal ?*activate-typed-z-chain[7]-salience* = 0)
(defglobal ?*typed-z-chain[7]-salience* = 0)
(defglobal ?*typed-partial-z-chain[7]-salience* = 0)

(defglobal ?*activate-z-chain[7]-salience* = 0)
(defglobal ?*z-chain[7]-salience* = 0)
(defglobal ?*partial-z-chain[7]-salience* = 0)

(defglobal ?*activate-oddagon[7]-salience* = 0)
(defglobal ?*oddagon[7]-salience* = 0)
(defglobal ?*partial-oddagon[6]-salience* = 0)
(defglobal ?*activate-anti-oddagon[7]-salience* = 0)
(defglobal ?*anti-oddagon[7]-salience* = 0)
(defglobal ?*partial-anti-oddagon[6]-salience* = 0)

(defglobal ?*activate-typed-t-whip[7]-salience* = 0)
(defglobal ?*typed-t-whip[7]-salience* = 0)

(defglobal ?*activate-t-whip[7]-salience* = 0)
(defglobal ?*t-whip[7]-salience* = 0)

(defglobal ?*activate-typed-whip[7]-salience* = 0)
(defglobal ?*typed-whip[7]-salience* = 0)
(defglobal ?*typed-partial-whip[6]-salience* = 0)

(defglobal ?*activate-whip[7]-salience* = 0)
(defglobal ?*whip[7]-salience* = 0)
(defglobal ?*partial-whip[6]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[7]-salience* = 0)
(defglobal ?*g-bivalue-chain[7]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[7]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[7]-salience-2* = 0)

(defglobal ?*activate-g2whip[7]-salience* = 0)
(defglobal ?*g2whip[7]-salience* = 0)
(defglobal ?*partial-g2whip[6]-salience-1* = 0)
(defglobal ?*partial-g2whip[6]-salience-2* = 0)
(defglobal ?*partial-g2whip[6]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[7]-salience* = 0)
(defglobal ?*typed-gwhip[7]-salience* = 0)
(defglobal ?*typed-partial-gwhip[6]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[6]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[6]-salience-3* = 0)

(defglobal ?*activate-gwhip[7]-salience* = 0)
(defglobal ?*gwhip[7]-salience* = 0)
(defglobal ?*partial-gwhip[6]-salience-1* = 0)
(defglobal ?*partial-gwhip[6]-salience-2* = 0)
(defglobal ?*partial-gwhip[6]-salience-3* = 0)

(defglobal ?*activate-braid[7]-salience* = 0)
(defglobal ?*braid[7]-salience* = 0)
(defglobal ?*partial-braid[6]-salience* = 0)

(defglobal ?*activate-gbraid[7]-salience* = 0)
(defglobal ?*gbraid[7]-salience* = 0)
(defglobal ?*partial-gbraid[6]-salience-1* = 0)
(defglobal ?*partial-gbraid[6]-salience-2* = 0)
(defglobal ?*partial-gbraid[6]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[7]-salience* = 0)
(defglobal ?*OR2-forcing-whip[7]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[7]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[7]-salience* = 0)
(defglobal ?*OR2-contrad-whip[7]-salience* = 0)

(defglobal ?*activate-OR2-whip[7]-salience* = 0)
(defglobal ?*OR2-whip[7]-salience-1* = 0)
(defglobal ?*OR2-whip[7]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[6]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[6]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[7]-salience* = 0)
(defglobal ?*OR3-forcing-whip[7]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[7]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[7]-salience* = 0)
(defglobal ?*OR3-contrad-whip[7]-salience* = 0)

(defglobal ?*activate-OR3-whip[7]-salience* = 0)
(defglobal ?*OR3-whip[7]-salience-1* = 0)
(defglobal ?*OR3-whip[7]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[6]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[6]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[7]-salience* = 0)
(defglobal ?*OR4-forcing-whip[7]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[7]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[7]-salience* = 0)
(defglobal ?*OR4-contrad-whip[7]-salience* = 0)

(defglobal ?*activate-OR4-whip[7]-salience* = 0)
(defglobal ?*OR4-whip[7]-salience-1* = 0)
(defglobal ?*OR4-whip[7]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[6]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[6]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[7]-salience* = 0)
(defglobal ?*OR5-forcing-whip[7]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[7]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[7]-salience* = 0)
(defglobal ?*OR5-contrad-whip[7]-salience* = 0)

(defglobal ?*activate-OR5-whip[7]-salience* = 0)
(defglobal ?*OR5-whip[7]-salience-1* = 0)
(defglobal ?*OR5-whip[7]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[6]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[6]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[7]-salience* = 0)
(defglobal ?*OR6-forcing-whip[7]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[7]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[7]-salience* = 0)
(defglobal ?*OR6-contrad-whip[7]-salience* = 0)

(defglobal ?*activate-OR6-whip[7]-salience* = 0)
(defglobal ?*OR6-whip[7]-salience-1* = 0)
(defglobal ?*OR6-whip[7]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[6]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[6]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[7]-salience* = 0)
(defglobal ?*OR7-forcing-whip[7]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[7]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[7]-salience* = 0)
(defglobal ?*OR7-contrad-whip[7]-salience* = 0)

(defglobal ?*activate-OR7-whip[7]-salience* = 0)
(defglobal ?*OR7-whip[7]-salience-1* = 0)
(defglobal ?*OR7-whip[7]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[6]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[6]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[7]-salience* = 0)
(defglobal ?*OR8-forcing-whip[7]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[7]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[7]-salience* = 0)
(defglobal ?*OR8-contrad-whip[7]-salience* = 0)

(defglobal ?*activate-OR8-whip[7]-salience* = 0)
(defglobal ?*OR8-whip[7]-salience-1* = 0)
(defglobal ?*OR8-whip[7]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[6]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[6]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[7]-salience* = 0)
(defglobal ?*forcing-whip[7]-value-salience* = 0)
(defglobal ?*forcing-whip[7]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[7]-salience* = 0)
(defglobal ?*forcing-gwhip[7]-value-salience* = 0)
(defglobal ?*forcing-gwhip[7]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[7]-salience* = 0)
(defglobal ?*forcing-braid[7]-value-salience* = 0)
(defglobal ?*forcing-braid[7]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[7]-salience* = 0)
(defglobal ?*forcing-gbraid[7]-value-salience* = 0)
(defglobal ?*forcing-gbraid[7]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[7]]-salience* = 0)
(defglobal ?*w*-whip[[7]]-salience* = 0)
(defglobal ?*partial-w*-whip[[6]]-salience* = 0)

(defglobal ?*activate-b*-braid[[7]]-salience* = 0)
(defglobal ?*b*-braid[[7]]-salience* = 0)
(defglobal ?*partial-b*-braid[[6]]-salience* = 0)

(defglobal ?*activate-biwhip[7]-salience* = 0)
(defglobal ?*biwhip[7]-salience* = 0)
(defglobal ?*partial-biwhip[6]-salience* = 0)

(defglobal ?*activate-bibraid[7]-salience* = 0)
(defglobal ?*bibraid[7]-salience* = 0)
(defglobal ?*partial-bibraid[6]-salience* = 0)

(deffunction define-generic-saliences-at-L7 ()
   (bind ?*activate-typed-bivalue-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-oddagon[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*oddagon[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-oddagon[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*activate-anti-oddagon[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*anti-oddagon[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-anti-oddagon[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[7] can be applied before all the typed-t-whips[7] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 7 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[7] can be applied before all the t-whips[7] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 7 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[6]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[6]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[6]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[6]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[6]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[6]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[7]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[7]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[7]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[7]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[6]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[7]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[7]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[6]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L8: GENERIC RESOLUTION RULES INVOLVING 8 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L8-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[8]-salience* = 0)
(defglobal ?*typed-bivalue-chain[8]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[8]-salience* = 0)

(defglobal ?*activate-bivalue-chain[8]-salience* = 0)
(defglobal ?*bivalue-chain[8]-salience* = 0)
(defglobal ?*partial-bivalue-chain[8]-salience* = 0)

(defglobal ?*activate-typed-z-chain[8]-salience* = 0)
(defglobal ?*typed-z-chain[8]-salience* = 0)
(defglobal ?*typed-partial-z-chain[8]-salience* = 0)

(defglobal ?*activate-z-chain[8]-salience* = 0)
(defglobal ?*z-chain[8]-salience* = 0)
(defglobal ?*partial-z-chain[8]-salience* = 0)

(defglobal ?*activate-typed-t-whip[8]-salience* = 0)
(defglobal ?*typed-t-whip[8]-salience* = 0)

(defglobal ?*activate-t-whip[8]-salience* = 0)
(defglobal ?*t-whip[8]-salience* = 0)

(defglobal ?*activate-typed-whip[8]-salience* = 0)
(defglobal ?*typed-whip[8]-salience* = 0)
(defglobal ?*typed-partial-whip[7]-salience* = 0)

(defglobal ?*activate-whip[8]-salience* = 0)
(defglobal ?*whip[8]-salience* = 0)
(defglobal ?*partial-whip[7]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[8]-salience* = 0)
(defglobal ?*g-bivalue-chain[8]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[8]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[8]-salience-2* = 0)

(defglobal ?*activate-g2whip[8]-salience* = 0)
(defglobal ?*g2whip[8]-salience* = 0)
(defglobal ?*partial-g2whip[7]-salience-1* = 0)
(defglobal ?*partial-g2whip[7]-salience-2* = 0)
(defglobal ?*partial-g2whip[7]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[8]-salience* = 0)
(defglobal ?*typed-gwhip[8]-salience* = 0)
(defglobal ?*typed-partial-gwhip[7]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[7]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[7]-salience-3* = 0)

(defglobal ?*activate-gwhip[8]-salience* = 0)
(defglobal ?*gwhip[8]-salience* = 0)
(defglobal ?*partial-gwhip[7]-salience-1* = 0)
(defglobal ?*partial-gwhip[7]-salience-2* = 0)
(defglobal ?*partial-gwhip[7]-salience-3* = 0)

(defglobal ?*activate-braid[8]-salience* = 0)
(defglobal ?*braid[8]-salience* = 0)
(defglobal ?*partial-braid[7]-salience* = 0)

(defglobal ?*activate-gbraid[8]-salience* = 0)
(defglobal ?*gbraid[8]-salience* = 0)
(defglobal ?*partial-gbraid[7]-salience-1* = 0)
(defglobal ?*partial-gbraid[7]-salience-2* = 0)
(defglobal ?*partial-gbraid[7]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[8]-salience* = 0)
(defglobal ?*OR2-forcing-whip[8]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[8]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[8]-salience* = 0)
(defglobal ?*OR2-contrad-whip[8]-salience* = 0)

(defglobal ?*activate-OR2-whip[8]-salience* = 0)
(defglobal ?*OR2-whip[8]-salience-1* = 0)
(defglobal ?*OR2-whip[8]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[7]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[7]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[8]-salience* = 0)
(defglobal ?*OR3-forcing-whip[8]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[8]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[8]-salience* = 0)
(defglobal ?*OR3-contrad-whip[8]-salience* = 0)

(defglobal ?*activate-OR3-whip[8]-salience* = 0)
(defglobal ?*OR3-whip[8]-salience-1* = 0)
(defglobal ?*OR3-whip[8]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[7]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[7]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[8]-salience* = 0)
(defglobal ?*OR4-forcing-whip[8]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[8]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[8]-salience* = 0)
(defglobal ?*OR4-contrad-whip[8]-salience* = 0)

(defglobal ?*activate-OR4-whip[8]-salience* = 0)
(defglobal ?*OR4-whip[8]-salience-1* = 0)
(defglobal ?*OR4-whip[8]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[7]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[7]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[8]-salience* = 0)
(defglobal ?*OR5-forcing-whip[8]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[8]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[8]-salience* = 0)
(defglobal ?*OR5-contrad-whip[8]-salience* = 0)

(defglobal ?*activate-OR5-whip[8]-salience* = 0)
(defglobal ?*OR5-whip[8]-salience-1* = 0)
(defglobal ?*OR5-whip[8]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[7]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[7]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[8]-salience* = 0)
(defglobal ?*OR6-forcing-whip[8]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[8]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[8]-salience* = 0)
(defglobal ?*OR6-contrad-whip[8]-salience* = 0)

(defglobal ?*activate-OR6-whip[8]-salience* = 0)
(defglobal ?*OR6-whip[8]-salience-1* = 0)
(defglobal ?*OR6-whip[8]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[7]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[7]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[8]-salience* = 0)
(defglobal ?*OR7-forcing-whip[8]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[8]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[8]-salience* = 0)
(defglobal ?*OR7-contrad-whip[8]-salience* = 0)

(defglobal ?*activate-OR7-whip[8]-salience* = 0)
(defglobal ?*OR7-whip[8]-salience-1* = 0)
(defglobal ?*OR7-whip[8]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[7]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[7]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[8]-salience* = 0)
(defglobal ?*OR8-forcing-whip[8]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[8]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[8]-salience* = 0)
(defglobal ?*OR8-contrad-whip[8]-salience* = 0)

(defglobal ?*activate-OR8-whip[8]-salience* = 0)
(defglobal ?*OR8-whip[8]-salience-1* = 0)
(defglobal ?*OR8-whip[8]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[7]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[7]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[8]-salience* = 0)
(defglobal ?*forcing-whip[8]-value-salience* = 0)
(defglobal ?*forcing-whip[8]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[8]-salience* = 0)
(defglobal ?*forcing-gwhip[8]-value-salience* = 0)
(defglobal ?*forcing-gwhip[8]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[8]-salience* = 0)
(defglobal ?*forcing-braid[8]-value-salience* = 0)
(defglobal ?*forcing-braid[8]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[8]-salience* = 0)
(defglobal ?*forcing-gbraid[8]-value-salience* = 0)
(defglobal ?*forcing-gbraid[8]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[8]]-salience* = 0)
(defglobal ?*w*-whip[[8]]-salience* = 0)
(defglobal ?*partial-w*-whip[[7]]-salience* = 0)

(defglobal ?*activate-b*-braid[[8]]-salience* = 0)
(defglobal ?*b*-braid[[8]]-salience* = 0)
(defglobal ?*partial-b*-braid[[7]]-salience* = 0)

(defglobal ?*activate-biwhip[8]-salience* = 0)
(defglobal ?*biwhip[8]-salience* = 0)
(defglobal ?*partial-biwhip[7]-salience* = 0)

(defglobal ?*activate-bibraid[8]-salience* = 0)
(defglobal ?*bibraid[8]-salience* = 0)
(defglobal ?*partial-bibraid[7]-salience* = 0)

(deffunction define-generic-saliences-at-L8 ()
   (bind ?*activate-typed-bivalue-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[8] can be applied before all the typed-t-whips[8] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 8 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[8] can be applied before all the t-whips[8] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 8 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[7]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[7]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[7]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[7]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[7]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[7]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[8]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[8]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[8]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[8]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[7]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[8]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[8]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[7]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[7]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L9: GENERIC RESOLUTION RULES INVOLVING 9 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L9-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[9]-salience* = 0)
(defglobal ?*typed-bivalue-chain[9]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[9]-salience* = 0)

(defglobal ?*activate-bivalue-chain[9]-salience* = 0)
(defglobal ?*bivalue-chain[9]-salience* = 0)
(defglobal ?*partial-bivalue-chain[9]-salience* = 0)

(defglobal ?*activate-typed-z-chain[9]-salience* = 0)
(defglobal ?*typed-z-chain[9]-salience* = 0)
(defglobal ?*typed-partial-z-chain[9]-salience* = 0)

(defglobal ?*activate-z-chain[9]-salience* = 0)
(defglobal ?*z-chain[9]-salience* = 0)
(defglobal ?*partial-z-chain[9]-salience* = 0)

(defglobal ?*activate-oddagon[9]-salience* = 0)
(defglobal ?*oddagon[9]-salience* = 0)
(defglobal ?*partial-oddagon[8]-salience* = 0)
(defglobal ?*activate-anti-oddagon[9]-salience* = 0)
(defglobal ?*anti-oddagon[9]-salience* = 0)
(defglobal ?*partial-anti-oddagon[8]-salience* = 0)

(defglobal ?*activate-typed-t-whip[9]-salience* = 0)
(defglobal ?*typed-t-whip[9]-salience* = 0)

(defglobal ?*activate-t-whip[9]-salience* = 0)
(defglobal ?*t-whip[9]-salience* = 0)

(defglobal ?*activate-typed-whip[9]-salience* = 0)
(defglobal ?*typed-whip[9]-salience* = 0)
(defglobal ?*typed-partial-whip[8]-salience* = 0)

(defglobal ?*activate-whip[9]-salience* = 0)
(defglobal ?*whip[9]-salience* = 0)
(defglobal ?*partial-whip[8]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[9]-salience* = 0)
(defglobal ?*g-bivalue-chain[9]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[9]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[9]-salience-2* = 0)

(defglobal ?*activate-g2whip[9]-salience* = 0)
(defglobal ?*g2whip[9]-salience* = 0)
(defglobal ?*partial-g2whip[8]-salience-1* = 0)
(defglobal ?*partial-g2whip[8]-salience-2* = 0)
(defglobal ?*partial-g2whip[8]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[9]-salience* = 0)
(defglobal ?*typed-gwhip[9]-salience* = 0)
(defglobal ?*typed-partial-gwhip[8]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[8]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[8]-salience-3* = 0)

(defglobal ?*activate-gwhip[9]-salience* = 0)
(defglobal ?*gwhip[9]-salience* = 0)
(defglobal ?*partial-gwhip[8]-salience-1* = 0)
(defglobal ?*partial-gwhip[8]-salience-2* = 0)
(defglobal ?*partial-gwhip[8]-salience-3* = 0)

(defglobal ?*activate-braid[9]-salience* = 0)
(defglobal ?*braid[9]-salience* = 0)
(defglobal ?*partial-braid[8]-salience* = 0)

(defglobal ?*activate-gbraid[9]-salience* = 0)
(defglobal ?*gbraid[9]-salience* = 0)
(defglobal ?*partial-gbraid[8]-salience-1* = 0)
(defglobal ?*partial-gbraid[8]-salience-2* = 0)
(defglobal ?*partial-gbraid[8]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[9]-salience* = 0)
(defglobal ?*OR2-forcing-whip[9]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[9]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[9]-salience* = 0)
(defglobal ?*OR2-contrad-whip[9]-salience* = 0)

(defglobal ?*activate-OR2-whip[9]-salience* = 0)
(defglobal ?*OR2-whip[9]-salience-1* = 0)
(defglobal ?*OR2-whip[9]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[8]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[8]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[9]-salience* = 0)
(defglobal ?*OR3-forcing-whip[9]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[9]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[9]-salience* = 0)
(defglobal ?*OR3-contrad-whip[9]-salience* = 0)

(defglobal ?*activate-OR3-whip[9]-salience* = 0)
(defglobal ?*OR3-whip[9]-salience-1* = 0)
(defglobal ?*OR3-whip[9]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[8]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[8]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[9]-salience* = 0)
(defglobal ?*OR4-forcing-whip[9]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[9]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[9]-salience* = 0)
(defglobal ?*OR4-contrad-whip[9]-salience* = 0)

(defglobal ?*activate-OR4-whip[9]-salience* = 0)
(defglobal ?*OR4-whip[9]-salience-1* = 0)
(defglobal ?*OR4-whip[9]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[8]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[8]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[9]-salience* = 0)
(defglobal ?*OR5-forcing-whip[9]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[9]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[9]-salience* = 0)
(defglobal ?*OR5-contrad-whip[9]-salience* = 0)

(defglobal ?*activate-OR5-whip[9]-salience* = 0)
(defglobal ?*OR5-whip[9]-salience-1* = 0)
(defglobal ?*OR5-whip[9]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[8]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[8]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[9]-salience* = 0)
(defglobal ?*OR6-forcing-whip[9]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[9]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[9]-salience* = 0)
(defglobal ?*OR6-contrad-whip[9]-salience* = 0)

(defglobal ?*activate-OR6-whip[9]-salience* = 0)
(defglobal ?*OR6-whip[9]-salience-1* = 0)
(defglobal ?*OR6-whip[9]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[8]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[8]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[9]-salience* = 0)
(defglobal ?*OR7-forcing-whip[9]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[9]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[9]-salience* = 0)
(defglobal ?*OR7-contrad-whip[9]-salience* = 0)

(defglobal ?*activate-OR7-whip[9]-salience* = 0)
(defglobal ?*OR7-whip[9]-salience-1* = 0)
(defglobal ?*OR7-whip[9]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[8]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[8]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[9]-salience* = 0)
(defglobal ?*OR8-forcing-whip[9]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[9]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[9]-salience* = 0)
(defglobal ?*OR8-contrad-whip[9]-salience* = 0)

(defglobal ?*activate-OR8-whip[9]-salience* = 0)
(defglobal ?*OR8-whip[9]-salience-1* = 0)
(defglobal ?*OR8-whip[9]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[8]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[8]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[9]-salience* = 0)
(defglobal ?*forcing-whip[9]-value-salience* = 0)
(defglobal ?*forcing-whip[9]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[9]-salience* = 0)
(defglobal ?*forcing-gwhip[9]-value-salience* = 0)
(defglobal ?*forcing-gwhip[9]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[9]-salience* = 0)
(defglobal ?*forcing-braid[9]-value-salience* = 0)
(defglobal ?*forcing-braid[9]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[9]-salience* = 0)
(defglobal ?*forcing-gbraid[9]-value-salience* = 0)
(defglobal ?*forcing-gbraid[9]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[9]]-salience* = 0)
(defglobal ?*w*-whip[[9]]-salience* = 0)
(defglobal ?*partial-w*-whip[[8]]-salience* = 0)

(defglobal ?*activate-b*-braid[[9]]-salience* = 0)
(defglobal ?*b*-braid[[9]]-salience* = 0)
(defglobal ?*partial-b*-braid[[8]]-salience* = 0)

(defglobal ?*activate-biwhip[9]-salience* = 0)
(defglobal ?*biwhip[9]-salience* = 0)
(defglobal ?*partial-biwhip[8]-salience* = 0)

(defglobal ?*activate-bibraid[9]-salience* = 0)
(defglobal ?*bibraid[9]-salience* = 0)
(defglobal ?*partial-bibraid[8]-salience* = 0)

(deffunction define-generic-saliences-at-L9 ()
   (bind ?*activate-typed-bivalue-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-oddagon[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*oddagon[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-oddagon[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*activate-anti-oddagon[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*anti-oddagon[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-anti-oddagon[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[9] can be applied before all the typed-t-whips[9] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 9 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[9] can be applied before all the t-whips[9] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 9 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[8]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[8]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[8]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[8]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[8]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[8]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[9]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[9]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[9]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[9]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[8]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[9]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[9]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[8]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[8]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L10: GENERIC RESOLUTION RULES INVOLVING 10 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L10-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[10]-salience* = 0)
(defglobal ?*typed-bivalue-chain[10]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[10]-salience* = 0)

(defglobal ?*activate-bivalue-chain[10]-salience* = 0)
(defglobal ?*bivalue-chain[10]-salience* = 0)
(defglobal ?*partial-bivalue-chain[10]-salience* = 0)

(defglobal ?*activate-typed-z-chain[10]-salience* = 0)
(defglobal ?*typed-z-chain[10]-salience* = 0)
(defglobal ?*typed-partial-z-chain[10]-salience* = 0)

(defglobal ?*activate-z-chain[10]-salience* = 0)
(defglobal ?*z-chain[10]-salience* = 0)
(defglobal ?*partial-z-chain[10]-salience* = 0)

(defglobal ?*activate-typed-t-whip[10]-salience* = 0)
(defglobal ?*typed-t-whip[10]-salience* = 0)

(defglobal ?*activate-t-whip[10]-salience* = 0)
(defglobal ?*t-whip[10]-salience* = 0)

(defglobal ?*activate-typed-whip[10]-salience* = 0)
(defglobal ?*typed-whip[10]-salience* = 0)
(defglobal ?*typed-partial-whip[9]-salience* = 0)

(defglobal ?*activate-whip[10]-salience* = 0)
(defglobal ?*whip[10]-salience* = 0)
(defglobal ?*partial-whip[9]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[10]-salience* = 0)
(defglobal ?*g-bivalue-chain[10]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[10]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[10]-salience-2* = 0)

(defglobal ?*activate-g2whip[10]-salience* = 0)
(defglobal ?*g2whip[10]-salience* = 0)
(defglobal ?*partial-g2whip[9]-salience-1* = 0)
(defglobal ?*partial-g2whip[9]-salience-2* = 0)
(defglobal ?*partial-g2whip[9]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[10]-salience* = 0)
(defglobal ?*typed-gwhip[10]-salience* = 0)
(defglobal ?*typed-partial-gwhip[9]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[9]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[9]-salience-3* = 0)

(defglobal ?*activate-gwhip[10]-salience* = 0)
(defglobal ?*gwhip[10]-salience* = 0)
(defglobal ?*partial-gwhip[9]-salience-1* = 0)
(defglobal ?*partial-gwhip[9]-salience-2* = 0)
(defglobal ?*partial-gwhip[9]-salience-3* = 0)

(defglobal ?*activate-braid[10]-salience* = 0)
(defglobal ?*braid[10]-salience* = 0)
(defglobal ?*partial-braid[9]-salience* = 0)

(defglobal ?*activate-gbraid[10]-salience* = 0)
(defglobal ?*gbraid[10]-salience* = 0)
(defglobal ?*partial-gbraid[9]-salience-1* = 0)
(defglobal ?*partial-gbraid[9]-salience-2* = 0)
(defglobal ?*partial-gbraid[9]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[10]-salience* = 0)
(defglobal ?*OR2-forcing-whip[10]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[10]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[10]-salience* = 0)
(defglobal ?*OR2-contrad-whip[10]-salience* = 0)

(defglobal ?*activate-OR2-whip[10]-salience* = 0)
(defglobal ?*OR2-whip[10]-salience-1* = 0)
(defglobal ?*OR2-whip[10]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[9]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[9]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[10]-salience* = 0)
(defglobal ?*OR3-forcing-whip[10]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[10]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[10]-salience* = 0)
(defglobal ?*OR3-contrad-whip[10]-salience* = 0)

(defglobal ?*activate-OR3-whip[10]-salience* = 0)
(defglobal ?*OR3-whip[10]-salience-1* = 0)
(defglobal ?*OR3-whip[10]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[9]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[9]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[10]-salience* = 0)
(defglobal ?*OR4-forcing-whip[10]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[10]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[10]-salience* = 0)
(defglobal ?*OR4-contrad-whip[10]-salience* = 0)

(defglobal ?*activate-OR4-whip[10]-salience* = 0)
(defglobal ?*OR4-whip[10]-salience-1* = 0)
(defglobal ?*OR4-whip[10]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[9]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[9]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[10]-salience* = 0)
(defglobal ?*OR5-forcing-whip[10]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[10]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[10]-salience* = 0)
(defglobal ?*OR5-contrad-whip[10]-salience* = 0)

(defglobal ?*activate-OR5-whip[10]-salience* = 0)
(defglobal ?*OR5-whip[10]-salience-1* = 0)
(defglobal ?*OR5-whip[10]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[9]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[9]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[10]-salience* = 0)
(defglobal ?*OR6-forcing-whip[10]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[10]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[10]-salience* = 0)
(defglobal ?*OR6-contrad-whip[10]-salience* = 0)

(defglobal ?*activate-OR6-whip[10]-salience* = 0)
(defglobal ?*OR6-whip[10]-salience-1* = 0)
(defglobal ?*OR6-whip[10]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[9]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[9]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[10]-salience* = 0)
(defglobal ?*OR7-forcing-whip[10]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[10]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[10]-salience* = 0)
(defglobal ?*OR7-contrad-whip[10]-salience* = 0)

(defglobal ?*activate-OR7-whip[10]-salience* = 0)
(defglobal ?*OR7-whip[10]-salience-1* = 0)
(defglobal ?*OR7-whip[10]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[9]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[9]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[10]-salience* = 0)
(defglobal ?*OR8-forcing-whip[10]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[10]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[10]-salience* = 0)
(defglobal ?*OR8-contrad-whip[10]-salience* = 0)

(defglobal ?*activate-OR8-whip[10]-salience* = 0)
(defglobal ?*OR8-whip[10]-salience-1* = 0)
(defglobal ?*OR8-whip[10]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[9]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[9]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[10]-salience* = 0)
(defglobal ?*forcing-whip[10]-value-salience* = 0)
(defglobal ?*forcing-whip[10]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[10]-salience* = 0)
(defglobal ?*forcing-gwhip[10]-value-salience* = 0)
(defglobal ?*forcing-gwhip[10]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[10]-salience* = 0)
(defglobal ?*forcing-braid[10]-value-salience* = 0)
(defglobal ?*forcing-braid[10]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[10]-salience* = 0)
(defglobal ?*forcing-gbraid[10]-value-salience* = 0)
(defglobal ?*forcing-gbraid[10]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[10]]-salience* = 0)
(defglobal ?*w*-whip[[10]]-salience* = 0)
(defglobal ?*partial-w*-whip[[9]]-salience* = 0)

(defglobal ?*activate-b*-braid[[10]]-salience* = 0)
(defglobal ?*b*-braid[[10]]-salience* = 0)
(defglobal ?*partial-b*-braid[[9]]-salience* = 0)

(defglobal ?*activate-biwhip[10]-salience* = 0)
(defglobal ?*biwhip[10]-salience* = 0)
(defglobal ?*partial-biwhip[9]-salience* = 0)

(defglobal ?*activate-bibraid[10]-salience* = 0)
(defglobal ?*bibraid[10]-salience* = 0)
(defglobal ?*partial-bibraid[9]-salience* = 0)

(deffunction define-generic-saliences-at-L10 ()
   (bind ?*activate-typed-bivalue-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[10] can be applied before all the typed-t-whips[10] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 10 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[10] can be applied before all the t-whips[10] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 10 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[9]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[9]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[9]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[9]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[9]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[9]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[10]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[10]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[10]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[10]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[9]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[10]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[10]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[9]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[9]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L11: GENERIC RESOLUTION RULES INVOLVING 11 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L11-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[11]-salience* = 0)
(defglobal ?*typed-bivalue-chain[11]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[11]-salience* = 0)

(defglobal ?*activate-bivalue-chain[11]-salience* = 0)
(defglobal ?*bivalue-chain[11]-salience* = 0)
(defglobal ?*partial-bivalue-chain[11]-salience* = 0)

(defglobal ?*activate-typed-z-chain[11]-salience* = 0)
(defglobal ?*typed-z-chain[11]-salience* = 0)
(defglobal ?*typed-partial-z-chain[11]-salience* = 0)

(defglobal ?*activate-z-chain[11]-salience* = 0)
(defglobal ?*z-chain[11]-salience* = 0)
(defglobal ?*partial-z-chain[11]-salience* = 0)

(defglobal ?*activate-oddagon[11]-salience* = 0)
(defglobal ?*oddagon[11]-salience* = 0)
(defglobal ?*partial-oddagon[10]-salience* = 0)
(defglobal ?*activate-anti-oddagon[11]-salience* = 0)
(defglobal ?*anti-oddagon[11]-salience* = 0)
(defglobal ?*partial-anti-oddagon[10]-salience* = 0)

(defglobal ?*activate-typed-t-whip[11]-salience* = 0)
(defglobal ?*typed-t-whip[11]-salience* = 0)

(defglobal ?*activate-t-whip[11]-salience* = 0)
(defglobal ?*t-whip[11]-salience* = 0)

(defglobal ?*activate-typed-whip[11]-salience* = 0)
(defglobal ?*typed-whip[11]-salience* = 0)
(defglobal ?*typed-partial-whip[10]-salience* = 0)

(defglobal ?*activate-whip[11]-salience* = 0)
(defglobal ?*whip[11]-salience* = 0)
(defglobal ?*partial-whip[10]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[11]-salience* = 0)
(defglobal ?*g-bivalue-chain[11]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[11]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[11]-salience-2* = 0)

(defglobal ?*activate-g2whip[11]-salience* = 0)
(defglobal ?*g2whip[11]-salience* = 0)
(defglobal ?*partial-g2whip[10]-salience-1* = 0)
(defglobal ?*partial-g2whip[10]-salience-2* = 0)
(defglobal ?*partial-g2whip[10]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[11]-salience* = 0)
(defglobal ?*typed-gwhip[11]-salience* = 0)
(defglobal ?*typed-partial-gwhip[10]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[10]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[10]-salience-3* = 0)

(defglobal ?*activate-gwhip[11]-salience* = 0)
(defglobal ?*gwhip[11]-salience* = 0)
(defglobal ?*partial-gwhip[10]-salience-1* = 0)
(defglobal ?*partial-gwhip[10]-salience-2* = 0)
(defglobal ?*partial-gwhip[10]-salience-3* = 0)

(defglobal ?*activate-braid[11]-salience* = 0)
(defglobal ?*braid[11]-salience* = 0)
(defglobal ?*partial-braid[10]-salience* = 0)

(defglobal ?*activate-gbraid[11]-salience* = 0)
(defglobal ?*gbraid[11]-salience* = 0)
(defglobal ?*partial-gbraid[10]-salience-1* = 0)
(defglobal ?*partial-gbraid[10]-salience-2* = 0)
(defglobal ?*partial-gbraid[10]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[11]-salience* = 0)
(defglobal ?*OR2-forcing-whip[11]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[11]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[11]-salience* = 0)
(defglobal ?*OR2-contrad-whip[11]-salience* = 0)

(defglobal ?*activate-OR2-whip[11]-salience* = 0)
(defglobal ?*OR2-whip[11]-salience-1* = 0)
(defglobal ?*OR2-whip[11]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[10]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[10]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[11]-salience* = 0)
(defglobal ?*OR3-forcing-whip[11]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[11]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[11]-salience* = 0)
(defglobal ?*OR3-contrad-whip[11]-salience* = 0)

(defglobal ?*activate-OR3-whip[11]-salience* = 0)
(defglobal ?*OR3-whip[11]-salience-1* = 0)
(defglobal ?*OR3-whip[11]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[10]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[10]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[11]-salience* = 0)
(defglobal ?*OR4-forcing-whip[11]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[11]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[11]-salience* = 0)
(defglobal ?*OR4-contrad-whip[11]-salience* = 0)

(defglobal ?*activate-OR4-whip[11]-salience* = 0)
(defglobal ?*OR4-whip[11]-salience-1* = 0)
(defglobal ?*OR4-whip[11]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[10]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[10]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[11]-salience* = 0)
(defglobal ?*OR5-forcing-whip[11]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[11]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[11]-salience* = 0)
(defglobal ?*OR5-contrad-whip[11]-salience* = 0)

(defglobal ?*activate-OR5-whip[11]-salience* = 0)
(defglobal ?*OR5-whip[11]-salience-1* = 0)
(defglobal ?*OR5-whip[11]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[10]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[10]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[11]-salience* = 0)
(defglobal ?*OR6-forcing-whip[11]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[11]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[11]-salience* = 0)
(defglobal ?*OR6-contrad-whip[11]-salience* = 0)

(defglobal ?*activate-OR6-whip[11]-salience* = 0)
(defglobal ?*OR6-whip[11]-salience-1* = 0)
(defglobal ?*OR6-whip[11]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[10]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[10]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[11]-salience* = 0)
(defglobal ?*OR7-forcing-whip[11]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[11]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[11]-salience* = 0)
(defglobal ?*OR7-contrad-whip[11]-salience* = 0)

(defglobal ?*activate-OR7-whip[11]-salience* = 0)
(defglobal ?*OR7-whip[11]-salience-1* = 0)
(defglobal ?*OR7-whip[11]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[10]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[10]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[11]-salience* = 0)
(defglobal ?*OR8-forcing-whip[11]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[11]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[11]-salience* = 0)
(defglobal ?*OR8-contrad-whip[11]-salience* = 0)

(defglobal ?*activate-OR8-whip[11]-salience* = 0)
(defglobal ?*OR8-whip[11]-salience-1* = 0)
(defglobal ?*OR8-whip[11]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[10]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[10]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[11]-salience* = 0)
(defglobal ?*forcing-whip[11]-value-salience* = 0)
(defglobal ?*forcing-whip[11]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[11]-salience* = 0)
(defglobal ?*forcing-gwhip[11]-value-salience* = 0)
(defglobal ?*forcing-gwhip[11]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[11]-salience* = 0)
(defglobal ?*forcing-braid[11]-value-salience* = 0)
(defglobal ?*forcing-braid[11]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[11]-salience* = 0)
(defglobal ?*forcing-gbraid[11]-value-salience* = 0)
(defglobal ?*forcing-gbraid[11]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[11]]-salience* = 0)
(defglobal ?*w*-whip[[11]]-salience* = 0)
(defglobal ?*partial-w*-whip[[10]]-salience* = 0)

(defglobal ?*activate-b*-braid[[11]]-salience* = 0)
(defglobal ?*b*-braid[[11]]-salience* = 0)
(defglobal ?*partial-b*-braid[[10]]-salience* = 0)

(defglobal ?*activate-biwhip[11]-salience* = 0)
(defglobal ?*biwhip[11]-salience* = 0)
(defglobal ?*partial-biwhip[10]-salience* = 0)

(defglobal ?*activate-bibraid[11]-salience* = 0)
(defglobal ?*bibraid[11]-salience* = 0)
(defglobal ?*partial-bibraid[10]-salience* = 0)

(deffunction define-generic-saliences-at-L11 ()
   (bind ?*activate-typed-bivalue-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-oddagon[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*oddagon[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-oddagon[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*activate-anti-oddagon[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*anti-oddagon[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-anti-oddagon[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[11] can be applied before all the typed-t-whips[11] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 11 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[11] can be applied before all the t-whips[11] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 11 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[10]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[10]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[10]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[10]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[10]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[10]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[11]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[11]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[11]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[11]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[10]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[11]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[11]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[10]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[10]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L12: GENERIC RESOLUTION RULES INVOLVING 12 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L12-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[12]-salience* = 0)
(defglobal ?*typed-bivalue-chain[12]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[12]-salience* = 0)

(defglobal ?*activate-bivalue-chain[12]-salience* = 0)
(defglobal ?*bivalue-chain[12]-salience* = 0)
(defglobal ?*partial-bivalue-chain[12]-salience* = 0)

(defglobal ?*activate-typed-z-chain[12]-salience* = 0)
(defglobal ?*typed-z-chain[12]-salience* = 0)
(defglobal ?*typed-partial-z-chain[12]-salience* = 0)

(defglobal ?*activate-z-chain[12]-salience* = 0)
(defglobal ?*z-chain[12]-salience* = 0)
(defglobal ?*partial-z-chain[12]-salience* = 0)

(defglobal ?*activate-typed-t-whip[12]-salience* = 0)
(defglobal ?*typed-t-whip[12]-salience* = 0)

(defglobal ?*activate-t-whip[12]-salience* = 0)
(defglobal ?*t-whip[12]-salience* = 0)

(defglobal ?*activate-typed-whip[12]-salience* = 0)
(defglobal ?*typed-whip[12]-salience* = 0)
(defglobal ?*typed-partial-whip[11]-salience* = 0)

(defglobal ?*activate-whip[12]-salience* = 0)
(defglobal ?*whip[12]-salience* = 0)
(defglobal ?*partial-whip[11]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[12]-salience* = 0)
(defglobal ?*g-bivalue-chain[12]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[12]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[12]-salience-2* = 0)

(defglobal ?*activate-g2whip[12]-salience* = 0)
(defglobal ?*g2whip[12]-salience* = 0)
(defglobal ?*partial-g2whip[11]-salience-1* = 0)
(defglobal ?*partial-g2whip[11]-salience-2* = 0)
(defglobal ?*partial-g2whip[11]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[12]-salience* = 0)
(defglobal ?*typed-gwhip[12]-salience* = 0)
(defglobal ?*typed-partial-gwhip[11]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[11]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[11]-salience-3* = 0)

(defglobal ?*activate-gwhip[12]-salience* = 0)
(defglobal ?*gwhip[12]-salience* = 0)
(defglobal ?*partial-gwhip[11]-salience-1* = 0)
(defglobal ?*partial-gwhip[11]-salience-2* = 0)
(defglobal ?*partial-gwhip[11]-salience-3* = 0)

(defglobal ?*activate-braid[12]-salience* = 0)
(defglobal ?*braid[12]-salience* = 0)
(defglobal ?*partial-braid[11]-salience* = 0)

(defglobal ?*activate-gbraid[12]-salience* = 0)
(defglobal ?*gbraid[12]-salience* = 0)
(defglobal ?*partial-gbraid[11]-salience-1* = 0)
(defglobal ?*partial-gbraid[11]-salience-2* = 0)
(defglobal ?*partial-gbraid[11]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[12]-salience* = 0)
(defglobal ?*OR2-forcing-whip[12]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[12]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[12]-salience* = 0)
(defglobal ?*OR2-contrad-whip[12]-salience* = 0)

(defglobal ?*activate-OR2-whip[12]-salience* = 0)
(defglobal ?*OR2-whip[12]-salience-1* = 0)
(defglobal ?*OR2-whip[12]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[11]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[11]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[12]-salience* = 0)
(defglobal ?*OR3-forcing-whip[12]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[12]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[12]-salience* = 0)
(defglobal ?*OR3-contrad-whip[12]-salience* = 0)

(defglobal ?*activate-OR3-whip[12]-salience* = 0)
(defglobal ?*OR3-whip[12]-salience-1* = 0)
(defglobal ?*OR3-whip[12]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[11]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[11]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[12]-salience* = 0)
(defglobal ?*OR4-forcing-whip[12]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[12]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[12]-salience* = 0)
(defglobal ?*OR4-contrad-whip[12]-salience* = 0)

(defglobal ?*activate-OR4-whip[12]-salience* = 0)
(defglobal ?*OR4-whip[12]-salience-1* = 0)
(defglobal ?*OR4-whip[12]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[11]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[11]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[12]-salience* = 0)
(defglobal ?*OR5-forcing-whip[12]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[12]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[12]-salience* = 0)
(defglobal ?*OR5-contrad-whip[12]-salience* = 0)

(defglobal ?*activate-OR5-whip[12]-salience* = 0)
(defglobal ?*OR5-whip[12]-salience-1* = 0)
(defglobal ?*OR5-whip[12]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[11]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[11]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[12]-salience* = 0)
(defglobal ?*OR6-forcing-whip[12]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[12]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[12]-salience* = 0)
(defglobal ?*OR6-contrad-whip[12]-salience* = 0)

(defglobal ?*activate-OR6-whip[12]-salience* = 0)
(defglobal ?*OR6-whip[12]-salience-1* = 0)
(defglobal ?*OR6-whip[12]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[11]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[11]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[12]-salience* = 0)
(defglobal ?*OR7-forcing-whip[12]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[12]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[12]-salience* = 0)
(defglobal ?*OR7-contrad-whip[12]-salience* = 0)

(defglobal ?*activate-OR7-whip[12]-salience* = 0)
(defglobal ?*OR7-whip[12]-salience-1* = 0)
(defglobal ?*OR7-whip[12]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[11]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[11]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[12]-salience* = 0)
(defglobal ?*OR8-forcing-whip[12]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[12]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[12]-salience* = 0)
(defglobal ?*OR8-contrad-whip[12]-salience* = 0)

(defglobal ?*activate-OR8-whip[12]-salience* = 0)
(defglobal ?*OR8-whip[12]-salience-1* = 0)
(defglobal ?*OR8-whip[12]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[11]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[11]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[12]-salience* = 0)
(defglobal ?*forcing-whip[12]-value-salience* = 0)
(defglobal ?*forcing-whip[12]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[12]-salience* = 0)
(defglobal ?*forcing-gwhip[12]-value-salience* = 0)
(defglobal ?*forcing-gwhip[12]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[12]-salience* = 0)
(defglobal ?*forcing-braid[12]-value-salience* = 0)
(defglobal ?*forcing-braid[12]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[12]-salience* = 0)
(defglobal ?*forcing-gbraid[12]-value-salience* = 0)
(defglobal ?*forcing-gbraid[12]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[12]]-salience* = 0)
(defglobal ?*w*-whip[[12]]-salience* = 0)
(defglobal ?*partial-w*-whip[[11]]-salience* = 0)

(defglobal ?*activate-b*-braid[[12]]-salience* = 0)
(defglobal ?*b*-braid[[12]]-salience* = 0)
(defglobal ?*partial-b*-braid[[11]]-salience* = 0)

(defglobal ?*activate-biwhip[12]-salience* = 0)
(defglobal ?*biwhip[12]-salience* = 0)
(defglobal ?*partial-biwhip[11]-salience* = 0)

(defglobal ?*activate-bibraid[12]-salience* = 0)
(defglobal ?*bibraid[12]-salience* = 0)
(defglobal ?*partial-bibraid[11]-salience* = 0)

(deffunction define-generic-saliences-at-L12 ()
   (bind ?*activate-typed-bivalue-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[12] can be applied before all the typed-t-whips[12] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 12 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[12] can be applied before all the t-whips[12] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 12 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[11]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[11]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[11]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[11]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[11]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[11]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[12]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[12]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[12]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[12]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[11]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[12]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[12]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[11]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[11]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L13: GENERIC RESOLUTION RULES INVOLVING 13 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L13-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[13]-salience* = 0)
(defglobal ?*typed-bivalue-chain[13]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[13]-salience* = 0)

(defglobal ?*activate-bivalue-chain[13]-salience* = 0)
(defglobal ?*bivalue-chain[13]-salience* = 0)
(defglobal ?*partial-bivalue-chain[13]-salience* = 0)

(defglobal ?*activate-typed-z-chain[13]-salience* = 0)
(defglobal ?*typed-z-chain[13]-salience* = 0)
(defglobal ?*typed-partial-z-chain[13]-salience* = 0)

(defglobal ?*activate-z-chain[13]-salience* = 0)
(defglobal ?*z-chain[13]-salience* = 0)
(defglobal ?*partial-z-chain[13]-salience* = 0)

(defglobal ?*activate-oddagon[13]-salience* = 0)
(defglobal ?*oddagon[13]-salience* = 0)
(defglobal ?*partial-oddagon[12]-salience* = 0)
(defglobal ?*activate-anti-oddagon[13]-salience* = 0)
(defglobal ?*anti-oddagon[13]-salience* = 0)
(defglobal ?*partial-anti-oddagon[12]-salience* = 0)

(defglobal ?*activate-typed-t-whip[13]-salience* = 0)
(defglobal ?*typed-t-whip[13]-salience* = 0)

(defglobal ?*activate-t-whip[13]-salience* = 0)
(defglobal ?*t-whip[13]-salience* = 0)

(defglobal ?*activate-typed-whip[13]-salience* = 0)
(defglobal ?*typed-whip[13]-salience* = 0)
(defglobal ?*typed-partial-whip[12]-salience* = 0)

(defglobal ?*activate-whip[13]-salience* = 0)
(defglobal ?*whip[13]-salience* = 0)
(defglobal ?*partial-whip[12]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[13]-salience* = 0)
(defglobal ?*g-bivalue-chain[13]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[13]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[13]-salience-2* = 0)

(defglobal ?*activate-g2whip[13]-salience* = 0)
(defglobal ?*g2whip[13]-salience* = 0)
(defglobal ?*partial-g2whip[12]-salience-1* = 0)
(defglobal ?*partial-g2whip[12]-salience-2* = 0)
(defglobal ?*partial-g2whip[12]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[13]-salience* = 0)
(defglobal ?*typed-gwhip[13]-salience* = 0)
(defglobal ?*typed-partial-gwhip[12]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[12]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[12]-salience-3* = 0)

(defglobal ?*activate-gwhip[13]-salience* = 0)
(defglobal ?*gwhip[13]-salience* = 0)
(defglobal ?*partial-gwhip[12]-salience-1* = 0)
(defglobal ?*partial-gwhip[12]-salience-2* = 0)
(defglobal ?*partial-gwhip[12]-salience-3* = 0)

(defglobal ?*activate-braid[13]-salience* = 0)
(defglobal ?*braid[13]-salience* = 0)
(defglobal ?*partial-braid[12]-salience* = 0)

(defglobal ?*activate-gbraid[13]-salience* = 0)
(defglobal ?*gbraid[13]-salience* = 0)
(defglobal ?*partial-gbraid[12]-salience-1* = 0)
(defglobal ?*partial-gbraid[12]-salience-2* = 0)
(defglobal ?*partial-gbraid[12]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[13]-salience* = 0)
(defglobal ?*OR2-forcing-whip[13]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[13]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[13]-salience* = 0)
(defglobal ?*OR2-contrad-whip[13]-salience* = 0)

(defglobal ?*activate-OR2-whip[13]-salience* = 0)
(defglobal ?*OR2-whip[13]-salience-1* = 0)
(defglobal ?*OR2-whip[13]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[12]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[12]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[13]-salience* = 0)
(defglobal ?*OR3-forcing-whip[13]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[13]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[13]-salience* = 0)
(defglobal ?*OR3-contrad-whip[13]-salience* = 0)

(defglobal ?*activate-OR3-whip[13]-salience* = 0)
(defglobal ?*OR3-whip[13]-salience-1* = 0)
(defglobal ?*OR3-whip[13]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[12]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[12]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[13]-salience* = 0)
(defglobal ?*OR4-forcing-whip[13]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[13]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[13]-salience* = 0)
(defglobal ?*OR4-contrad-whip[13]-salience* = 0)

(defglobal ?*activate-OR4-whip[13]-salience* = 0)
(defglobal ?*OR4-whip[13]-salience-1* = 0)
(defglobal ?*OR4-whip[13]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[12]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[12]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[13]-salience* = 0)
(defglobal ?*OR5-forcing-whip[13]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[13]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[13]-salience* = 0)
(defglobal ?*OR5-contrad-whip[13]-salience* = 0)

(defglobal ?*activate-OR5-whip[13]-salience* = 0)
(defglobal ?*OR5-whip[13]-salience-1* = 0)
(defglobal ?*OR5-whip[13]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[12]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[12]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[13]-salience* = 0)
(defglobal ?*OR6-forcing-whip[13]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[13]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[13]-salience* = 0)
(defglobal ?*OR6-contrad-whip[13]-salience* = 0)

(defglobal ?*activate-OR6-whip[13]-salience* = 0)
(defglobal ?*OR6-whip[13]-salience-1* = 0)
(defglobal ?*OR6-whip[13]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[12]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[12]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[13]-salience* = 0)
(defglobal ?*OR7-forcing-whip[13]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[13]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[13]-salience* = 0)
(defglobal ?*OR7-contrad-whip[13]-salience* = 0)

(defglobal ?*activate-OR7-whip[13]-salience* = 0)
(defglobal ?*OR7-whip[13]-salience-1* = 0)
(defglobal ?*OR7-whip[13]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[12]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[12]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[13]-salience* = 0)
(defglobal ?*OR8-forcing-whip[13]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[13]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[13]-salience* = 0)
(defglobal ?*OR8-contrad-whip[13]-salience* = 0)

(defglobal ?*activate-OR8-whip[13]-salience* = 0)
(defglobal ?*OR8-whip[13]-salience-1* = 0)
(defglobal ?*OR8-whip[13]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[12]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[12]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[13]-salience* = 0)
(defglobal ?*forcing-whip[13]-value-salience* = 0)
(defglobal ?*forcing-whip[13]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[13]-salience* = 0)
(defglobal ?*forcing-gwhip[13]-value-salience* = 0)
(defglobal ?*forcing-gwhip[13]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[13]-salience* = 0)
(defglobal ?*forcing-braid[13]-value-salience* = 0)
(defglobal ?*forcing-braid[13]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[13]-salience* = 0)
(defglobal ?*forcing-gbraid[13]-value-salience* = 0)
(defglobal ?*forcing-gbraid[13]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[13]]-salience* = 0)
(defglobal ?*w*-whip[[13]]-salience* = 0)
(defglobal ?*partial-w*-whip[[12]]-salience* = 0)

(defglobal ?*activate-b*-braid[[13]]-salience* = 0)
(defglobal ?*b*-braid[[13]]-salience* = 0)
(defglobal ?*partial-b*-braid[[12]]-salience* = 0)

(defglobal ?*activate-biwhip[13]-salience* = 0)
(defglobal ?*biwhip[13]-salience* = 0)
(defglobal ?*partial-biwhip[12]-salience* = 0)

(defglobal ?*activate-bibraid[13]-salience* = 0)
(defglobal ?*bibraid[13]-salience* = 0)
(defglobal ?*partial-bibraid[12]-salience* = 0)

(deffunction define-generic-saliences-at-L13 ()
   (bind ?*activate-typed-bivalue-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-oddagon[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*oddagon[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-oddagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*activate-anti-oddagon[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*anti-oddagon[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-anti-oddagon[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[13] can be applied before all the typed-t-whips[13] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 13 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[13] can be applied before all the t-whips[13] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 13 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[12]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[12]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[12]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[12]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[12]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[12]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[13]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[13]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[13]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[13]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[12]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[13]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[13]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[12]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[12]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L14: GENERIC RESOLUTION RULES INVOLVING 14 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L14-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[14]-salience* = 0)
(defglobal ?*typed-bivalue-chain[14]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[14]-salience* = 0)

(defglobal ?*activate-bivalue-chain[14]-salience* = 0)
(defglobal ?*bivalue-chain[14]-salience* = 0)
(defglobal ?*partial-bivalue-chain[14]-salience* = 0)

(defglobal ?*activate-typed-z-chain[14]-salience* = 0)
(defglobal ?*typed-z-chain[14]-salience* = 0)
(defglobal ?*typed-partial-z-chain[14]-salience* = 0)

(defglobal ?*activate-z-chain[14]-salience* = 0)
(defglobal ?*z-chain[14]-salience* = 0)
(defglobal ?*partial-z-chain[14]-salience* = 0)

(defglobal ?*activate-typed-t-whip[14]-salience* = 0)
(defglobal ?*typed-t-whip[14]-salience* = 0)

(defglobal ?*activate-t-whip[14]-salience* = 0)
(defglobal ?*t-whip[14]-salience* = 0)

(defglobal ?*activate-typed-whip[14]-salience* = 0)
(defglobal ?*typed-whip[14]-salience* = 0)
(defglobal ?*typed-partial-whip[13]-salience* = 0)

(defglobal ?*activate-whip[14]-salience* = 0)
(defglobal ?*whip[14]-salience* = 0)
(defglobal ?*partial-whip[13]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[14]-salience* = 0)
(defglobal ?*g-bivalue-chain[14]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[14]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[14]-salience-2* = 0)

(defglobal ?*activate-g2whip[14]-salience* = 0)
(defglobal ?*g2whip[14]-salience* = 0)
(defglobal ?*partial-g2whip[13]-salience-1* = 0)
(defglobal ?*partial-g2whip[13]-salience-2* = 0)
(defglobal ?*partial-g2whip[13]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[14]-salience* = 0)
(defglobal ?*typed-gwhip[14]-salience* = 0)
(defglobal ?*typed-partial-gwhip[13]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[13]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[13]-salience-3* = 0)

(defglobal ?*activate-gwhip[14]-salience* = 0)
(defglobal ?*gwhip[14]-salience* = 0)
(defglobal ?*partial-gwhip[13]-salience-1* = 0)
(defglobal ?*partial-gwhip[13]-salience-2* = 0)
(defglobal ?*partial-gwhip[13]-salience-3* = 0)

(defglobal ?*activate-braid[14]-salience* = 0)
(defglobal ?*braid[14]-salience* = 0)
(defglobal ?*partial-braid[13]-salience* = 0)

(defglobal ?*activate-gbraid[14]-salience* = 0)
(defglobal ?*gbraid[14]-salience* = 0)
(defglobal ?*partial-gbraid[13]-salience-1* = 0)
(defglobal ?*partial-gbraid[13]-salience-2* = 0)
(defglobal ?*partial-gbraid[13]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[14]-salience* = 0)
(defglobal ?*OR2-forcing-whip[14]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[14]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[14]-salience* = 0)
(defglobal ?*OR2-contrad-whip[14]-salience* = 0)

(defglobal ?*activate-OR2-whip[14]-salience* = 0)
(defglobal ?*OR2-whip[14]-salience-1* = 0)
(defglobal ?*OR2-whip[14]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[13]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[13]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[14]-salience* = 0)
(defglobal ?*OR3-forcing-whip[14]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[14]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[14]-salience* = 0)
(defglobal ?*OR3-contrad-whip[14]-salience* = 0)

(defglobal ?*activate-OR3-whip[14]-salience* = 0)
(defglobal ?*OR3-whip[14]-salience-1* = 0)
(defglobal ?*OR3-whip[14]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[13]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[13]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[14]-salience* = 0)
(defglobal ?*OR4-forcing-whip[14]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[14]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[14]-salience* = 0)
(defglobal ?*OR4-contrad-whip[14]-salience* = 0)

(defglobal ?*activate-OR4-whip[14]-salience* = 0)
(defglobal ?*OR4-whip[14]-salience-1* = 0)
(defglobal ?*OR4-whip[14]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[13]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[13]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[14]-salience* = 0)
(defglobal ?*OR5-forcing-whip[14]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[14]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[14]-salience* = 0)
(defglobal ?*OR5-contrad-whip[14]-salience* = 0)

(defglobal ?*activate-OR5-whip[14]-salience* = 0)
(defglobal ?*OR5-whip[14]-salience-1* = 0)
(defglobal ?*OR5-whip[14]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[13]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[13]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[14]-salience* = 0)
(defglobal ?*OR6-forcing-whip[14]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[14]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[14]-salience* = 0)
(defglobal ?*OR6-contrad-whip[14]-salience* = 0)

(defglobal ?*activate-OR6-whip[14]-salience* = 0)
(defglobal ?*OR6-whip[14]-salience-1* = 0)
(defglobal ?*OR6-whip[14]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[13]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[13]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[14]-salience* = 0)
(defglobal ?*OR7-forcing-whip[14]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[14]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[14]-salience* = 0)
(defglobal ?*OR7-contrad-whip[14]-salience* = 0)

(defglobal ?*activate-OR7-whip[14]-salience* = 0)
(defglobal ?*OR7-whip[14]-salience-1* = 0)
(defglobal ?*OR7-whip[14]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[13]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[13]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[14]-salience* = 0)
(defglobal ?*OR8-forcing-whip[14]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[14]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[14]-salience* = 0)
(defglobal ?*OR8-contrad-whip[14]-salience* = 0)

(defglobal ?*activate-OR8-whip[14]-salience* = 0)
(defglobal ?*OR8-whip[14]-salience-1* = 0)
(defglobal ?*OR8-whip[14]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[13]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[13]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[14]-salience* = 0)
(defglobal ?*forcing-whip[14]-value-salience* = 0)
(defglobal ?*forcing-whip[14]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[14]-salience* = 0)
(defglobal ?*forcing-gwhip[14]-value-salience* = 0)
(defglobal ?*forcing-gwhip[14]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[14]-salience* = 0)
(defglobal ?*forcing-braid[14]-value-salience* = 0)
(defglobal ?*forcing-braid[14]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[14]-salience* = 0)
(defglobal ?*forcing-gbraid[14]-value-salience* = 0)
(defglobal ?*forcing-gbraid[14]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[14]]-salience* = 0)
(defglobal ?*w*-whip[[14]]-salience* = 0)
(defglobal ?*partial-w*-whip[[13]]-salience* = 0)

(defglobal ?*activate-b*-braid[[14]]-salience* = 0)
(defglobal ?*b*-braid[[14]]-salience* = 0)
(defglobal ?*partial-b*-braid[[13]]-salience* = 0)

(defglobal ?*activate-biwhip[14]-salience* = 0)
(defglobal ?*biwhip[14]-salience* = 0)
(defglobal ?*partial-biwhip[13]-salience* = 0)

(defglobal ?*activate-bibraid[14]-salience* = 0)
(defglobal ?*bibraid[14]-salience* = 0)
(defglobal ?*partial-bibraid[13]-salience* = 0)

(deffunction define-generic-saliences-at-L14 ()
   (bind ?*activate-typed-bivalue-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[14] can be applied before all the typed-t-whips[14] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 14 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[14] can be applied before all the t-whips[14] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 14 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[13]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[13]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[13]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[13]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[13]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[13]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[14]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[14]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[14]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[14]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[13]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[14]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[14]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[13]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[13]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L15: GENERIC RESOLUTION RULES INVOLVING 15 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L15-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[15]-salience* = 0)
(defglobal ?*typed-bivalue-chain[15]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[15]-salience* = 0)

(defglobal ?*activate-bivalue-chain[15]-salience* = 0)
(defglobal ?*bivalue-chain[15]-salience* = 0)
(defglobal ?*partial-bivalue-chain[15]-salience* = 0)

(defglobal ?*activate-typed-z-chain[15]-salience* = 0)
(defglobal ?*typed-z-chain[15]-salience* = 0)
(defglobal ?*typed-partial-z-chain[15]-salience* = 0)

(defglobal ?*activate-z-chain[15]-salience* = 0)
(defglobal ?*z-chain[15]-salience* = 0)
(defglobal ?*partial-z-chain[15]-salience* = 0)

(defglobal ?*activate-oddagon[15]-salience* = 0)
(defglobal ?*oddagon[15]-salience* = 0)
(defglobal ?*partial-oddagon[14]-salience* = 0)
(defglobal ?*activate-anti-oddagon[15]-salience* = 0)
(defglobal ?*anti-oddagon[15]-salience* = 0)
(defglobal ?*partial-anti-oddagon[14]-salience* = 0)

(defglobal ?*activate-typed-t-whip[15]-salience* = 0)
(defglobal ?*typed-t-whip[15]-salience* = 0)

(defglobal ?*activate-t-whip[15]-salience* = 0)
(defglobal ?*t-whip[15]-salience* = 0)

(defglobal ?*activate-typed-whip[15]-salience* = 0)
(defglobal ?*typed-whip[15]-salience* = 0)
(defglobal ?*typed-partial-whip[14]-salience* = 0)

(defglobal ?*activate-whip[15]-salience* = 0)
(defglobal ?*whip[15]-salience* = 0)
(defglobal ?*partial-whip[14]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[15]-salience* = 0)
(defglobal ?*g-bivalue-chain[15]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[15]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[15]-salience-2* = 0)

(defglobal ?*activate-g2whip[15]-salience* = 0)
(defglobal ?*g2whip[15]-salience* = 0)
(defglobal ?*partial-g2whip[14]-salience-1* = 0)
(defglobal ?*partial-g2whip[14]-salience-2* = 0)
(defglobal ?*partial-g2whip[14]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[15]-salience* = 0)
(defglobal ?*typed-gwhip[15]-salience* = 0)
(defglobal ?*typed-partial-gwhip[14]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[14]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[14]-salience-3* = 0)

(defglobal ?*activate-gwhip[15]-salience* = 0)
(defglobal ?*gwhip[15]-salience* = 0)
(defglobal ?*partial-gwhip[14]-salience-1* = 0)
(defglobal ?*partial-gwhip[14]-salience-2* = 0)
(defglobal ?*partial-gwhip[14]-salience-3* = 0)

(defglobal ?*activate-braid[15]-salience* = 0)
(defglobal ?*braid[15]-salience* = 0)
(defglobal ?*partial-braid[14]-salience* = 0)

(defglobal ?*activate-gbraid[15]-salience* = 0)
(defglobal ?*gbraid[15]-salience* = 0)
(defglobal ?*partial-gbraid[14]-salience-1* = 0)
(defglobal ?*partial-gbraid[14]-salience-2* = 0)
(defglobal ?*partial-gbraid[14]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[15]-salience* = 0)
(defglobal ?*OR2-forcing-whip[15]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[15]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[15]-salience* = 0)
(defglobal ?*OR2-contrad-whip[15]-salience* = 0)

(defglobal ?*activate-OR2-whip[15]-salience* = 0)
(defglobal ?*OR2-whip[15]-salience-1* = 0)
(defglobal ?*OR2-whip[15]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[14]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[14]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[15]-salience* = 0)
(defglobal ?*OR3-forcing-whip[15]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[15]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[15]-salience* = 0)
(defglobal ?*OR3-contrad-whip[15]-salience* = 0)

(defglobal ?*activate-OR3-whip[15]-salience* = 0)
(defglobal ?*OR3-whip[15]-salience-1* = 0)
(defglobal ?*OR3-whip[15]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[14]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[14]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[15]-salience* = 0)
(defglobal ?*OR4-forcing-whip[15]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[15]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[15]-salience* = 0)
(defglobal ?*OR4-contrad-whip[15]-salience* = 0)

(defglobal ?*activate-OR4-whip[15]-salience* = 0)
(defglobal ?*OR4-whip[15]-salience-1* = 0)
(defglobal ?*OR4-whip[15]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[14]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[14]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[15]-salience* = 0)
(defglobal ?*OR5-forcing-whip[15]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[15]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[15]-salience* = 0)
(defglobal ?*OR5-contrad-whip[15]-salience* = 0)

(defglobal ?*activate-OR5-whip[15]-salience* = 0)
(defglobal ?*OR5-whip[15]-salience-1* = 0)
(defglobal ?*OR5-whip[15]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[14]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[14]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[15]-salience* = 0)
(defglobal ?*OR6-forcing-whip[15]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[15]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[15]-salience* = 0)
(defglobal ?*OR6-contrad-whip[15]-salience* = 0)

(defglobal ?*activate-OR6-whip[15]-salience* = 0)
(defglobal ?*OR6-whip[15]-salience-1* = 0)
(defglobal ?*OR6-whip[15]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[14]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[14]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[15]-salience* = 0)
(defglobal ?*OR7-forcing-whip[15]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[15]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[15]-salience* = 0)
(defglobal ?*OR7-contrad-whip[15]-salience* = 0)

(defglobal ?*activate-OR7-whip[15]-salience* = 0)
(defglobal ?*OR7-whip[15]-salience-1* = 0)
(defglobal ?*OR7-whip[15]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[14]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[14]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[15]-salience* = 0)
(defglobal ?*OR8-forcing-whip[15]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[15]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[15]-salience* = 0)
(defglobal ?*OR8-contrad-whip[15]-salience* = 0)

(defglobal ?*activate-OR8-whip[15]-salience* = 0)
(defglobal ?*OR8-whip[15]-salience-1* = 0)
(defglobal ?*OR8-whip[15]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[14]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[14]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[15]-salience* = 0)
(defglobal ?*forcing-whip[15]-value-salience* = 0)
(defglobal ?*forcing-whip[15]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[15]-salience* = 0)
(defglobal ?*forcing-gwhip[15]-value-salience* = 0)
(defglobal ?*forcing-gwhip[15]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[15]-salience* = 0)
(defglobal ?*forcing-braid[15]-value-salience* = 0)
(defglobal ?*forcing-braid[15]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[15]-salience* = 0)
(defglobal ?*forcing-gbraid[15]-value-salience* = 0)
(defglobal ?*forcing-gbraid[15]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[15]]-salience* = 0)
(defglobal ?*w*-whip[[15]]-salience* = 0)
(defglobal ?*partial-w*-whip[[14]]-salience* = 0)

(defglobal ?*activate-b*-braid[[15]]-salience* = 0)
(defglobal ?*b*-braid[[15]]-salience* = 0)
(defglobal ?*partial-b*-braid[[14]]-salience* = 0)

(defglobal ?*activate-biwhip[15]-salience* = 0)
(defglobal ?*biwhip[15]-salience* = 0)
(defglobal ?*partial-biwhip[14]-salience* = 0)

(defglobal ?*activate-bibraid[15]-salience* = 0)
(defglobal ?*bibraid[15]-salience* = 0)
(defglobal ?*partial-bibraid[14]-salience* = 0)

(deffunction define-generic-saliences-at-L15 ()
   (bind ?*activate-typed-bivalue-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-oddagon[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*oddagon[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-oddagon[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*activate-anti-oddagon[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*anti-oddagon[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-anti-oddagon[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[15] can be applied before all the typed-t-whips[15] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 15 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[15] can be applied before all the t-whips[15] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 15 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[14]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[14]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[14]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[14]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[14]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[14]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[15]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[15]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[15]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[15]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[14]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[15]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[15]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[14]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[14]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L16: GENERIC RESOLUTION RULES INVOLVING 16 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L16-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[16]-salience* = 0)
(defglobal ?*typed-bivalue-chain[16]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[16]-salience* = 0)

(defglobal ?*activate-bivalue-chain[16]-salience* = 0)
(defglobal ?*bivalue-chain[16]-salience* = 0)
(defglobal ?*partial-bivalue-chain[16]-salience* = 0)

(defglobal ?*activate-typed-z-chain[16]-salience* = 0)
(defglobal ?*typed-z-chain[16]-salience* = 0)
(defglobal ?*typed-partial-z-chain[16]-salience* = 0)

(defglobal ?*activate-z-chain[16]-salience* = 0)
(defglobal ?*z-chain[16]-salience* = 0)
(defglobal ?*partial-z-chain[16]-salience* = 0)

(defglobal ?*activate-typed-t-whip[16]-salience* = 0)
(defglobal ?*typed-t-whip[16]-salience* = 0)

(defglobal ?*activate-t-whip[16]-salience* = 0)
(defglobal ?*t-whip[16]-salience* = 0)

(defglobal ?*activate-typed-whip[16]-salience* = 0)
(defglobal ?*typed-whip[16]-salience* = 0)
(defglobal ?*typed-partial-whip[15]-salience* = 0)

(defglobal ?*activate-whip[16]-salience* = 0)
(defglobal ?*whip[16]-salience* = 0)
(defglobal ?*partial-whip[15]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[16]-salience* = 0)
(defglobal ?*g-bivalue-chain[16]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[16]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[16]-salience-2* = 0)

(defglobal ?*activate-g2whip[16]-salience* = 0)
(defglobal ?*g2whip[16]-salience* = 0)
(defglobal ?*partial-g2whip[15]-salience-1* = 0)
(defglobal ?*partial-g2whip[15]-salience-2* = 0)
(defglobal ?*partial-g2whip[15]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[16]-salience* = 0)
(defglobal ?*typed-gwhip[16]-salience* = 0)
(defglobal ?*typed-partial-gwhip[15]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[15]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[15]-salience-3* = 0)

(defglobal ?*activate-gwhip[16]-salience* = 0)
(defglobal ?*gwhip[16]-salience* = 0)
(defglobal ?*partial-gwhip[15]-salience-1* = 0)
(defglobal ?*partial-gwhip[15]-salience-2* = 0)
(defglobal ?*partial-gwhip[15]-salience-3* = 0)

(defglobal ?*activate-braid[16]-salience* = 0)
(defglobal ?*braid[16]-salience* = 0)
(defglobal ?*partial-braid[15]-salience* = 0)

(defglobal ?*activate-gbraid[16]-salience* = 0)
(defglobal ?*gbraid[16]-salience* = 0)
(defglobal ?*partial-gbraid[15]-salience-1* = 0)
(defglobal ?*partial-gbraid[15]-salience-2* = 0)
(defglobal ?*partial-gbraid[15]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[16]-salience* = 0)
(defglobal ?*OR2-forcing-whip[16]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[16]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[16]-salience* = 0)
(defglobal ?*OR2-contrad-whip[16]-salience* = 0)

(defglobal ?*activate-OR2-whip[16]-salience* = 0)
(defglobal ?*OR2-whip[16]-salience-1* = 0)
(defglobal ?*OR2-whip[16]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[15]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[15]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[16]-salience* = 0)
(defglobal ?*OR3-forcing-whip[16]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[16]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[16]-salience* = 0)
(defglobal ?*OR3-contrad-whip[16]-salience* = 0)

(defglobal ?*activate-OR3-whip[16]-salience* = 0)
(defglobal ?*OR3-whip[16]-salience-1* = 0)
(defglobal ?*OR3-whip[16]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[15]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[15]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[16]-salience* = 0)
(defglobal ?*OR4-forcing-whip[16]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[16]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[16]-salience* = 0)
(defglobal ?*OR4-contrad-whip[16]-salience* = 0)

(defglobal ?*activate-OR4-whip[16]-salience* = 0)
(defglobal ?*OR4-whip[16]-salience-1* = 0)
(defglobal ?*OR4-whip[16]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[15]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[15]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[16]-salience* = 0)
(defglobal ?*OR5-forcing-whip[16]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[16]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[16]-salience* = 0)
(defglobal ?*OR5-contrad-whip[16]-salience* = 0)

(defglobal ?*activate-OR5-whip[16]-salience* = 0)
(defglobal ?*OR5-whip[16]-salience-1* = 0)
(defglobal ?*OR5-whip[16]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[15]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[15]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[16]-salience* = 0)
(defglobal ?*OR6-forcing-whip[16]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[16]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[16]-salience* = 0)
(defglobal ?*OR6-contrad-whip[16]-salience* = 0)

(defglobal ?*activate-OR6-whip[16]-salience* = 0)
(defglobal ?*OR6-whip[16]-salience-1* = 0)
(defglobal ?*OR6-whip[16]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[15]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[15]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[16]-salience* = 0)
(defglobal ?*OR7-forcing-whip[16]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[16]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[16]-salience* = 0)
(defglobal ?*OR7-contrad-whip[16]-salience* = 0)

(defglobal ?*activate-OR7-whip[16]-salience* = 0)
(defglobal ?*OR7-whip[16]-salience-1* = 0)
(defglobal ?*OR7-whip[16]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[15]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[15]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[16]-salience* = 0)
(defglobal ?*OR8-forcing-whip[16]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[16]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[16]-salience* = 0)
(defglobal ?*OR8-contrad-whip[16]-salience* = 0)

(defglobal ?*activate-OR8-whip[16]-salience* = 0)
(defglobal ?*OR8-whip[16]-salience-1* = 0)
(defglobal ?*OR8-whip[16]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[15]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[15]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[16]-salience* = 0)
(defglobal ?*forcing-whip[16]-value-salience* = 0)
(defglobal ?*forcing-whip[16]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[16]-salience* = 0)
(defglobal ?*forcing-gwhip[16]-value-salience* = 0)
(defglobal ?*forcing-gwhip[16]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[16]-salience* = 0)
(defglobal ?*forcing-braid[16]-value-salience* = 0)
(defglobal ?*forcing-braid[16]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[16]-salience* = 0)
(defglobal ?*forcing-gbraid[16]-value-salience* = 0)
(defglobal ?*forcing-gbraid[16]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[16]]-salience* = 0)
(defglobal ?*w*-whip[[16]]-salience* = 0)
(defglobal ?*partial-w*-whip[[15]]-salience* = 0)

(defglobal ?*activate-b*-braid[[16]]-salience* = 0)
(defglobal ?*b*-braid[[16]]-salience* = 0)
(defglobal ?*partial-b*-braid[[15]]-salience* = 0)

(defglobal ?*activate-biwhip[16]-salience* = 0)
(defglobal ?*biwhip[16]-salience* = 0)
(defglobal ?*partial-biwhip[15]-salience* = 0)

(defglobal ?*activate-bibraid[16]-salience* = 0)
(defglobal ?*bibraid[16]-salience* = 0)
(defglobal ?*partial-bibraid[15]-salience* = 0)

(deffunction define-generic-saliences-at-L16 ()
   (bind ?*activate-typed-bivalue-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[16] can be applied before all the typed-t-whips[16] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 16 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[16] can be applied before all the t-whips[16] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 16 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[15]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[15]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[15]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[15]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[15]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[15]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[16]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[16]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[16]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[16]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[15]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[16]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[16]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[15]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[15]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L17: GENERIC RESOLUTION RULES INVOLVING 17 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L17-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[17]-salience* = 0)
(defglobal ?*typed-bivalue-chain[17]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[17]-salience* = 0)

(defglobal ?*activate-bivalue-chain[17]-salience* = 0)
(defglobal ?*bivalue-chain[17]-salience* = 0)
(defglobal ?*partial-bivalue-chain[17]-salience* = 0)

(defglobal ?*activate-typed-z-chain[17]-salience* = 0)
(defglobal ?*typed-z-chain[17]-salience* = 0)
(defglobal ?*typed-partial-z-chain[17]-salience* = 0)

(defglobal ?*activate-z-chain[17]-salience* = 0)
(defglobal ?*z-chain[17]-salience* = 0)
(defglobal ?*partial-z-chain[17]-salience* = 0)

(defglobal ?*activate-typed-t-whip[17]-salience* = 0)
(defglobal ?*typed-t-whip[17]-salience* = 0)

(defglobal ?*activate-t-whip[17]-salience* = 0)
(defglobal ?*t-whip[17]-salience* = 0)

(defglobal ?*activate-typed-whip[17]-salience* = 0)
(defglobal ?*typed-whip[17]-salience* = 0)
(defglobal ?*typed-partial-whip[16]-salience* = 0)

(defglobal ?*activate-whip[17]-salience* = 0)
(defglobal ?*whip[17]-salience* = 0)
(defglobal ?*partial-whip[16]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[17]-salience* = 0)
(defglobal ?*g-bivalue-chain[17]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[17]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[17]-salience-2* = 0)

(defglobal ?*activate-g2whip[17]-salience* = 0)
(defglobal ?*g2whip[17]-salience* = 0)
(defglobal ?*partial-g2whip[16]-salience-1* = 0)
(defglobal ?*partial-g2whip[16]-salience-2* = 0)
(defglobal ?*partial-g2whip[16]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[17]-salience* = 0)
(defglobal ?*typed-gwhip[17]-salience* = 0)
(defglobal ?*typed-partial-gwhip[16]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[16]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[16]-salience-3* = 0)

(defglobal ?*activate-gwhip[17]-salience* = 0)
(defglobal ?*gwhip[17]-salience* = 0)
(defglobal ?*partial-gwhip[16]-salience-1* = 0)
(defglobal ?*partial-gwhip[16]-salience-2* = 0)
(defglobal ?*partial-gwhip[16]-salience-3* = 0)

(defglobal ?*activate-braid[17]-salience* = 0)
(defglobal ?*braid[17]-salience* = 0)
(defglobal ?*partial-braid[16]-salience* = 0)

(defglobal ?*activate-gbraid[17]-salience* = 0)
(defglobal ?*gbraid[17]-salience* = 0)
(defglobal ?*partial-gbraid[16]-salience-1* = 0)
(defglobal ?*partial-gbraid[16]-salience-2* = 0)
(defglobal ?*partial-gbraid[16]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[17]-salience* = 0)
(defglobal ?*OR2-forcing-whip[17]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[17]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[17]-salience* = 0)
(defglobal ?*OR2-contrad-whip[17]-salience* = 0)

(defglobal ?*activate-OR2-whip[17]-salience* = 0)
(defglobal ?*OR2-whip[17]-salience-1* = 0)
(defglobal ?*OR2-whip[17]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[16]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[16]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[17]-salience* = 0)
(defglobal ?*OR3-forcing-whip[17]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[17]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[17]-salience* = 0)
(defglobal ?*OR3-contrad-whip[17]-salience* = 0)

(defglobal ?*activate-OR3-whip[17]-salience* = 0)
(defglobal ?*OR3-whip[17]-salience-1* = 0)
(defglobal ?*OR3-whip[17]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[16]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[16]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[17]-salience* = 0)
(defglobal ?*OR4-forcing-whip[17]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[17]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[17]-salience* = 0)
(defglobal ?*OR4-contrad-whip[17]-salience* = 0)

(defglobal ?*activate-OR4-whip[17]-salience* = 0)
(defglobal ?*OR4-whip[17]-salience-1* = 0)
(defglobal ?*OR4-whip[17]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[16]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[16]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[17]-salience* = 0)
(defglobal ?*OR5-forcing-whip[17]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[17]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[17]-salience* = 0)
(defglobal ?*OR5-contrad-whip[17]-salience* = 0)

(defglobal ?*activate-OR5-whip[17]-salience* = 0)
(defglobal ?*OR5-whip[17]-salience-1* = 0)
(defglobal ?*OR5-whip[17]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[16]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[16]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[17]-salience* = 0)
(defglobal ?*OR6-forcing-whip[17]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[17]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[17]-salience* = 0)
(defglobal ?*OR6-contrad-whip[17]-salience* = 0)

(defglobal ?*activate-OR6-whip[17]-salience* = 0)
(defglobal ?*OR6-whip[17]-salience-1* = 0)
(defglobal ?*OR6-whip[17]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[16]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[16]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[17]-salience* = 0)
(defglobal ?*OR7-forcing-whip[17]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[17]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[17]-salience* = 0)
(defglobal ?*OR7-contrad-whip[17]-salience* = 0)

(defglobal ?*activate-OR7-whip[17]-salience* = 0)
(defglobal ?*OR7-whip[17]-salience-1* = 0)
(defglobal ?*OR7-whip[17]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[16]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[16]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[17]-salience* = 0)
(defglobal ?*OR8-forcing-whip[17]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[17]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[17]-salience* = 0)
(defglobal ?*OR8-contrad-whip[17]-salience* = 0)

(defglobal ?*activate-OR8-whip[17]-salience* = 0)
(defglobal ?*OR8-whip[17]-salience-1* = 0)
(defglobal ?*OR8-whip[17]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[16]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[16]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[17]-salience* = 0)
(defglobal ?*forcing-whip[17]-value-salience* = 0)
(defglobal ?*forcing-whip[17]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[17]-salience* = 0)
(defglobal ?*forcing-gwhip[17]-value-salience* = 0)
(defglobal ?*forcing-gwhip[17]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[17]-salience* = 0)
(defglobal ?*forcing-braid[17]-value-salience* = 0)
(defglobal ?*forcing-braid[17]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[17]-salience* = 0)
(defglobal ?*forcing-gbraid[17]-value-salience* = 0)
(defglobal ?*forcing-gbraid[17]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[17]]-salience* = 0)
(defglobal ?*w*-whip[[17]]-salience* = 0)
(defglobal ?*partial-w*-whip[[16]]-salience* = 0)

(defglobal ?*activate-b*-braid[[17]]-salience* = 0)
(defglobal ?*b*-braid[[17]]-salience* = 0)
(defglobal ?*partial-b*-braid[[16]]-salience* = 0)

(defglobal ?*activate-biwhip[17]-salience* = 0)
(defglobal ?*biwhip[17]-salience* = 0)
(defglobal ?*partial-biwhip[16]-salience* = 0)

(defglobal ?*activate-bibraid[17]-salience* = 0)
(defglobal ?*bibraid[17]-salience* = 0)
(defglobal ?*partial-bibraid[16]-salience* = 0)

(deffunction define-generic-saliences-at-L17 ()
   (bind ?*activate-typed-bivalue-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[17] can be applied before all the typed-t-whips[17] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 17 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[17] can be applied before all the t-whips[17] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 17 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[16]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[16]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[16]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[16]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[16]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[16]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[17]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[17]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[17]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[17]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[16]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[17]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[17]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[16]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[16]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L18: GENERIC RESOLUTION RULES INVOLVING 18 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L18-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[18]-salience* = 0)
(defglobal ?*typed-bivalue-chain[18]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[18]-salience* = 0)

(defglobal ?*activate-bivalue-chain[18]-salience* = 0)
(defglobal ?*bivalue-chain[18]-salience* = 0)
(defglobal ?*partial-bivalue-chain[18]-salience* = 0)

(defglobal ?*activate-typed-z-chain[18]-salience* = 0)
(defglobal ?*typed-z-chain[18]-salience* = 0)
(defglobal ?*typed-partial-z-chain[18]-salience* = 0)

(defglobal ?*activate-z-chain[18]-salience* = 0)
(defglobal ?*z-chain[18]-salience* = 0)
(defglobal ?*partial-z-chain[18]-salience* = 0)

(defglobal ?*activate-typed-t-whip[18]-salience* = 0)
(defglobal ?*typed-t-whip[18]-salience* = 0)

(defglobal ?*activate-t-whip[18]-salience* = 0)
(defglobal ?*t-whip[18]-salience* = 0)

(defglobal ?*activate-typed-whip[18]-salience* = 0)
(defglobal ?*typed-whip[18]-salience* = 0)
(defglobal ?*typed-partial-whip[17]-salience* = 0)

(defglobal ?*activate-whip[18]-salience* = 0)
(defglobal ?*whip[18]-salience* = 0)
(defglobal ?*partial-whip[17]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[18]-salience* = 0)
(defglobal ?*g-bivalue-chain[18]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[18]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[18]-salience-2* = 0)

(defglobal ?*activate-g2whip[18]-salience* = 0)
(defglobal ?*g2whip[18]-salience* = 0)
(defglobal ?*partial-g2whip[17]-salience-1* = 0)
(defglobal ?*partial-g2whip[17]-salience-2* = 0)
(defglobal ?*partial-g2whip[17]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[18]-salience* = 0)
(defglobal ?*typed-gwhip[18]-salience* = 0)
(defglobal ?*typed-partial-gwhip[17]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[17]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[17]-salience-3* = 0)

(defglobal ?*activate-gwhip[18]-salience* = 0)
(defglobal ?*gwhip[18]-salience* = 0)
(defglobal ?*partial-gwhip[17]-salience-1* = 0)
(defglobal ?*partial-gwhip[17]-salience-2* = 0)
(defglobal ?*partial-gwhip[17]-salience-3* = 0)

(defglobal ?*activate-braid[18]-salience* = 0)
(defglobal ?*braid[18]-salience* = 0)
(defglobal ?*partial-braid[17]-salience* = 0)

(defglobal ?*activate-gbraid[18]-salience* = 0)
(defglobal ?*gbraid[18]-salience* = 0)
(defglobal ?*partial-gbraid[17]-salience-1* = 0)
(defglobal ?*partial-gbraid[17]-salience-2* = 0)
(defglobal ?*partial-gbraid[17]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[18]-salience* = 0)
(defglobal ?*OR2-forcing-whip[18]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[18]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[18]-salience* = 0)
(defglobal ?*OR2-contrad-whip[18]-salience* = 0)

(defglobal ?*activate-OR2-whip[18]-salience* = 0)
(defglobal ?*OR2-whip[18]-salience-1* = 0)
(defglobal ?*OR2-whip[18]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[17]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[17]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[18]-salience* = 0)
(defglobal ?*OR3-forcing-whip[18]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[18]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[18]-salience* = 0)
(defglobal ?*OR3-contrad-whip[18]-salience* = 0)

(defglobal ?*activate-OR3-whip[18]-salience* = 0)
(defglobal ?*OR3-whip[18]-salience-1* = 0)
(defglobal ?*OR3-whip[18]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[17]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[17]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[18]-salience* = 0)
(defglobal ?*OR4-forcing-whip[18]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[18]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[18]-salience* = 0)
(defglobal ?*OR4-contrad-whip[18]-salience* = 0)

(defglobal ?*activate-OR4-whip[18]-salience* = 0)
(defglobal ?*OR4-whip[18]-salience-1* = 0)
(defglobal ?*OR4-whip[18]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[17]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[17]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[18]-salience* = 0)
(defglobal ?*OR5-forcing-whip[18]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[18]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[18]-salience* = 0)
(defglobal ?*OR5-contrad-whip[18]-salience* = 0)

(defglobal ?*activate-OR5-whip[18]-salience* = 0)
(defglobal ?*OR5-whip[18]-salience-1* = 0)
(defglobal ?*OR5-whip[18]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[17]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[17]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[18]-salience* = 0)
(defglobal ?*OR6-forcing-whip[18]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[18]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[18]-salience* = 0)
(defglobal ?*OR6-contrad-whip[18]-salience* = 0)

(defglobal ?*activate-OR6-whip[18]-salience* = 0)
(defglobal ?*OR6-whip[18]-salience-1* = 0)
(defglobal ?*OR6-whip[18]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[17]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[17]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[18]-salience* = 0)
(defglobal ?*OR7-forcing-whip[18]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[18]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[18]-salience* = 0)
(defglobal ?*OR7-contrad-whip[18]-salience* = 0)

(defglobal ?*activate-OR7-whip[18]-salience* = 0)
(defglobal ?*OR7-whip[18]-salience-1* = 0)
(defglobal ?*OR7-whip[18]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[17]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[17]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[18]-salience* = 0)
(defglobal ?*OR8-forcing-whip[18]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[18]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[18]-salience* = 0)
(defglobal ?*OR8-contrad-whip[18]-salience* = 0)

(defglobal ?*activate-OR8-whip[18]-salience* = 0)
(defglobal ?*OR8-whip[18]-salience-1* = 0)
(defglobal ?*OR8-whip[18]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[17]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[17]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[18]-salience* = 0)
(defglobal ?*forcing-whip[18]-value-salience* = 0)
(defglobal ?*forcing-whip[18]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[18]-salience* = 0)
(defglobal ?*forcing-gwhip[18]-value-salience* = 0)
(defglobal ?*forcing-gwhip[18]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[18]-salience* = 0)
(defglobal ?*forcing-braid[18]-value-salience* = 0)
(defglobal ?*forcing-braid[18]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[18]-salience* = 0)
(defglobal ?*forcing-gbraid[18]-value-salience* = 0)
(defglobal ?*forcing-gbraid[18]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[18]]-salience* = 0)
(defglobal ?*w*-whip[[18]]-salience* = 0)
(defglobal ?*partial-w*-whip[[17]]-salience* = 0)

(defglobal ?*activate-b*-braid[[18]]-salience* = 0)
(defglobal ?*b*-braid[[18]]-salience* = 0)
(defglobal ?*partial-b*-braid[[17]]-salience* = 0)

(defglobal ?*activate-biwhip[18]-salience* = 0)
(defglobal ?*biwhip[18]-salience* = 0)
(defglobal ?*partial-biwhip[17]-salience* = 0)

(defglobal ?*activate-bibraid[18]-salience* = 0)
(defglobal ?*bibraid[18]-salience* = 0)
(defglobal ?*partial-bibraid[17]-salience* = 0)

(deffunction define-generic-saliences-at-L18 ()
   (bind ?*activate-typed-bivalue-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[18] can be applied before all the typed-t-whips[18] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 18 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[18] can be applied before all the t-whips[18] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 18 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[17]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[17]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[17]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[17]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[17]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[17]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[18]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[18]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[18]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[18]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[17]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[18]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[18]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[17]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[17]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L19: GENERIC RESOLUTION RULES INVOLVING 19 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L19-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[19]-salience* = 0)
(defglobal ?*typed-bivalue-chain[19]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[19]-salience* = 0)

(defglobal ?*activate-bivalue-chain[19]-salience* = 0)
(defglobal ?*bivalue-chain[19]-salience* = 0)
(defglobal ?*partial-bivalue-chain[19]-salience* = 0)

(defglobal ?*activate-typed-z-chain[19]-salience* = 0)
(defglobal ?*typed-z-chain[19]-salience* = 0)
(defglobal ?*typed-partial-z-chain[19]-salience* = 0)

(defglobal ?*activate-z-chain[19]-salience* = 0)
(defglobal ?*z-chain[19]-salience* = 0)
(defglobal ?*partial-z-chain[19]-salience* = 0)

(defglobal ?*activate-typed-t-whip[19]-salience* = 0)
(defglobal ?*typed-t-whip[19]-salience* = 0)

(defglobal ?*activate-t-whip[19]-salience* = 0)
(defglobal ?*t-whip[19]-salience* = 0)

(defglobal ?*activate-typed-whip[19]-salience* = 0)
(defglobal ?*typed-whip[19]-salience* = 0)
(defglobal ?*typed-partial-whip[18]-salience* = 0)

(defglobal ?*activate-whip[19]-salience* = 0)
(defglobal ?*whip[19]-salience* = 0)
(defglobal ?*partial-whip[18]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[19]-salience* = 0)
(defglobal ?*g-bivalue-chain[19]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[19]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[19]-salience-2* = 0)

(defglobal ?*activate-g2whip[19]-salience* = 0)
(defglobal ?*g2whip[19]-salience* = 0)
(defglobal ?*partial-g2whip[18]-salience-1* = 0)
(defglobal ?*partial-g2whip[18]-salience-2* = 0)
(defglobal ?*partial-g2whip[18]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[19]-salience* = 0)
(defglobal ?*typed-gwhip[19]-salience* = 0)
(defglobal ?*typed-partial-gwhip[18]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[18]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[18]-salience-3* = 0)

(defglobal ?*activate-gwhip[19]-salience* = 0)
(defglobal ?*gwhip[19]-salience* = 0)
(defglobal ?*partial-gwhip[18]-salience-1* = 0)
(defglobal ?*partial-gwhip[18]-salience-2* = 0)
(defglobal ?*partial-gwhip[18]-salience-3* = 0)

(defglobal ?*activate-braid[19]-salience* = 0)
(defglobal ?*braid[19]-salience* = 0)
(defglobal ?*partial-braid[18]-salience* = 0)

(defglobal ?*activate-gbraid[19]-salience* = 0)
(defglobal ?*gbraid[19]-salience* = 0)
(defglobal ?*partial-gbraid[18]-salience-1* = 0)
(defglobal ?*partial-gbraid[18]-salience-2* = 0)
(defglobal ?*partial-gbraid[18]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[19]-salience* = 0)
(defglobal ?*OR2-forcing-whip[19]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[19]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[19]-salience* = 0)
(defglobal ?*OR2-contrad-whip[19]-salience* = 0)

(defglobal ?*activate-OR2-whip[19]-salience* = 0)
(defglobal ?*OR2-whip[19]-salience-1* = 0)
(defglobal ?*OR2-whip[19]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[18]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[18]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[19]-salience* = 0)
(defglobal ?*OR3-forcing-whip[19]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[19]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[19]-salience* = 0)
(defglobal ?*OR3-contrad-whip[19]-salience* = 0)

(defglobal ?*activate-OR3-whip[19]-salience* = 0)
(defglobal ?*OR3-whip[19]-salience-1* = 0)
(defglobal ?*OR3-whip[19]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[18]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[18]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[19]-salience* = 0)
(defglobal ?*OR4-forcing-whip[19]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[19]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[19]-salience* = 0)
(defglobal ?*OR4-contrad-whip[19]-salience* = 0)

(defglobal ?*activate-OR4-whip[19]-salience* = 0)
(defglobal ?*OR4-whip[19]-salience-1* = 0)
(defglobal ?*OR4-whip[19]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[18]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[18]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[19]-salience* = 0)
(defglobal ?*OR5-forcing-whip[19]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[19]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[19]-salience* = 0)
(defglobal ?*OR5-contrad-whip[19]-salience* = 0)

(defglobal ?*activate-OR5-whip[19]-salience* = 0)
(defglobal ?*OR5-whip[19]-salience-1* = 0)
(defglobal ?*OR5-whip[19]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[18]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[18]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[19]-salience* = 0)
(defglobal ?*OR6-forcing-whip[19]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[19]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[19]-salience* = 0)
(defglobal ?*OR6-contrad-whip[19]-salience* = 0)

(defglobal ?*activate-OR6-whip[19]-salience* = 0)
(defglobal ?*OR6-whip[19]-salience-1* = 0)
(defglobal ?*OR6-whip[19]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[18]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[18]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[19]-salience* = 0)
(defglobal ?*OR7-forcing-whip[19]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[19]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[19]-salience* = 0)
(defglobal ?*OR7-contrad-whip[19]-salience* = 0)

(defglobal ?*activate-OR7-whip[19]-salience* = 0)
(defglobal ?*OR7-whip[19]-salience-1* = 0)
(defglobal ?*OR7-whip[19]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[18]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[18]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[19]-salience* = 0)
(defglobal ?*OR8-forcing-whip[19]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[19]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[19]-salience* = 0)
(defglobal ?*OR8-contrad-whip[19]-salience* = 0)

(defglobal ?*activate-OR8-whip[19]-salience* = 0)
(defglobal ?*OR8-whip[19]-salience-1* = 0)
(defglobal ?*OR8-whip[19]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[18]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[18]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[19]-salience* = 0)
(defglobal ?*forcing-whip[19]-value-salience* = 0)
(defglobal ?*forcing-whip[19]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[19]-salience* = 0)
(defglobal ?*forcing-gwhip[19]-value-salience* = 0)
(defglobal ?*forcing-gwhip[19]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[19]-salience* = 0)
(defglobal ?*forcing-braid[19]-value-salience* = 0)
(defglobal ?*forcing-braid[19]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[19]-salience* = 0)
(defglobal ?*forcing-gbraid[19]-value-salience* = 0)
(defglobal ?*forcing-gbraid[19]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[19]]-salience* = 0)
(defglobal ?*w*-whip[[19]]-salience* = 0)
(defglobal ?*partial-w*-whip[[18]]-salience* = 0)

(defglobal ?*activate-b*-braid[[19]]-salience* = 0)
(defglobal ?*b*-braid[[19]]-salience* = 0)
(defglobal ?*partial-b*-braid[[18]]-salience* = 0)

(defglobal ?*activate-biwhip[19]-salience* = 0)
(defglobal ?*biwhip[19]-salience* = 0)
(defglobal ?*partial-biwhip[18]-salience* = 0)

(defglobal ?*activate-bibraid[19]-salience* = 0)
(defglobal ?*bibraid[19]-salience* = 0)
(defglobal ?*partial-bibraid[18]-salience* = 0)

(deffunction define-generic-saliences-at-L19 ()
   (bind ?*activate-typed-bivalue-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[19] can be applied before all the typed-t-whips[19] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 19 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[19] can be applied before all the t-whips[19] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 19 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[18]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[18]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[18]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[18]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[18]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[18]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[19]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[19]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[19]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[19]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[18]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[19]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[19]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[18]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[18]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L20: GENERIC RESOLUTION RULES INVOLVING 20 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L20-salience* = 0)
(defglobal ?*activate-typed-bivalue-chain[20]-salience* = 0)
(defglobal ?*typed-bivalue-chain[20]-salience* = 0)
(defglobal ?*typed-partial-bivalue-chain[20]-salience* = 0)

(defglobal ?*activate-bivalue-chain[20]-salience* = 0)
(defglobal ?*bivalue-chain[20]-salience* = 0)
(defglobal ?*partial-bivalue-chain[20]-salience* = 0)

(defglobal ?*activate-typed-z-chain[20]-salience* = 0)
(defglobal ?*typed-z-chain[20]-salience* = 0)
(defglobal ?*typed-partial-z-chain[20]-salience* = 0)

(defglobal ?*activate-z-chain[20]-salience* = 0)
(defglobal ?*z-chain[20]-salience* = 0)
(defglobal ?*partial-z-chain[20]-salience* = 0)

(defglobal ?*activate-typed-t-whip[20]-salience* = 0)
(defglobal ?*typed-t-whip[20]-salience* = 0)

(defglobal ?*activate-t-whip[20]-salience* = 0)
(defglobal ?*t-whip[20]-salience* = 0)

(defglobal ?*activate-typed-whip[20]-salience* = 0)
(defglobal ?*typed-whip[20]-salience* = 0)
(defglobal ?*typed-partial-whip[19]-salience* = 0)

(defglobal ?*activate-whip[20]-salience* = 0)
(defglobal ?*whip[20]-salience* = 0)
(defglobal ?*partial-whip[19]-salience* = 0)

(defglobal ?*activate-g-bivalue-chain[20]-salience* = 0)
(defglobal ?*g-bivalue-chain[20]-salience* = 0)
(defglobal ?*partial-g-bivalue-chain[20]-salience-1* = 0)
(defglobal ?*partial-g-bivalue-chain[20]-salience-2* = 0)

(defglobal ?*activate-g2whip[20]-salience* = 0)
(defglobal ?*g2whip[20]-salience* = 0)
(defglobal ?*partial-g2whip[19]-salience-1* = 0)
(defglobal ?*partial-g2whip[19]-salience-2* = 0)
(defglobal ?*partial-g2whip[19]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[20]-salience* = 0)
(defglobal ?*typed-gwhip[20]-salience* = 0)
(defglobal ?*typed-partial-gwhip[19]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[19]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[19]-salience-3* = 0)

(defglobal ?*activate-gwhip[20]-salience* = 0)
(defglobal ?*gwhip[20]-salience* = 0)
(defglobal ?*partial-gwhip[19]-salience-1* = 0)
(defglobal ?*partial-gwhip[19]-salience-2* = 0)
(defglobal ?*partial-gwhip[19]-salience-3* = 0)

(defglobal ?*activate-braid[20]-salience* = 0)
(defglobal ?*braid[20]-salience* = 0)
(defglobal ?*partial-braid[19]-salience* = 0)

(defglobal ?*activate-gbraid[20]-salience* = 0)
(defglobal ?*gbraid[20]-salience* = 0)
(defglobal ?*partial-gbraid[19]-salience-1* = 0)
(defglobal ?*partial-gbraid[19]-salience-2* = 0)
(defglobal ?*partial-gbraid[19]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[20]-salience* = 0)
(defglobal ?*OR2-forcing-whip[20]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[20]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[20]-salience* = 0)
(defglobal ?*OR2-contrad-whip[20]-salience* = 0)

(defglobal ?*activate-OR2-whip[20]-salience* = 0)
(defglobal ?*OR2-whip[20]-salience-1* = 0)
(defglobal ?*OR2-whip[20]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[19]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[19]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[20]-salience* = 0)
(defglobal ?*OR3-forcing-whip[20]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[20]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[20]-salience* = 0)
(defglobal ?*OR3-contrad-whip[20]-salience* = 0)

(defglobal ?*activate-OR3-whip[20]-salience* = 0)
(defglobal ?*OR3-whip[20]-salience-1* = 0)
(defglobal ?*OR3-whip[20]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[19]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[19]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[20]-salience* = 0)
(defglobal ?*OR4-forcing-whip[20]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[20]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[20]-salience* = 0)
(defglobal ?*OR4-contrad-whip[20]-salience* = 0)

(defglobal ?*activate-OR4-whip[20]-salience* = 0)
(defglobal ?*OR4-whip[20]-salience-1* = 0)
(defglobal ?*OR4-whip[20]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[19]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[19]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[20]-salience* = 0)
(defglobal ?*OR5-forcing-whip[20]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[20]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[20]-salience* = 0)
(defglobal ?*OR5-contrad-whip[20]-salience* = 0)

(defglobal ?*activate-OR5-whip[20]-salience* = 0)
(defglobal ?*OR5-whip[20]-salience-1* = 0)
(defglobal ?*OR5-whip[20]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[19]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[19]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[20]-salience* = 0)
(defglobal ?*OR6-forcing-whip[20]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[20]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[20]-salience* = 0)
(defglobal ?*OR6-contrad-whip[20]-salience* = 0)

(defglobal ?*activate-OR6-whip[20]-salience* = 0)
(defglobal ?*OR6-whip[20]-salience-1* = 0)
(defglobal ?*OR6-whip[20]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[19]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[19]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[20]-salience* = 0)
(defglobal ?*OR7-forcing-whip[20]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[20]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[20]-salience* = 0)
(defglobal ?*OR7-contrad-whip[20]-salience* = 0)

(defglobal ?*activate-OR7-whip[20]-salience* = 0)
(defglobal ?*OR7-whip[20]-salience-1* = 0)
(defglobal ?*OR7-whip[20]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[19]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[19]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[20]-salience* = 0)
(defglobal ?*OR8-forcing-whip[20]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[20]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[20]-salience* = 0)
(defglobal ?*OR8-contrad-whip[20]-salience* = 0)

(defglobal ?*activate-OR8-whip[20]-salience* = 0)
(defglobal ?*OR8-whip[20]-salience-1* = 0)
(defglobal ?*OR8-whip[20]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[19]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[19]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[20]-salience* = 0)
(defglobal ?*forcing-whip[20]-value-salience* = 0)
(defglobal ?*forcing-whip[20]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[20]-salience* = 0)
(defglobal ?*forcing-gwhip[20]-value-salience* = 0)
(defglobal ?*forcing-gwhip[20]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[20]-salience* = 0)
(defglobal ?*forcing-braid[20]-value-salience* = 0)
(defglobal ?*forcing-braid[20]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[20]-salience* = 0)
(defglobal ?*forcing-gbraid[20]-value-salience* = 0)
(defglobal ?*forcing-gbraid[20]-candidate-salience* = 0)

(defglobal ?*activate-w*-whip[[20]]-salience* = 0)
(defglobal ?*w*-whip[[20]]-salience* = 0)
(defglobal ?*partial-w*-whip[[19]]-salience* = 0)

(defglobal ?*activate-b*-braid[[20]]-salience* = 0)
(defglobal ?*b*-braid[[20]]-salience* = 0)
(defglobal ?*partial-b*-braid[[19]]-salience* = 0)

(defglobal ?*activate-biwhip[20]-salience* = 0)
(defglobal ?*biwhip[20]-salience* = 0)
(defglobal ?*partial-biwhip[19]-salience* = 0)

(defglobal ?*activate-bibraid[20]-salience* = 0)
(defglobal ?*bibraid[20]-salience* = 0)
(defglobal ?*partial-bibraid[19]-salience* = 0)

(deffunction define-generic-saliences-at-L20 ()
   (bind ?*activate-typed-bivalue-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-bivalue-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-bivalue-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bivalue-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bivalue-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bivalue-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-z-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-z-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-z-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-z-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*z-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-z-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-t-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[20] can be applied before all the typed-t-whips[20] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 20 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[20] can be applied before all the t-whips[20] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 20 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g-bivalue-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g-bivalue-chain[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g-bivalue-chain[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-g2whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[19]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[19]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[19]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[19]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[19]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[19]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[20]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[20]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-w*-whip[[20]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*w*-whip[[20]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-w*-whip[[19]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-b*-braid[[20]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*b*-braid[[20]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-b*-braid[[19]]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[19]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L21: GENERIC RESOLUTION RULES INVOLVING 21 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L21-salience* = 0)
(defglobal ?*activate-typed-t-whip[21]-salience* = 0)
(defglobal ?*typed-t-whip[21]-salience* = 0)

(defglobal ?*activate-t-whip[21]-salience* = 0)
(defglobal ?*t-whip[21]-salience* = 0)

(defglobal ?*activate-typed-whip[21]-salience* = 0)
(defglobal ?*typed-whip[21]-salience* = 0)
(defglobal ?*typed-partial-whip[20]-salience* = 0)

(defglobal ?*activate-whip[21]-salience* = 0)
(defglobal ?*whip[21]-salience* = 0)
(defglobal ?*partial-whip[20]-salience* = 0)

(defglobal ?*activate-g2whip[21]-salience* = 0)
(defglobal ?*g2whip[21]-salience* = 0)
(defglobal ?*partial-g2whip[20]-salience-1* = 0)
(defglobal ?*partial-g2whip[20]-salience-2* = 0)
(defglobal ?*partial-g2whip[20]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[21]-salience* = 0)
(defglobal ?*typed-gwhip[21]-salience* = 0)
(defglobal ?*typed-partial-gwhip[20]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[20]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[20]-salience-3* = 0)

(defglobal ?*activate-gwhip[21]-salience* = 0)
(defglobal ?*gwhip[21]-salience* = 0)
(defglobal ?*partial-gwhip[20]-salience-1* = 0)
(defglobal ?*partial-gwhip[20]-salience-2* = 0)
(defglobal ?*partial-gwhip[20]-salience-3* = 0)

(defglobal ?*activate-braid[21]-salience* = 0)
(defglobal ?*braid[21]-salience* = 0)
(defglobal ?*partial-braid[20]-salience* = 0)

(defglobal ?*activate-gbraid[21]-salience* = 0)
(defglobal ?*gbraid[21]-salience* = 0)
(defglobal ?*partial-gbraid[20]-salience-1* = 0)
(defglobal ?*partial-gbraid[20]-salience-2* = 0)
(defglobal ?*partial-gbraid[20]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[21]-salience* = 0)
(defglobal ?*OR2-forcing-whip[21]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[21]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[21]-salience* = 0)
(defglobal ?*OR2-contrad-whip[21]-salience* = 0)

(defglobal ?*activate-OR2-whip[21]-salience* = 0)
(defglobal ?*OR2-whip[21]-salience-1* = 0)
(defglobal ?*OR2-whip[21]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[20]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[20]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[21]-salience* = 0)
(defglobal ?*OR3-forcing-whip[21]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[21]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[21]-salience* = 0)
(defglobal ?*OR3-contrad-whip[21]-salience* = 0)

(defglobal ?*activate-OR3-whip[21]-salience* = 0)
(defglobal ?*OR3-whip[21]-salience-1* = 0)
(defglobal ?*OR3-whip[21]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[20]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[20]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[21]-salience* = 0)
(defglobal ?*OR4-forcing-whip[21]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[21]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[21]-salience* = 0)
(defglobal ?*OR4-contrad-whip[21]-salience* = 0)

(defglobal ?*activate-OR4-whip[21]-salience* = 0)
(defglobal ?*OR4-whip[21]-salience-1* = 0)
(defglobal ?*OR4-whip[21]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[20]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[20]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[21]-salience* = 0)
(defglobal ?*OR5-forcing-whip[21]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[21]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[21]-salience* = 0)
(defglobal ?*OR5-contrad-whip[21]-salience* = 0)

(defglobal ?*activate-OR5-whip[21]-salience* = 0)
(defglobal ?*OR5-whip[21]-salience-1* = 0)
(defglobal ?*OR5-whip[21]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[20]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[20]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[21]-salience* = 0)
(defglobal ?*OR6-forcing-whip[21]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[21]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[21]-salience* = 0)
(defglobal ?*OR6-contrad-whip[21]-salience* = 0)

(defglobal ?*activate-OR6-whip[21]-salience* = 0)
(defglobal ?*OR6-whip[21]-salience-1* = 0)
(defglobal ?*OR6-whip[21]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[20]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[20]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[21]-salience* = 0)
(defglobal ?*OR7-forcing-whip[21]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[21]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[21]-salience* = 0)
(defglobal ?*OR7-contrad-whip[21]-salience* = 0)

(defglobal ?*activate-OR7-whip[21]-salience* = 0)
(defglobal ?*OR7-whip[21]-salience-1* = 0)
(defglobal ?*OR7-whip[21]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[20]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[20]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[21]-salience* = 0)
(defglobal ?*OR8-forcing-whip[21]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[21]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[21]-salience* = 0)
(defglobal ?*OR8-contrad-whip[21]-salience* = 0)

(defglobal ?*activate-OR8-whip[21]-salience* = 0)
(defglobal ?*OR8-whip[21]-salience-1* = 0)
(defglobal ?*OR8-whip[21]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[20]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[20]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[21]-salience* = 0)
(defglobal ?*forcing-whip[21]-value-salience* = 0)
(defglobal ?*forcing-whip[21]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[21]-salience* = 0)
(defglobal ?*forcing-gwhip[21]-value-salience* = 0)
(defglobal ?*forcing-gwhip[21]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[21]-salience* = 0)
(defglobal ?*forcing-braid[21]-value-salience* = 0)
(defglobal ?*forcing-braid[21]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[21]-salience* = 0)
(defglobal ?*forcing-gbraid[21]-value-salience* = 0)
(defglobal ?*forcing-gbraid[21]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[21]-salience* = 0)
(defglobal ?*biwhip[21]-salience* = 0)
(defglobal ?*partial-biwhip[20]-salience* = 0)

(defglobal ?*activate-bibraid[21]-salience* = 0)
(defglobal ?*bibraid[21]-salience* = 0)
(defglobal ?*partial-bibraid[20]-salience* = 0)

(deffunction define-generic-saliences-at-L21 ()
   (bind ?*activate-typed-t-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[21] can be applied before all the typed-t-whips[21] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 21 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[21] can be applied before all the t-whips[21] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 21 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[20]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[20]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[20]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[20]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[20]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[20]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[21]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[21]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[20]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L22: GENERIC RESOLUTION RULES INVOLVING 22 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L22-salience* = 0)
(defglobal ?*activate-typed-t-whip[22]-salience* = 0)
(defglobal ?*typed-t-whip[22]-salience* = 0)

(defglobal ?*activate-t-whip[22]-salience* = 0)
(defglobal ?*t-whip[22]-salience* = 0)

(defglobal ?*activate-typed-whip[22]-salience* = 0)
(defglobal ?*typed-whip[22]-salience* = 0)
(defglobal ?*typed-partial-whip[21]-salience* = 0)

(defglobal ?*activate-whip[22]-salience* = 0)
(defglobal ?*whip[22]-salience* = 0)
(defglobal ?*partial-whip[21]-salience* = 0)

(defglobal ?*activate-g2whip[22]-salience* = 0)
(defglobal ?*g2whip[22]-salience* = 0)
(defglobal ?*partial-g2whip[21]-salience-1* = 0)
(defglobal ?*partial-g2whip[21]-salience-2* = 0)
(defglobal ?*partial-g2whip[21]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[22]-salience* = 0)
(defglobal ?*typed-gwhip[22]-salience* = 0)
(defglobal ?*typed-partial-gwhip[21]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[21]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[21]-salience-3* = 0)

(defglobal ?*activate-gwhip[22]-salience* = 0)
(defglobal ?*gwhip[22]-salience* = 0)
(defglobal ?*partial-gwhip[21]-salience-1* = 0)
(defglobal ?*partial-gwhip[21]-salience-2* = 0)
(defglobal ?*partial-gwhip[21]-salience-3* = 0)

(defglobal ?*activate-braid[22]-salience* = 0)
(defglobal ?*braid[22]-salience* = 0)
(defglobal ?*partial-braid[21]-salience* = 0)

(defglobal ?*activate-gbraid[22]-salience* = 0)
(defglobal ?*gbraid[22]-salience* = 0)
(defglobal ?*partial-gbraid[21]-salience-1* = 0)
(defglobal ?*partial-gbraid[21]-salience-2* = 0)
(defglobal ?*partial-gbraid[21]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[22]-salience* = 0)
(defglobal ?*OR2-forcing-whip[22]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[22]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[22]-salience* = 0)
(defglobal ?*OR2-contrad-whip[22]-salience* = 0)

(defglobal ?*activate-OR2-whip[22]-salience* = 0)
(defglobal ?*OR2-whip[22]-salience-1* = 0)
(defglobal ?*OR2-whip[22]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[21]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[21]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[22]-salience* = 0)
(defglobal ?*OR3-forcing-whip[22]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[22]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[22]-salience* = 0)
(defglobal ?*OR3-contrad-whip[22]-salience* = 0)

(defglobal ?*activate-OR3-whip[22]-salience* = 0)
(defglobal ?*OR3-whip[22]-salience-1* = 0)
(defglobal ?*OR3-whip[22]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[21]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[21]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[22]-salience* = 0)
(defglobal ?*OR4-forcing-whip[22]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[22]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[22]-salience* = 0)
(defglobal ?*OR4-contrad-whip[22]-salience* = 0)

(defglobal ?*activate-OR4-whip[22]-salience* = 0)
(defglobal ?*OR4-whip[22]-salience-1* = 0)
(defglobal ?*OR4-whip[22]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[21]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[21]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[22]-salience* = 0)
(defglobal ?*OR5-forcing-whip[22]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[22]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[22]-salience* = 0)
(defglobal ?*OR5-contrad-whip[22]-salience* = 0)

(defglobal ?*activate-OR5-whip[22]-salience* = 0)
(defglobal ?*OR5-whip[22]-salience-1* = 0)
(defglobal ?*OR5-whip[22]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[21]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[21]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[22]-salience* = 0)
(defglobal ?*OR6-forcing-whip[22]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[22]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[22]-salience* = 0)
(defglobal ?*OR6-contrad-whip[22]-salience* = 0)

(defglobal ?*activate-OR6-whip[22]-salience* = 0)
(defglobal ?*OR6-whip[22]-salience-1* = 0)
(defglobal ?*OR6-whip[22]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[21]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[21]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[22]-salience* = 0)
(defglobal ?*OR7-forcing-whip[22]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[22]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[22]-salience* = 0)
(defglobal ?*OR7-contrad-whip[22]-salience* = 0)

(defglobal ?*activate-OR7-whip[22]-salience* = 0)
(defglobal ?*OR7-whip[22]-salience-1* = 0)
(defglobal ?*OR7-whip[22]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[21]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[21]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[22]-salience* = 0)
(defglobal ?*OR8-forcing-whip[22]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[22]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[22]-salience* = 0)
(defglobal ?*OR8-contrad-whip[22]-salience* = 0)

(defglobal ?*activate-OR8-whip[22]-salience* = 0)
(defglobal ?*OR8-whip[22]-salience-1* = 0)
(defglobal ?*OR8-whip[22]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[21]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[21]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[22]-salience* = 0)
(defglobal ?*forcing-whip[22]-value-salience* = 0)
(defglobal ?*forcing-whip[22]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[22]-salience* = 0)
(defglobal ?*forcing-gwhip[22]-value-salience* = 0)
(defglobal ?*forcing-gwhip[22]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[22]-salience* = 0)
(defglobal ?*forcing-braid[22]-value-salience* = 0)
(defglobal ?*forcing-braid[22]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[22]-salience* = 0)
(defglobal ?*forcing-gbraid[22]-value-salience* = 0)
(defglobal ?*forcing-gbraid[22]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[22]-salience* = 0)
(defglobal ?*biwhip[22]-salience* = 0)
(defglobal ?*partial-biwhip[21]-salience* = 0)

(defglobal ?*activate-bibraid[22]-salience* = 0)
(defglobal ?*bibraid[22]-salience* = 0)
(defglobal ?*partial-bibraid[21]-salience* = 0)

(deffunction define-generic-saliences-at-L22 ()
   (bind ?*activate-typed-t-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[22] can be applied before all the typed-t-whips[22] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 22 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[22] can be applied before all the t-whips[22] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 22 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[21]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[21]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[21]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[21]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[21]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[21]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[22]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[22]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[21]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L23: GENERIC RESOLUTION RULES INVOLVING 23 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L23-salience* = 0)
(defglobal ?*activate-typed-t-whip[23]-salience* = 0)
(defglobal ?*typed-t-whip[23]-salience* = 0)

(defglobal ?*activate-t-whip[23]-salience* = 0)
(defglobal ?*t-whip[23]-salience* = 0)

(defglobal ?*activate-typed-whip[23]-salience* = 0)
(defglobal ?*typed-whip[23]-salience* = 0)
(defglobal ?*typed-partial-whip[22]-salience* = 0)

(defglobal ?*activate-whip[23]-salience* = 0)
(defglobal ?*whip[23]-salience* = 0)
(defglobal ?*partial-whip[22]-salience* = 0)

(defglobal ?*activate-g2whip[23]-salience* = 0)
(defglobal ?*g2whip[23]-salience* = 0)
(defglobal ?*partial-g2whip[22]-salience-1* = 0)
(defglobal ?*partial-g2whip[22]-salience-2* = 0)
(defglobal ?*partial-g2whip[22]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[23]-salience* = 0)
(defglobal ?*typed-gwhip[23]-salience* = 0)
(defglobal ?*typed-partial-gwhip[22]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[22]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[22]-salience-3* = 0)

(defglobal ?*activate-gwhip[23]-salience* = 0)
(defglobal ?*gwhip[23]-salience* = 0)
(defglobal ?*partial-gwhip[22]-salience-1* = 0)
(defglobal ?*partial-gwhip[22]-salience-2* = 0)
(defglobal ?*partial-gwhip[22]-salience-3* = 0)

(defglobal ?*activate-braid[23]-salience* = 0)
(defglobal ?*braid[23]-salience* = 0)
(defglobal ?*partial-braid[22]-salience* = 0)

(defglobal ?*activate-gbraid[23]-salience* = 0)
(defglobal ?*gbraid[23]-salience* = 0)
(defglobal ?*partial-gbraid[22]-salience-1* = 0)
(defglobal ?*partial-gbraid[22]-salience-2* = 0)
(defglobal ?*partial-gbraid[22]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[23]-salience* = 0)
(defglobal ?*OR2-forcing-whip[23]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[23]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[23]-salience* = 0)
(defglobal ?*OR2-contrad-whip[23]-salience* = 0)

(defglobal ?*activate-OR2-whip[23]-salience* = 0)
(defglobal ?*OR2-whip[23]-salience-1* = 0)
(defglobal ?*OR2-whip[23]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[22]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[22]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[23]-salience* = 0)
(defglobal ?*OR3-forcing-whip[23]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[23]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[23]-salience* = 0)
(defglobal ?*OR3-contrad-whip[23]-salience* = 0)

(defglobal ?*activate-OR3-whip[23]-salience* = 0)
(defglobal ?*OR3-whip[23]-salience-1* = 0)
(defglobal ?*OR3-whip[23]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[22]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[22]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[23]-salience* = 0)
(defglobal ?*OR4-forcing-whip[23]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[23]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[23]-salience* = 0)
(defglobal ?*OR4-contrad-whip[23]-salience* = 0)

(defglobal ?*activate-OR4-whip[23]-salience* = 0)
(defglobal ?*OR4-whip[23]-salience-1* = 0)
(defglobal ?*OR4-whip[23]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[22]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[22]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[23]-salience* = 0)
(defglobal ?*OR5-forcing-whip[23]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[23]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[23]-salience* = 0)
(defglobal ?*OR5-contrad-whip[23]-salience* = 0)

(defglobal ?*activate-OR5-whip[23]-salience* = 0)
(defglobal ?*OR5-whip[23]-salience-1* = 0)
(defglobal ?*OR5-whip[23]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[22]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[22]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[23]-salience* = 0)
(defglobal ?*OR6-forcing-whip[23]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[23]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[23]-salience* = 0)
(defglobal ?*OR6-contrad-whip[23]-salience* = 0)

(defglobal ?*activate-OR6-whip[23]-salience* = 0)
(defglobal ?*OR6-whip[23]-salience-1* = 0)
(defglobal ?*OR6-whip[23]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[22]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[22]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[23]-salience* = 0)
(defglobal ?*OR7-forcing-whip[23]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[23]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[23]-salience* = 0)
(defglobal ?*OR7-contrad-whip[23]-salience* = 0)

(defglobal ?*activate-OR7-whip[23]-salience* = 0)
(defglobal ?*OR7-whip[23]-salience-1* = 0)
(defglobal ?*OR7-whip[23]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[22]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[22]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[23]-salience* = 0)
(defglobal ?*OR8-forcing-whip[23]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[23]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[23]-salience* = 0)
(defglobal ?*OR8-contrad-whip[23]-salience* = 0)

(defglobal ?*activate-OR8-whip[23]-salience* = 0)
(defglobal ?*OR8-whip[23]-salience-1* = 0)
(defglobal ?*OR8-whip[23]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[22]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[22]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[23]-salience* = 0)
(defglobal ?*forcing-whip[23]-value-salience* = 0)
(defglobal ?*forcing-whip[23]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[23]-salience* = 0)
(defglobal ?*forcing-gwhip[23]-value-salience* = 0)
(defglobal ?*forcing-gwhip[23]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[23]-salience* = 0)
(defglobal ?*forcing-braid[23]-value-salience* = 0)
(defglobal ?*forcing-braid[23]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[23]-salience* = 0)
(defglobal ?*forcing-gbraid[23]-value-salience* = 0)
(defglobal ?*forcing-gbraid[23]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[23]-salience* = 0)
(defglobal ?*biwhip[23]-salience* = 0)
(defglobal ?*partial-biwhip[22]-salience* = 0)

(defglobal ?*activate-bibraid[23]-salience* = 0)
(defglobal ?*bibraid[23]-salience* = 0)
(defglobal ?*partial-bibraid[22]-salience* = 0)

(deffunction define-generic-saliences-at-L23 ()
   (bind ?*activate-typed-t-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[23] can be applied before all the typed-t-whips[23] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 23 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[23] can be applied before all the t-whips[23] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 23 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[22]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[22]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[22]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[22]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[22]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[22]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[23]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[23]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[22]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L24: GENERIC RESOLUTION RULES INVOLVING 24 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L24-salience* = 0)
(defglobal ?*activate-typed-t-whip[24]-salience* = 0)
(defglobal ?*typed-t-whip[24]-salience* = 0)

(defglobal ?*activate-t-whip[24]-salience* = 0)
(defglobal ?*t-whip[24]-salience* = 0)

(defglobal ?*activate-typed-whip[24]-salience* = 0)
(defglobal ?*typed-whip[24]-salience* = 0)
(defglobal ?*typed-partial-whip[23]-salience* = 0)

(defglobal ?*activate-whip[24]-salience* = 0)
(defglobal ?*whip[24]-salience* = 0)
(defglobal ?*partial-whip[23]-salience* = 0)

(defglobal ?*activate-g2whip[24]-salience* = 0)
(defglobal ?*g2whip[24]-salience* = 0)
(defglobal ?*partial-g2whip[23]-salience-1* = 0)
(defglobal ?*partial-g2whip[23]-salience-2* = 0)
(defglobal ?*partial-g2whip[23]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[24]-salience* = 0)
(defglobal ?*typed-gwhip[24]-salience* = 0)
(defglobal ?*typed-partial-gwhip[23]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[23]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[23]-salience-3* = 0)

(defglobal ?*activate-gwhip[24]-salience* = 0)
(defglobal ?*gwhip[24]-salience* = 0)
(defglobal ?*partial-gwhip[23]-salience-1* = 0)
(defglobal ?*partial-gwhip[23]-salience-2* = 0)
(defglobal ?*partial-gwhip[23]-salience-3* = 0)

(defglobal ?*activate-braid[24]-salience* = 0)
(defglobal ?*braid[24]-salience* = 0)
(defglobal ?*partial-braid[23]-salience* = 0)

(defglobal ?*activate-gbraid[24]-salience* = 0)
(defglobal ?*gbraid[24]-salience* = 0)
(defglobal ?*partial-gbraid[23]-salience-1* = 0)
(defglobal ?*partial-gbraid[23]-salience-2* = 0)
(defglobal ?*partial-gbraid[23]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[24]-salience* = 0)
(defglobal ?*OR2-forcing-whip[24]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[24]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[24]-salience* = 0)
(defglobal ?*OR2-contrad-whip[24]-salience* = 0)

(defglobal ?*activate-OR2-whip[24]-salience* = 0)
(defglobal ?*OR2-whip[24]-salience-1* = 0)
(defglobal ?*OR2-whip[24]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[23]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[23]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[24]-salience* = 0)
(defglobal ?*OR3-forcing-whip[24]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[24]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[24]-salience* = 0)
(defglobal ?*OR3-contrad-whip[24]-salience* = 0)

(defglobal ?*activate-OR3-whip[24]-salience* = 0)
(defglobal ?*OR3-whip[24]-salience-1* = 0)
(defglobal ?*OR3-whip[24]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[23]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[23]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[24]-salience* = 0)
(defglobal ?*OR4-forcing-whip[24]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[24]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[24]-salience* = 0)
(defglobal ?*OR4-contrad-whip[24]-salience* = 0)

(defglobal ?*activate-OR4-whip[24]-salience* = 0)
(defglobal ?*OR4-whip[24]-salience-1* = 0)
(defglobal ?*OR4-whip[24]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[23]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[23]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[24]-salience* = 0)
(defglobal ?*OR5-forcing-whip[24]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[24]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[24]-salience* = 0)
(defglobal ?*OR5-contrad-whip[24]-salience* = 0)

(defglobal ?*activate-OR5-whip[24]-salience* = 0)
(defglobal ?*OR5-whip[24]-salience-1* = 0)
(defglobal ?*OR5-whip[24]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[23]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[23]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[24]-salience* = 0)
(defglobal ?*OR6-forcing-whip[24]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[24]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[24]-salience* = 0)
(defglobal ?*OR6-contrad-whip[24]-salience* = 0)

(defglobal ?*activate-OR6-whip[24]-salience* = 0)
(defglobal ?*OR6-whip[24]-salience-1* = 0)
(defglobal ?*OR6-whip[24]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[23]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[23]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[24]-salience* = 0)
(defglobal ?*OR7-forcing-whip[24]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[24]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[24]-salience* = 0)
(defglobal ?*OR7-contrad-whip[24]-salience* = 0)

(defglobal ?*activate-OR7-whip[24]-salience* = 0)
(defglobal ?*OR7-whip[24]-salience-1* = 0)
(defglobal ?*OR7-whip[24]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[23]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[23]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[24]-salience* = 0)
(defglobal ?*OR8-forcing-whip[24]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[24]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[24]-salience* = 0)
(defglobal ?*OR8-contrad-whip[24]-salience* = 0)

(defglobal ?*activate-OR8-whip[24]-salience* = 0)
(defglobal ?*OR8-whip[24]-salience-1* = 0)
(defglobal ?*OR8-whip[24]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[23]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[23]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[24]-salience* = 0)
(defglobal ?*forcing-whip[24]-value-salience* = 0)
(defglobal ?*forcing-whip[24]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[24]-salience* = 0)
(defglobal ?*forcing-gwhip[24]-value-salience* = 0)
(defglobal ?*forcing-gwhip[24]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[24]-salience* = 0)
(defglobal ?*forcing-braid[24]-value-salience* = 0)
(defglobal ?*forcing-braid[24]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[24]-salience* = 0)
(defglobal ?*forcing-gbraid[24]-value-salience* = 0)
(defglobal ?*forcing-gbraid[24]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[24]-salience* = 0)
(defglobal ?*biwhip[24]-salience* = 0)
(defglobal ?*partial-biwhip[23]-salience* = 0)

(defglobal ?*activate-bibraid[24]-salience* = 0)
(defglobal ?*bibraid[24]-salience* = 0)
(defglobal ?*partial-bibraid[23]-salience* = 0)

(deffunction define-generic-saliences-at-L24 ()
   (bind ?*activate-typed-t-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[24] can be applied before all the typed-t-whips[24] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 24 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[24] can be applied before all the t-whips[24] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 24 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[23]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[23]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[23]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[23]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[23]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[23]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[24]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[24]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[23]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L25: GENERIC RESOLUTION RULES INVOLVING 25 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L25-salience* = 0)
(defglobal ?*activate-typed-t-whip[25]-salience* = 0)
(defglobal ?*typed-t-whip[25]-salience* = 0)

(defglobal ?*activate-t-whip[25]-salience* = 0)
(defglobal ?*t-whip[25]-salience* = 0)

(defglobal ?*activate-typed-whip[25]-salience* = 0)
(defglobal ?*typed-whip[25]-salience* = 0)
(defglobal ?*typed-partial-whip[24]-salience* = 0)

(defglobal ?*activate-whip[25]-salience* = 0)
(defglobal ?*whip[25]-salience* = 0)
(defglobal ?*partial-whip[24]-salience* = 0)

(defglobal ?*activate-g2whip[25]-salience* = 0)
(defglobal ?*g2whip[25]-salience* = 0)
(defglobal ?*partial-g2whip[24]-salience-1* = 0)
(defglobal ?*partial-g2whip[24]-salience-2* = 0)
(defglobal ?*partial-g2whip[24]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[25]-salience* = 0)
(defglobal ?*typed-gwhip[25]-salience* = 0)
(defglobal ?*typed-partial-gwhip[24]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[24]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[24]-salience-3* = 0)

(defglobal ?*activate-gwhip[25]-salience* = 0)
(defglobal ?*gwhip[25]-salience* = 0)
(defglobal ?*partial-gwhip[24]-salience-1* = 0)
(defglobal ?*partial-gwhip[24]-salience-2* = 0)
(defglobal ?*partial-gwhip[24]-salience-3* = 0)

(defglobal ?*activate-braid[25]-salience* = 0)
(defglobal ?*braid[25]-salience* = 0)
(defglobal ?*partial-braid[24]-salience* = 0)

(defglobal ?*activate-gbraid[25]-salience* = 0)
(defglobal ?*gbraid[25]-salience* = 0)
(defglobal ?*partial-gbraid[24]-salience-1* = 0)
(defglobal ?*partial-gbraid[24]-salience-2* = 0)
(defglobal ?*partial-gbraid[24]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[25]-salience* = 0)
(defglobal ?*OR2-forcing-whip[25]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[25]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[25]-salience* = 0)
(defglobal ?*OR2-contrad-whip[25]-salience* = 0)

(defglobal ?*activate-OR2-whip[25]-salience* = 0)
(defglobal ?*OR2-whip[25]-salience-1* = 0)
(defglobal ?*OR2-whip[25]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[24]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[24]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[25]-salience* = 0)
(defglobal ?*OR3-forcing-whip[25]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[25]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[25]-salience* = 0)
(defglobal ?*OR3-contrad-whip[25]-salience* = 0)

(defglobal ?*activate-OR3-whip[25]-salience* = 0)
(defglobal ?*OR3-whip[25]-salience-1* = 0)
(defglobal ?*OR3-whip[25]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[24]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[24]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[25]-salience* = 0)
(defglobal ?*OR4-forcing-whip[25]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[25]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[25]-salience* = 0)
(defglobal ?*OR4-contrad-whip[25]-salience* = 0)

(defglobal ?*activate-OR4-whip[25]-salience* = 0)
(defglobal ?*OR4-whip[25]-salience-1* = 0)
(defglobal ?*OR4-whip[25]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[24]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[24]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[25]-salience* = 0)
(defglobal ?*OR5-forcing-whip[25]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[25]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[25]-salience* = 0)
(defglobal ?*OR5-contrad-whip[25]-salience* = 0)

(defglobal ?*activate-OR5-whip[25]-salience* = 0)
(defglobal ?*OR5-whip[25]-salience-1* = 0)
(defglobal ?*OR5-whip[25]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[24]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[24]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[25]-salience* = 0)
(defglobal ?*OR6-forcing-whip[25]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[25]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[25]-salience* = 0)
(defglobal ?*OR6-contrad-whip[25]-salience* = 0)

(defglobal ?*activate-OR6-whip[25]-salience* = 0)
(defglobal ?*OR6-whip[25]-salience-1* = 0)
(defglobal ?*OR6-whip[25]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[24]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[24]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[25]-salience* = 0)
(defglobal ?*OR7-forcing-whip[25]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[25]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[25]-salience* = 0)
(defglobal ?*OR7-contrad-whip[25]-salience* = 0)

(defglobal ?*activate-OR7-whip[25]-salience* = 0)
(defglobal ?*OR7-whip[25]-salience-1* = 0)
(defglobal ?*OR7-whip[25]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[24]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[24]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[25]-salience* = 0)
(defglobal ?*OR8-forcing-whip[25]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[25]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[25]-salience* = 0)
(defglobal ?*OR8-contrad-whip[25]-salience* = 0)

(defglobal ?*activate-OR8-whip[25]-salience* = 0)
(defglobal ?*OR8-whip[25]-salience-1* = 0)
(defglobal ?*OR8-whip[25]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[24]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[24]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[25]-salience* = 0)
(defglobal ?*forcing-whip[25]-value-salience* = 0)
(defglobal ?*forcing-whip[25]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[25]-salience* = 0)
(defglobal ?*forcing-gwhip[25]-value-salience* = 0)
(defglobal ?*forcing-gwhip[25]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[25]-salience* = 0)
(defglobal ?*forcing-braid[25]-value-salience* = 0)
(defglobal ?*forcing-braid[25]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[25]-salience* = 0)
(defglobal ?*forcing-gbraid[25]-value-salience* = 0)
(defglobal ?*forcing-gbraid[25]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[25]-salience* = 0)
(defglobal ?*biwhip[25]-salience* = 0)
(defglobal ?*partial-biwhip[24]-salience* = 0)

(defglobal ?*activate-bibraid[25]-salience* = 0)
(defglobal ?*bibraid[25]-salience* = 0)
(defglobal ?*partial-bibraid[24]-salience* = 0)

(deffunction define-generic-saliences-at-L25 ()
   (bind ?*activate-typed-t-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[25] can be applied before all the typed-t-whips[25] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 25 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[25] can be applied before all the t-whips[25] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 25 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[24]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[24]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[24]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[24]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[24]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[24]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[25]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[25]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[24]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L26: GENERIC RESOLUTION RULES INVOLVING 26 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L26-salience* = 0)
(defglobal ?*activate-typed-t-whip[26]-salience* = 0)
(defglobal ?*typed-t-whip[26]-salience* = 0)

(defglobal ?*activate-t-whip[26]-salience* = 0)
(defglobal ?*t-whip[26]-salience* = 0)

(defglobal ?*activate-typed-whip[26]-salience* = 0)
(defglobal ?*typed-whip[26]-salience* = 0)
(defglobal ?*typed-partial-whip[25]-salience* = 0)

(defglobal ?*activate-whip[26]-salience* = 0)
(defglobal ?*whip[26]-salience* = 0)
(defglobal ?*partial-whip[25]-salience* = 0)

(defglobal ?*activate-g2whip[26]-salience* = 0)
(defglobal ?*g2whip[26]-salience* = 0)
(defglobal ?*partial-g2whip[25]-salience-1* = 0)
(defglobal ?*partial-g2whip[25]-salience-2* = 0)
(defglobal ?*partial-g2whip[25]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[26]-salience* = 0)
(defglobal ?*typed-gwhip[26]-salience* = 0)
(defglobal ?*typed-partial-gwhip[25]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[25]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[25]-salience-3* = 0)

(defglobal ?*activate-gwhip[26]-salience* = 0)
(defglobal ?*gwhip[26]-salience* = 0)
(defglobal ?*partial-gwhip[25]-salience-1* = 0)
(defglobal ?*partial-gwhip[25]-salience-2* = 0)
(defglobal ?*partial-gwhip[25]-salience-3* = 0)

(defglobal ?*activate-braid[26]-salience* = 0)
(defglobal ?*braid[26]-salience* = 0)
(defglobal ?*partial-braid[25]-salience* = 0)

(defglobal ?*activate-gbraid[26]-salience* = 0)
(defglobal ?*gbraid[26]-salience* = 0)
(defglobal ?*partial-gbraid[25]-salience-1* = 0)
(defglobal ?*partial-gbraid[25]-salience-2* = 0)
(defglobal ?*partial-gbraid[25]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[26]-salience* = 0)
(defglobal ?*OR2-forcing-whip[26]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[26]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[26]-salience* = 0)
(defglobal ?*OR2-contrad-whip[26]-salience* = 0)

(defglobal ?*activate-OR2-whip[26]-salience* = 0)
(defglobal ?*OR2-whip[26]-salience-1* = 0)
(defglobal ?*OR2-whip[26]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[25]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[25]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[26]-salience* = 0)
(defglobal ?*OR3-forcing-whip[26]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[26]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[26]-salience* = 0)
(defglobal ?*OR3-contrad-whip[26]-salience* = 0)

(defglobal ?*activate-OR3-whip[26]-salience* = 0)
(defglobal ?*OR3-whip[26]-salience-1* = 0)
(defglobal ?*OR3-whip[26]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[25]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[25]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[26]-salience* = 0)
(defglobal ?*OR4-forcing-whip[26]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[26]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[26]-salience* = 0)
(defglobal ?*OR4-contrad-whip[26]-salience* = 0)

(defglobal ?*activate-OR4-whip[26]-salience* = 0)
(defglobal ?*OR4-whip[26]-salience-1* = 0)
(defglobal ?*OR4-whip[26]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[25]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[25]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[26]-salience* = 0)
(defglobal ?*OR5-forcing-whip[26]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[26]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[26]-salience* = 0)
(defglobal ?*OR5-contrad-whip[26]-salience* = 0)

(defglobal ?*activate-OR5-whip[26]-salience* = 0)
(defglobal ?*OR5-whip[26]-salience-1* = 0)
(defglobal ?*OR5-whip[26]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[25]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[25]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[26]-salience* = 0)
(defglobal ?*OR6-forcing-whip[26]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[26]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[26]-salience* = 0)
(defglobal ?*OR6-contrad-whip[26]-salience* = 0)

(defglobal ?*activate-OR6-whip[26]-salience* = 0)
(defglobal ?*OR6-whip[26]-salience-1* = 0)
(defglobal ?*OR6-whip[26]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[25]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[25]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[26]-salience* = 0)
(defglobal ?*OR7-forcing-whip[26]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[26]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[26]-salience* = 0)
(defglobal ?*OR7-contrad-whip[26]-salience* = 0)

(defglobal ?*activate-OR7-whip[26]-salience* = 0)
(defglobal ?*OR7-whip[26]-salience-1* = 0)
(defglobal ?*OR7-whip[26]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[25]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[25]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[26]-salience* = 0)
(defglobal ?*OR8-forcing-whip[26]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[26]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[26]-salience* = 0)
(defglobal ?*OR8-contrad-whip[26]-salience* = 0)

(defglobal ?*activate-OR8-whip[26]-salience* = 0)
(defglobal ?*OR8-whip[26]-salience-1* = 0)
(defglobal ?*OR8-whip[26]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[25]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[25]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[26]-salience* = 0)
(defglobal ?*forcing-whip[26]-value-salience* = 0)
(defglobal ?*forcing-whip[26]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[26]-salience* = 0)
(defglobal ?*forcing-gwhip[26]-value-salience* = 0)
(defglobal ?*forcing-gwhip[26]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[26]-salience* = 0)
(defglobal ?*forcing-braid[26]-value-salience* = 0)
(defglobal ?*forcing-braid[26]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[26]-salience* = 0)
(defglobal ?*forcing-gbraid[26]-value-salience* = 0)
(defglobal ?*forcing-gbraid[26]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[26]-salience* = 0)
(defglobal ?*biwhip[26]-salience* = 0)
(defglobal ?*partial-biwhip[25]-salience* = 0)

(defglobal ?*activate-bibraid[26]-salience* = 0)
(defglobal ?*bibraid[26]-salience* = 0)
(defglobal ?*partial-bibraid[25]-salience* = 0)

(deffunction define-generic-saliences-at-L26 ()
   (bind ?*activate-typed-t-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[26] can be applied before all the typed-t-whips[26] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 26 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[26] can be applied before all the t-whips[26] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 26 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[25]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[25]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[25]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[25]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[25]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[25]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[26]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[26]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[25]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L27: GENERIC RESOLUTION RULES INVOLVING 27 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L27-salience* = 0)
(defglobal ?*activate-typed-t-whip[27]-salience* = 0)
(defglobal ?*typed-t-whip[27]-salience* = 0)

(defglobal ?*activate-t-whip[27]-salience* = 0)
(defglobal ?*t-whip[27]-salience* = 0)

(defglobal ?*activate-typed-whip[27]-salience* = 0)
(defglobal ?*typed-whip[27]-salience* = 0)
(defglobal ?*typed-partial-whip[26]-salience* = 0)

(defglobal ?*activate-whip[27]-salience* = 0)
(defglobal ?*whip[27]-salience* = 0)
(defglobal ?*partial-whip[26]-salience* = 0)

(defglobal ?*activate-g2whip[27]-salience* = 0)
(defglobal ?*g2whip[27]-salience* = 0)
(defglobal ?*partial-g2whip[26]-salience-1* = 0)
(defglobal ?*partial-g2whip[26]-salience-2* = 0)
(defglobal ?*partial-g2whip[26]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[27]-salience* = 0)
(defglobal ?*typed-gwhip[27]-salience* = 0)
(defglobal ?*typed-partial-gwhip[26]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[26]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[26]-salience-3* = 0)

(defglobal ?*activate-gwhip[27]-salience* = 0)
(defglobal ?*gwhip[27]-salience* = 0)
(defglobal ?*partial-gwhip[26]-salience-1* = 0)
(defglobal ?*partial-gwhip[26]-salience-2* = 0)
(defglobal ?*partial-gwhip[26]-salience-3* = 0)

(defglobal ?*activate-braid[27]-salience* = 0)
(defglobal ?*braid[27]-salience* = 0)
(defglobal ?*partial-braid[26]-salience* = 0)

(defglobal ?*activate-gbraid[27]-salience* = 0)
(defglobal ?*gbraid[27]-salience* = 0)
(defglobal ?*partial-gbraid[26]-salience-1* = 0)
(defglobal ?*partial-gbraid[26]-salience-2* = 0)
(defglobal ?*partial-gbraid[26]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[27]-salience* = 0)
(defglobal ?*OR2-forcing-whip[27]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[27]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[27]-salience* = 0)
(defglobal ?*OR2-contrad-whip[27]-salience* = 0)

(defglobal ?*activate-OR2-whip[27]-salience* = 0)
(defglobal ?*OR2-whip[27]-salience-1* = 0)
(defglobal ?*OR2-whip[27]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[26]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[26]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[27]-salience* = 0)
(defglobal ?*OR3-forcing-whip[27]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[27]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[27]-salience* = 0)
(defglobal ?*OR3-contrad-whip[27]-salience* = 0)

(defglobal ?*activate-OR3-whip[27]-salience* = 0)
(defglobal ?*OR3-whip[27]-salience-1* = 0)
(defglobal ?*OR3-whip[27]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[26]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[26]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[27]-salience* = 0)
(defglobal ?*OR4-forcing-whip[27]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[27]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[27]-salience* = 0)
(defglobal ?*OR4-contrad-whip[27]-salience* = 0)

(defglobal ?*activate-OR4-whip[27]-salience* = 0)
(defglobal ?*OR4-whip[27]-salience-1* = 0)
(defglobal ?*OR4-whip[27]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[26]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[26]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[27]-salience* = 0)
(defglobal ?*OR5-forcing-whip[27]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[27]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[27]-salience* = 0)
(defglobal ?*OR5-contrad-whip[27]-salience* = 0)

(defglobal ?*activate-OR5-whip[27]-salience* = 0)
(defglobal ?*OR5-whip[27]-salience-1* = 0)
(defglobal ?*OR5-whip[27]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[26]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[26]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[27]-salience* = 0)
(defglobal ?*OR6-forcing-whip[27]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[27]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[27]-salience* = 0)
(defglobal ?*OR6-contrad-whip[27]-salience* = 0)

(defglobal ?*activate-OR6-whip[27]-salience* = 0)
(defglobal ?*OR6-whip[27]-salience-1* = 0)
(defglobal ?*OR6-whip[27]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[26]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[26]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[27]-salience* = 0)
(defglobal ?*OR7-forcing-whip[27]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[27]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[27]-salience* = 0)
(defglobal ?*OR7-contrad-whip[27]-salience* = 0)

(defglobal ?*activate-OR7-whip[27]-salience* = 0)
(defglobal ?*OR7-whip[27]-salience-1* = 0)
(defglobal ?*OR7-whip[27]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[26]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[26]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[27]-salience* = 0)
(defglobal ?*OR8-forcing-whip[27]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[27]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[27]-salience* = 0)
(defglobal ?*OR8-contrad-whip[27]-salience* = 0)

(defglobal ?*activate-OR8-whip[27]-salience* = 0)
(defglobal ?*OR8-whip[27]-salience-1* = 0)
(defglobal ?*OR8-whip[27]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[26]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[26]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[27]-salience* = 0)
(defglobal ?*forcing-whip[27]-value-salience* = 0)
(defglobal ?*forcing-whip[27]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[27]-salience* = 0)
(defglobal ?*forcing-gwhip[27]-value-salience* = 0)
(defglobal ?*forcing-gwhip[27]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[27]-salience* = 0)
(defglobal ?*forcing-braid[27]-value-salience* = 0)
(defglobal ?*forcing-braid[27]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[27]-salience* = 0)
(defglobal ?*forcing-gbraid[27]-value-salience* = 0)
(defglobal ?*forcing-gbraid[27]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[27]-salience* = 0)
(defglobal ?*biwhip[27]-salience* = 0)
(defglobal ?*partial-biwhip[26]-salience* = 0)

(defglobal ?*activate-bibraid[27]-salience* = 0)
(defglobal ?*bibraid[27]-salience* = 0)
(defglobal ?*partial-bibraid[26]-salience* = 0)

(deffunction define-generic-saliences-at-L27 ()
   (bind ?*activate-typed-t-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[27] can be applied before all the typed-t-whips[27] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 27 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[27] can be applied before all the t-whips[27] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 27 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[26]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[26]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[26]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[26]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[26]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[26]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[27]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[27]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[26]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L28: GENERIC RESOLUTION RULES INVOLVING 28 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L28-salience* = 0)
(defglobal ?*activate-typed-t-whip[28]-salience* = 0)
(defglobal ?*typed-t-whip[28]-salience* = 0)

(defglobal ?*activate-t-whip[28]-salience* = 0)
(defglobal ?*t-whip[28]-salience* = 0)

(defglobal ?*activate-typed-whip[28]-salience* = 0)
(defglobal ?*typed-whip[28]-salience* = 0)
(defglobal ?*typed-partial-whip[27]-salience* = 0)

(defglobal ?*activate-whip[28]-salience* = 0)
(defglobal ?*whip[28]-salience* = 0)
(defglobal ?*partial-whip[27]-salience* = 0)

(defglobal ?*activate-g2whip[28]-salience* = 0)
(defglobal ?*g2whip[28]-salience* = 0)
(defglobal ?*partial-g2whip[27]-salience-1* = 0)
(defglobal ?*partial-g2whip[27]-salience-2* = 0)
(defglobal ?*partial-g2whip[27]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[28]-salience* = 0)
(defglobal ?*typed-gwhip[28]-salience* = 0)
(defglobal ?*typed-partial-gwhip[27]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[27]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[27]-salience-3* = 0)

(defglobal ?*activate-gwhip[28]-salience* = 0)
(defglobal ?*gwhip[28]-salience* = 0)
(defglobal ?*partial-gwhip[27]-salience-1* = 0)
(defglobal ?*partial-gwhip[27]-salience-2* = 0)
(defglobal ?*partial-gwhip[27]-salience-3* = 0)

(defglobal ?*activate-braid[28]-salience* = 0)
(defglobal ?*braid[28]-salience* = 0)
(defglobal ?*partial-braid[27]-salience* = 0)

(defglobal ?*activate-gbraid[28]-salience* = 0)
(defglobal ?*gbraid[28]-salience* = 0)
(defglobal ?*partial-gbraid[27]-salience-1* = 0)
(defglobal ?*partial-gbraid[27]-salience-2* = 0)
(defglobal ?*partial-gbraid[27]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[28]-salience* = 0)
(defglobal ?*OR2-forcing-whip[28]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[28]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[28]-salience* = 0)
(defglobal ?*OR2-contrad-whip[28]-salience* = 0)

(defglobal ?*activate-OR2-whip[28]-salience* = 0)
(defglobal ?*OR2-whip[28]-salience-1* = 0)
(defglobal ?*OR2-whip[28]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[27]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[27]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[28]-salience* = 0)
(defglobal ?*OR3-forcing-whip[28]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[28]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[28]-salience* = 0)
(defglobal ?*OR3-contrad-whip[28]-salience* = 0)

(defglobal ?*activate-OR3-whip[28]-salience* = 0)
(defglobal ?*OR3-whip[28]-salience-1* = 0)
(defglobal ?*OR3-whip[28]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[27]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[27]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[28]-salience* = 0)
(defglobal ?*OR4-forcing-whip[28]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[28]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[28]-salience* = 0)
(defglobal ?*OR4-contrad-whip[28]-salience* = 0)

(defglobal ?*activate-OR4-whip[28]-salience* = 0)
(defglobal ?*OR4-whip[28]-salience-1* = 0)
(defglobal ?*OR4-whip[28]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[27]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[27]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[28]-salience* = 0)
(defglobal ?*OR5-forcing-whip[28]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[28]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[28]-salience* = 0)
(defglobal ?*OR5-contrad-whip[28]-salience* = 0)

(defglobal ?*activate-OR5-whip[28]-salience* = 0)
(defglobal ?*OR5-whip[28]-salience-1* = 0)
(defglobal ?*OR5-whip[28]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[27]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[27]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[28]-salience* = 0)
(defglobal ?*OR6-forcing-whip[28]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[28]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[28]-salience* = 0)
(defglobal ?*OR6-contrad-whip[28]-salience* = 0)

(defglobal ?*activate-OR6-whip[28]-salience* = 0)
(defglobal ?*OR6-whip[28]-salience-1* = 0)
(defglobal ?*OR6-whip[28]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[27]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[27]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[28]-salience* = 0)
(defglobal ?*OR7-forcing-whip[28]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[28]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[28]-salience* = 0)
(defglobal ?*OR7-contrad-whip[28]-salience* = 0)

(defglobal ?*activate-OR7-whip[28]-salience* = 0)
(defglobal ?*OR7-whip[28]-salience-1* = 0)
(defglobal ?*OR7-whip[28]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[27]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[27]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[28]-salience* = 0)
(defglobal ?*OR8-forcing-whip[28]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[28]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[28]-salience* = 0)
(defglobal ?*OR8-contrad-whip[28]-salience* = 0)

(defglobal ?*activate-OR8-whip[28]-salience* = 0)
(defglobal ?*OR8-whip[28]-salience-1* = 0)
(defglobal ?*OR8-whip[28]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[27]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[27]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[28]-salience* = 0)
(defglobal ?*forcing-whip[28]-value-salience* = 0)
(defglobal ?*forcing-whip[28]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[28]-salience* = 0)
(defglobal ?*forcing-gwhip[28]-value-salience* = 0)
(defglobal ?*forcing-gwhip[28]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[28]-salience* = 0)
(defglobal ?*forcing-braid[28]-value-salience* = 0)
(defglobal ?*forcing-braid[28]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[28]-salience* = 0)
(defglobal ?*forcing-gbraid[28]-value-salience* = 0)
(defglobal ?*forcing-gbraid[28]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[28]-salience* = 0)
(defglobal ?*biwhip[28]-salience* = 0)
(defglobal ?*partial-biwhip[27]-salience* = 0)

(defglobal ?*activate-bibraid[28]-salience* = 0)
(defglobal ?*bibraid[28]-salience* = 0)
(defglobal ?*partial-bibraid[27]-salience* = 0)

(deffunction define-generic-saliences-at-L28 ()
   (bind ?*activate-typed-t-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[28] can be applied before all the typed-t-whips[28] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 28 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[28] can be applied before all the t-whips[28] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 28 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[27]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[27]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[27]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[27]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[27]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[27]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[28]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[28]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[27]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L29: GENERIC RESOLUTION RULES INVOLVING 29 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L29-salience* = 0)
(defglobal ?*activate-typed-t-whip[29]-salience* = 0)
(defglobal ?*typed-t-whip[29]-salience* = 0)

(defglobal ?*activate-t-whip[29]-salience* = 0)
(defglobal ?*t-whip[29]-salience* = 0)

(defglobal ?*activate-typed-whip[29]-salience* = 0)
(defglobal ?*typed-whip[29]-salience* = 0)
(defglobal ?*typed-partial-whip[28]-salience* = 0)

(defglobal ?*activate-whip[29]-salience* = 0)
(defglobal ?*whip[29]-salience* = 0)
(defglobal ?*partial-whip[28]-salience* = 0)

(defglobal ?*activate-g2whip[29]-salience* = 0)
(defglobal ?*g2whip[29]-salience* = 0)
(defglobal ?*partial-g2whip[28]-salience-1* = 0)
(defglobal ?*partial-g2whip[28]-salience-2* = 0)
(defglobal ?*partial-g2whip[28]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[29]-salience* = 0)
(defglobal ?*typed-gwhip[29]-salience* = 0)
(defglobal ?*typed-partial-gwhip[28]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[28]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[28]-salience-3* = 0)

(defglobal ?*activate-gwhip[29]-salience* = 0)
(defglobal ?*gwhip[29]-salience* = 0)
(defglobal ?*partial-gwhip[28]-salience-1* = 0)
(defglobal ?*partial-gwhip[28]-salience-2* = 0)
(defglobal ?*partial-gwhip[28]-salience-3* = 0)

(defglobal ?*activate-braid[29]-salience* = 0)
(defglobal ?*braid[29]-salience* = 0)
(defglobal ?*partial-braid[28]-salience* = 0)

(defglobal ?*activate-gbraid[29]-salience* = 0)
(defglobal ?*gbraid[29]-salience* = 0)
(defglobal ?*partial-gbraid[28]-salience-1* = 0)
(defglobal ?*partial-gbraid[28]-salience-2* = 0)
(defglobal ?*partial-gbraid[28]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[29]-salience* = 0)
(defglobal ?*OR2-forcing-whip[29]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[29]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[29]-salience* = 0)
(defglobal ?*OR2-contrad-whip[29]-salience* = 0)

(defglobal ?*activate-OR2-whip[29]-salience* = 0)
(defglobal ?*OR2-whip[29]-salience-1* = 0)
(defglobal ?*OR2-whip[29]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[28]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[28]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[29]-salience* = 0)
(defglobal ?*OR3-forcing-whip[29]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[29]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[29]-salience* = 0)
(defglobal ?*OR3-contrad-whip[29]-salience* = 0)

(defglobal ?*activate-OR3-whip[29]-salience* = 0)
(defglobal ?*OR3-whip[29]-salience-1* = 0)
(defglobal ?*OR3-whip[29]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[28]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[28]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[29]-salience* = 0)
(defglobal ?*OR4-forcing-whip[29]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[29]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[29]-salience* = 0)
(defglobal ?*OR4-contrad-whip[29]-salience* = 0)

(defglobal ?*activate-OR4-whip[29]-salience* = 0)
(defglobal ?*OR4-whip[29]-salience-1* = 0)
(defglobal ?*OR4-whip[29]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[28]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[28]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[29]-salience* = 0)
(defglobal ?*OR5-forcing-whip[29]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[29]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[29]-salience* = 0)
(defglobal ?*OR5-contrad-whip[29]-salience* = 0)

(defglobal ?*activate-OR5-whip[29]-salience* = 0)
(defglobal ?*OR5-whip[29]-salience-1* = 0)
(defglobal ?*OR5-whip[29]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[28]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[28]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[29]-salience* = 0)
(defglobal ?*OR6-forcing-whip[29]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[29]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[29]-salience* = 0)
(defglobal ?*OR6-contrad-whip[29]-salience* = 0)

(defglobal ?*activate-OR6-whip[29]-salience* = 0)
(defglobal ?*OR6-whip[29]-salience-1* = 0)
(defglobal ?*OR6-whip[29]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[28]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[28]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[29]-salience* = 0)
(defglobal ?*OR7-forcing-whip[29]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[29]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[29]-salience* = 0)
(defglobal ?*OR7-contrad-whip[29]-salience* = 0)

(defglobal ?*activate-OR7-whip[29]-salience* = 0)
(defglobal ?*OR7-whip[29]-salience-1* = 0)
(defglobal ?*OR7-whip[29]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[28]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[28]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[29]-salience* = 0)
(defglobal ?*OR8-forcing-whip[29]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[29]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[29]-salience* = 0)
(defglobal ?*OR8-contrad-whip[29]-salience* = 0)

(defglobal ?*activate-OR8-whip[29]-salience* = 0)
(defglobal ?*OR8-whip[29]-salience-1* = 0)
(defglobal ?*OR8-whip[29]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[28]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[28]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[29]-salience* = 0)
(defglobal ?*forcing-whip[29]-value-salience* = 0)
(defglobal ?*forcing-whip[29]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[29]-salience* = 0)
(defglobal ?*forcing-gwhip[29]-value-salience* = 0)
(defglobal ?*forcing-gwhip[29]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[29]-salience* = 0)
(defglobal ?*forcing-braid[29]-value-salience* = 0)
(defglobal ?*forcing-braid[29]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[29]-salience* = 0)
(defglobal ?*forcing-gbraid[29]-value-salience* = 0)
(defglobal ?*forcing-gbraid[29]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[29]-salience* = 0)
(defglobal ?*biwhip[29]-salience* = 0)
(defglobal ?*partial-biwhip[28]-salience* = 0)

(defglobal ?*activate-bibraid[29]-salience* = 0)
(defglobal ?*bibraid[29]-salience* = 0)
(defglobal ?*partial-bibraid[28]-salience* = 0)

(deffunction define-generic-saliences-at-L29 ()
   (bind ?*activate-typed-t-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[29] can be applied before all the typed-t-whips[29] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 29 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[29] can be applied before all the t-whips[29] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 29 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[28]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[28]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[28]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[28]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[28]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[28]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[29]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[29]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[28]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L30: GENERIC RESOLUTION RULES INVOLVING 30 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L30-salience* = 0)
(defglobal ?*activate-typed-t-whip[30]-salience* = 0)
(defglobal ?*typed-t-whip[30]-salience* = 0)

(defglobal ?*activate-t-whip[30]-salience* = 0)
(defglobal ?*t-whip[30]-salience* = 0)

(defglobal ?*activate-typed-whip[30]-salience* = 0)
(defglobal ?*typed-whip[30]-salience* = 0)
(defglobal ?*typed-partial-whip[29]-salience* = 0)

(defglobal ?*activate-whip[30]-salience* = 0)
(defglobal ?*whip[30]-salience* = 0)
(defglobal ?*partial-whip[29]-salience* = 0)

(defglobal ?*activate-g2whip[30]-salience* = 0)
(defglobal ?*g2whip[30]-salience* = 0)
(defglobal ?*partial-g2whip[29]-salience-1* = 0)
(defglobal ?*partial-g2whip[29]-salience-2* = 0)
(defglobal ?*partial-g2whip[29]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[30]-salience* = 0)
(defglobal ?*typed-gwhip[30]-salience* = 0)
(defglobal ?*typed-partial-gwhip[29]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[29]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[29]-salience-3* = 0)

(defglobal ?*activate-gwhip[30]-salience* = 0)
(defglobal ?*gwhip[30]-salience* = 0)
(defglobal ?*partial-gwhip[29]-salience-1* = 0)
(defglobal ?*partial-gwhip[29]-salience-2* = 0)
(defglobal ?*partial-gwhip[29]-salience-3* = 0)

(defglobal ?*activate-braid[30]-salience* = 0)
(defglobal ?*braid[30]-salience* = 0)
(defglobal ?*partial-braid[29]-salience* = 0)

(defglobal ?*activate-gbraid[30]-salience* = 0)
(defglobal ?*gbraid[30]-salience* = 0)
(defglobal ?*partial-gbraid[29]-salience-1* = 0)
(defglobal ?*partial-gbraid[29]-salience-2* = 0)
(defglobal ?*partial-gbraid[29]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[30]-salience* = 0)
(defglobal ?*OR2-forcing-whip[30]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[30]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[30]-salience* = 0)
(defglobal ?*OR2-contrad-whip[30]-salience* = 0)

(defglobal ?*activate-OR2-whip[30]-salience* = 0)
(defglobal ?*OR2-whip[30]-salience-1* = 0)
(defglobal ?*OR2-whip[30]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[29]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[29]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[30]-salience* = 0)
(defglobal ?*OR3-forcing-whip[30]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[30]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[30]-salience* = 0)
(defglobal ?*OR3-contrad-whip[30]-salience* = 0)

(defglobal ?*activate-OR3-whip[30]-salience* = 0)
(defglobal ?*OR3-whip[30]-salience-1* = 0)
(defglobal ?*OR3-whip[30]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[29]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[29]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[30]-salience* = 0)
(defglobal ?*OR4-forcing-whip[30]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[30]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[30]-salience* = 0)
(defglobal ?*OR4-contrad-whip[30]-salience* = 0)

(defglobal ?*activate-OR4-whip[30]-salience* = 0)
(defglobal ?*OR4-whip[30]-salience-1* = 0)
(defglobal ?*OR4-whip[30]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[29]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[29]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[30]-salience* = 0)
(defglobal ?*OR5-forcing-whip[30]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[30]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[30]-salience* = 0)
(defglobal ?*OR5-contrad-whip[30]-salience* = 0)

(defglobal ?*activate-OR5-whip[30]-salience* = 0)
(defglobal ?*OR5-whip[30]-salience-1* = 0)
(defglobal ?*OR5-whip[30]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[29]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[29]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[30]-salience* = 0)
(defglobal ?*OR6-forcing-whip[30]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[30]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[30]-salience* = 0)
(defglobal ?*OR6-contrad-whip[30]-salience* = 0)

(defglobal ?*activate-OR6-whip[30]-salience* = 0)
(defglobal ?*OR6-whip[30]-salience-1* = 0)
(defglobal ?*OR6-whip[30]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[29]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[29]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[30]-salience* = 0)
(defglobal ?*OR7-forcing-whip[30]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[30]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[30]-salience* = 0)
(defglobal ?*OR7-contrad-whip[30]-salience* = 0)

(defglobal ?*activate-OR7-whip[30]-salience* = 0)
(defglobal ?*OR7-whip[30]-salience-1* = 0)
(defglobal ?*OR7-whip[30]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[29]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[29]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[30]-salience* = 0)
(defglobal ?*OR8-forcing-whip[30]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[30]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[30]-salience* = 0)
(defglobal ?*OR8-contrad-whip[30]-salience* = 0)

(defglobal ?*activate-OR8-whip[30]-salience* = 0)
(defglobal ?*OR8-whip[30]-salience-1* = 0)
(defglobal ?*OR8-whip[30]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[29]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[29]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[30]-salience* = 0)
(defglobal ?*forcing-whip[30]-value-salience* = 0)
(defglobal ?*forcing-whip[30]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[30]-salience* = 0)
(defglobal ?*forcing-gwhip[30]-value-salience* = 0)
(defglobal ?*forcing-gwhip[30]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[30]-salience* = 0)
(defglobal ?*forcing-braid[30]-value-salience* = 0)
(defglobal ?*forcing-braid[30]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[30]-salience* = 0)
(defglobal ?*forcing-gbraid[30]-value-salience* = 0)
(defglobal ?*forcing-gbraid[30]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[30]-salience* = 0)
(defglobal ?*biwhip[30]-salience* = 0)
(defglobal ?*partial-biwhip[29]-salience* = 0)

(defglobal ?*activate-bibraid[30]-salience* = 0)
(defglobal ?*bibraid[30]-salience* = 0)
(defglobal ?*partial-bibraid[29]-salience* = 0)

(deffunction define-generic-saliences-at-L30 ()
   (bind ?*activate-typed-t-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[30] can be applied before all the typed-t-whips[30] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 30 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[30] can be applied before all the t-whips[30] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 30 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[29]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[29]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[29]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[29]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[29]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[29]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[30]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[30]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[29]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L31: GENERIC RESOLUTION RULES INVOLVING 31 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L31-salience* = 0)
(defglobal ?*activate-typed-t-whip[31]-salience* = 0)
(defglobal ?*typed-t-whip[31]-salience* = 0)

(defglobal ?*activate-t-whip[31]-salience* = 0)
(defglobal ?*t-whip[31]-salience* = 0)

(defglobal ?*activate-typed-whip[31]-salience* = 0)
(defglobal ?*typed-whip[31]-salience* = 0)
(defglobal ?*typed-partial-whip[30]-salience* = 0)

(defglobal ?*activate-whip[31]-salience* = 0)
(defglobal ?*whip[31]-salience* = 0)
(defglobal ?*partial-whip[30]-salience* = 0)

(defglobal ?*activate-g2whip[31]-salience* = 0)
(defglobal ?*g2whip[31]-salience* = 0)
(defglobal ?*partial-g2whip[30]-salience-1* = 0)
(defglobal ?*partial-g2whip[30]-salience-2* = 0)
(defglobal ?*partial-g2whip[30]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[31]-salience* = 0)
(defglobal ?*typed-gwhip[31]-salience* = 0)
(defglobal ?*typed-partial-gwhip[30]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[30]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[30]-salience-3* = 0)

(defglobal ?*activate-gwhip[31]-salience* = 0)
(defglobal ?*gwhip[31]-salience* = 0)
(defglobal ?*partial-gwhip[30]-salience-1* = 0)
(defglobal ?*partial-gwhip[30]-salience-2* = 0)
(defglobal ?*partial-gwhip[30]-salience-3* = 0)

(defglobal ?*activate-braid[31]-salience* = 0)
(defglobal ?*braid[31]-salience* = 0)
(defglobal ?*partial-braid[30]-salience* = 0)

(defglobal ?*activate-gbraid[31]-salience* = 0)
(defglobal ?*gbraid[31]-salience* = 0)
(defglobal ?*partial-gbraid[30]-salience-1* = 0)
(defglobal ?*partial-gbraid[30]-salience-2* = 0)
(defglobal ?*partial-gbraid[30]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[31]-salience* = 0)
(defglobal ?*OR2-forcing-whip[31]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[31]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[31]-salience* = 0)
(defglobal ?*OR2-contrad-whip[31]-salience* = 0)

(defglobal ?*activate-OR2-whip[31]-salience* = 0)
(defglobal ?*OR2-whip[31]-salience-1* = 0)
(defglobal ?*OR2-whip[31]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[30]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[30]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[31]-salience* = 0)
(defglobal ?*OR3-forcing-whip[31]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[31]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[31]-salience* = 0)
(defglobal ?*OR3-contrad-whip[31]-salience* = 0)

(defglobal ?*activate-OR3-whip[31]-salience* = 0)
(defglobal ?*OR3-whip[31]-salience-1* = 0)
(defglobal ?*OR3-whip[31]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[30]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[30]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[31]-salience* = 0)
(defglobal ?*OR4-forcing-whip[31]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[31]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[31]-salience* = 0)
(defglobal ?*OR4-contrad-whip[31]-salience* = 0)

(defglobal ?*activate-OR4-whip[31]-salience* = 0)
(defglobal ?*OR4-whip[31]-salience-1* = 0)
(defglobal ?*OR4-whip[31]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[30]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[30]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[31]-salience* = 0)
(defglobal ?*OR5-forcing-whip[31]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[31]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[31]-salience* = 0)
(defglobal ?*OR5-contrad-whip[31]-salience* = 0)

(defglobal ?*activate-OR5-whip[31]-salience* = 0)
(defglobal ?*OR5-whip[31]-salience-1* = 0)
(defglobal ?*OR5-whip[31]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[30]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[30]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[31]-salience* = 0)
(defglobal ?*OR6-forcing-whip[31]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[31]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[31]-salience* = 0)
(defglobal ?*OR6-contrad-whip[31]-salience* = 0)

(defglobal ?*activate-OR6-whip[31]-salience* = 0)
(defglobal ?*OR6-whip[31]-salience-1* = 0)
(defglobal ?*OR6-whip[31]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[30]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[30]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[31]-salience* = 0)
(defglobal ?*OR7-forcing-whip[31]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[31]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[31]-salience* = 0)
(defglobal ?*OR7-contrad-whip[31]-salience* = 0)

(defglobal ?*activate-OR7-whip[31]-salience* = 0)
(defglobal ?*OR7-whip[31]-salience-1* = 0)
(defglobal ?*OR7-whip[31]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[30]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[30]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[31]-salience* = 0)
(defglobal ?*OR8-forcing-whip[31]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[31]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[31]-salience* = 0)
(defglobal ?*OR8-contrad-whip[31]-salience* = 0)

(defglobal ?*activate-OR8-whip[31]-salience* = 0)
(defglobal ?*OR8-whip[31]-salience-1* = 0)
(defglobal ?*OR8-whip[31]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[30]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[30]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[31]-salience* = 0)
(defglobal ?*forcing-whip[31]-value-salience* = 0)
(defglobal ?*forcing-whip[31]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[31]-salience* = 0)
(defglobal ?*forcing-gwhip[31]-value-salience* = 0)
(defglobal ?*forcing-gwhip[31]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[31]-salience* = 0)
(defglobal ?*forcing-braid[31]-value-salience* = 0)
(defglobal ?*forcing-braid[31]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[31]-salience* = 0)
(defglobal ?*forcing-gbraid[31]-value-salience* = 0)
(defglobal ?*forcing-gbraid[31]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[31]-salience* = 0)
(defglobal ?*biwhip[31]-salience* = 0)
(defglobal ?*partial-biwhip[30]-salience* = 0)

(defglobal ?*activate-bibraid[31]-salience* = 0)
(defglobal ?*bibraid[31]-salience* = 0)
(defglobal ?*partial-bibraid[30]-salience* = 0)

(deffunction define-generic-saliences-at-L31 ()
   (bind ?*activate-typed-t-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[31] can be applied before all the typed-t-whips[31] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 31 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[31] can be applied before all the t-whips[31] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 31 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[30]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[30]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[30]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[30]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[30]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[30]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[31]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[31]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[30]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L32: GENERIC RESOLUTION RULES INVOLVING 32 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L32-salience* = 0)
(defglobal ?*activate-typed-t-whip[32]-salience* = 0)
(defglobal ?*typed-t-whip[32]-salience* = 0)

(defglobal ?*activate-t-whip[32]-salience* = 0)
(defglobal ?*t-whip[32]-salience* = 0)

(defglobal ?*activate-typed-whip[32]-salience* = 0)
(defglobal ?*typed-whip[32]-salience* = 0)
(defglobal ?*typed-partial-whip[31]-salience* = 0)

(defglobal ?*activate-whip[32]-salience* = 0)
(defglobal ?*whip[32]-salience* = 0)
(defglobal ?*partial-whip[31]-salience* = 0)

(defglobal ?*activate-g2whip[32]-salience* = 0)
(defglobal ?*g2whip[32]-salience* = 0)
(defglobal ?*partial-g2whip[31]-salience-1* = 0)
(defglobal ?*partial-g2whip[31]-salience-2* = 0)
(defglobal ?*partial-g2whip[31]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[32]-salience* = 0)
(defglobal ?*typed-gwhip[32]-salience* = 0)
(defglobal ?*typed-partial-gwhip[31]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[31]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[31]-salience-3* = 0)

(defglobal ?*activate-gwhip[32]-salience* = 0)
(defglobal ?*gwhip[32]-salience* = 0)
(defglobal ?*partial-gwhip[31]-salience-1* = 0)
(defglobal ?*partial-gwhip[31]-salience-2* = 0)
(defglobal ?*partial-gwhip[31]-salience-3* = 0)

(defglobal ?*activate-braid[32]-salience* = 0)
(defglobal ?*braid[32]-salience* = 0)
(defglobal ?*partial-braid[31]-salience* = 0)

(defglobal ?*activate-gbraid[32]-salience* = 0)
(defglobal ?*gbraid[32]-salience* = 0)
(defglobal ?*partial-gbraid[31]-salience-1* = 0)
(defglobal ?*partial-gbraid[31]-salience-2* = 0)
(defglobal ?*partial-gbraid[31]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[32]-salience* = 0)
(defglobal ?*OR2-forcing-whip[32]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[32]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[32]-salience* = 0)
(defglobal ?*OR2-contrad-whip[32]-salience* = 0)

(defglobal ?*activate-OR2-whip[32]-salience* = 0)
(defglobal ?*OR2-whip[32]-salience-1* = 0)
(defglobal ?*OR2-whip[32]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[31]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[31]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[32]-salience* = 0)
(defglobal ?*OR3-forcing-whip[32]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[32]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[32]-salience* = 0)
(defglobal ?*OR3-contrad-whip[32]-salience* = 0)

(defglobal ?*activate-OR3-whip[32]-salience* = 0)
(defglobal ?*OR3-whip[32]-salience-1* = 0)
(defglobal ?*OR3-whip[32]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[31]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[31]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[32]-salience* = 0)
(defglobal ?*OR4-forcing-whip[32]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[32]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[32]-salience* = 0)
(defglobal ?*OR4-contrad-whip[32]-salience* = 0)

(defglobal ?*activate-OR4-whip[32]-salience* = 0)
(defglobal ?*OR4-whip[32]-salience-1* = 0)
(defglobal ?*OR4-whip[32]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[31]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[31]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[32]-salience* = 0)
(defglobal ?*OR5-forcing-whip[32]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[32]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[32]-salience* = 0)
(defglobal ?*OR5-contrad-whip[32]-salience* = 0)

(defglobal ?*activate-OR5-whip[32]-salience* = 0)
(defglobal ?*OR5-whip[32]-salience-1* = 0)
(defglobal ?*OR5-whip[32]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[31]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[31]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[32]-salience* = 0)
(defglobal ?*OR6-forcing-whip[32]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[32]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[32]-salience* = 0)
(defglobal ?*OR6-contrad-whip[32]-salience* = 0)

(defglobal ?*activate-OR6-whip[32]-salience* = 0)
(defglobal ?*OR6-whip[32]-salience-1* = 0)
(defglobal ?*OR6-whip[32]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[31]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[31]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[32]-salience* = 0)
(defglobal ?*OR7-forcing-whip[32]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[32]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[32]-salience* = 0)
(defglobal ?*OR7-contrad-whip[32]-salience* = 0)

(defglobal ?*activate-OR7-whip[32]-salience* = 0)
(defglobal ?*OR7-whip[32]-salience-1* = 0)
(defglobal ?*OR7-whip[32]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[31]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[31]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[32]-salience* = 0)
(defglobal ?*OR8-forcing-whip[32]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[32]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[32]-salience* = 0)
(defglobal ?*OR8-contrad-whip[32]-salience* = 0)

(defglobal ?*activate-OR8-whip[32]-salience* = 0)
(defglobal ?*OR8-whip[32]-salience-1* = 0)
(defglobal ?*OR8-whip[32]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[31]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[31]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[32]-salience* = 0)
(defglobal ?*forcing-whip[32]-value-salience* = 0)
(defglobal ?*forcing-whip[32]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[32]-salience* = 0)
(defglobal ?*forcing-gwhip[32]-value-salience* = 0)
(defglobal ?*forcing-gwhip[32]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[32]-salience* = 0)
(defglobal ?*forcing-braid[32]-value-salience* = 0)
(defglobal ?*forcing-braid[32]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[32]-salience* = 0)
(defglobal ?*forcing-gbraid[32]-value-salience* = 0)
(defglobal ?*forcing-gbraid[32]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[32]-salience* = 0)
(defglobal ?*biwhip[32]-salience* = 0)
(defglobal ?*partial-biwhip[31]-salience* = 0)

(defglobal ?*activate-bibraid[32]-salience* = 0)
(defglobal ?*bibraid[32]-salience* = 0)
(defglobal ?*partial-bibraid[31]-salience* = 0)

(deffunction define-generic-saliences-at-L32 ()
   (bind ?*activate-typed-t-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[32] can be applied before all the typed-t-whips[32] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 32 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[32] can be applied before all the t-whips[32] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 32 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[31]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[31]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[31]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[31]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[31]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[31]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[32]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[32]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[31]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L33: GENERIC RESOLUTION RULES INVOLVING 33 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L33-salience* = 0)
(defglobal ?*activate-typed-t-whip[33]-salience* = 0)
(defglobal ?*typed-t-whip[33]-salience* = 0)

(defglobal ?*activate-t-whip[33]-salience* = 0)
(defglobal ?*t-whip[33]-salience* = 0)

(defglobal ?*activate-typed-whip[33]-salience* = 0)
(defglobal ?*typed-whip[33]-salience* = 0)
(defglobal ?*typed-partial-whip[32]-salience* = 0)

(defglobal ?*activate-whip[33]-salience* = 0)
(defglobal ?*whip[33]-salience* = 0)
(defglobal ?*partial-whip[32]-salience* = 0)

(defglobal ?*activate-g2whip[33]-salience* = 0)
(defglobal ?*g2whip[33]-salience* = 0)
(defglobal ?*partial-g2whip[32]-salience-1* = 0)
(defglobal ?*partial-g2whip[32]-salience-2* = 0)
(defglobal ?*partial-g2whip[32]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[33]-salience* = 0)
(defglobal ?*typed-gwhip[33]-salience* = 0)
(defglobal ?*typed-partial-gwhip[32]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[32]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[32]-salience-3* = 0)

(defglobal ?*activate-gwhip[33]-salience* = 0)
(defglobal ?*gwhip[33]-salience* = 0)
(defglobal ?*partial-gwhip[32]-salience-1* = 0)
(defglobal ?*partial-gwhip[32]-salience-2* = 0)
(defglobal ?*partial-gwhip[32]-salience-3* = 0)

(defglobal ?*activate-braid[33]-salience* = 0)
(defglobal ?*braid[33]-salience* = 0)
(defglobal ?*partial-braid[32]-salience* = 0)

(defglobal ?*activate-gbraid[33]-salience* = 0)
(defglobal ?*gbraid[33]-salience* = 0)
(defglobal ?*partial-gbraid[32]-salience-1* = 0)
(defglobal ?*partial-gbraid[32]-salience-2* = 0)
(defglobal ?*partial-gbraid[32]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[33]-salience* = 0)
(defglobal ?*OR2-forcing-whip[33]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[33]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[33]-salience* = 0)
(defglobal ?*OR2-contrad-whip[33]-salience* = 0)

(defglobal ?*activate-OR2-whip[33]-salience* = 0)
(defglobal ?*OR2-whip[33]-salience-1* = 0)
(defglobal ?*OR2-whip[33]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[32]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[32]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[33]-salience* = 0)
(defglobal ?*OR3-forcing-whip[33]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[33]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[33]-salience* = 0)
(defglobal ?*OR3-contrad-whip[33]-salience* = 0)

(defglobal ?*activate-OR3-whip[33]-salience* = 0)
(defglobal ?*OR3-whip[33]-salience-1* = 0)
(defglobal ?*OR3-whip[33]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[32]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[32]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[33]-salience* = 0)
(defglobal ?*OR4-forcing-whip[33]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[33]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[33]-salience* = 0)
(defglobal ?*OR4-contrad-whip[33]-salience* = 0)

(defglobal ?*activate-OR4-whip[33]-salience* = 0)
(defglobal ?*OR4-whip[33]-salience-1* = 0)
(defglobal ?*OR4-whip[33]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[32]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[32]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[33]-salience* = 0)
(defglobal ?*OR5-forcing-whip[33]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[33]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[33]-salience* = 0)
(defglobal ?*OR5-contrad-whip[33]-salience* = 0)

(defglobal ?*activate-OR5-whip[33]-salience* = 0)
(defglobal ?*OR5-whip[33]-salience-1* = 0)
(defglobal ?*OR5-whip[33]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[32]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[32]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[33]-salience* = 0)
(defglobal ?*OR6-forcing-whip[33]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[33]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[33]-salience* = 0)
(defglobal ?*OR6-contrad-whip[33]-salience* = 0)

(defglobal ?*activate-OR6-whip[33]-salience* = 0)
(defglobal ?*OR6-whip[33]-salience-1* = 0)
(defglobal ?*OR6-whip[33]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[32]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[32]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[33]-salience* = 0)
(defglobal ?*OR7-forcing-whip[33]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[33]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[33]-salience* = 0)
(defglobal ?*OR7-contrad-whip[33]-salience* = 0)

(defglobal ?*activate-OR7-whip[33]-salience* = 0)
(defglobal ?*OR7-whip[33]-salience-1* = 0)
(defglobal ?*OR7-whip[33]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[32]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[32]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[33]-salience* = 0)
(defglobal ?*OR8-forcing-whip[33]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[33]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[33]-salience* = 0)
(defglobal ?*OR8-contrad-whip[33]-salience* = 0)

(defglobal ?*activate-OR8-whip[33]-salience* = 0)
(defglobal ?*OR8-whip[33]-salience-1* = 0)
(defglobal ?*OR8-whip[33]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[32]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[32]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[33]-salience* = 0)
(defglobal ?*forcing-whip[33]-value-salience* = 0)
(defglobal ?*forcing-whip[33]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[33]-salience* = 0)
(defglobal ?*forcing-gwhip[33]-value-salience* = 0)
(defglobal ?*forcing-gwhip[33]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[33]-salience* = 0)
(defglobal ?*forcing-braid[33]-value-salience* = 0)
(defglobal ?*forcing-braid[33]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[33]-salience* = 0)
(defglobal ?*forcing-gbraid[33]-value-salience* = 0)
(defglobal ?*forcing-gbraid[33]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[33]-salience* = 0)
(defglobal ?*biwhip[33]-salience* = 0)
(defglobal ?*partial-biwhip[32]-salience* = 0)

(defglobal ?*activate-bibraid[33]-salience* = 0)
(defglobal ?*bibraid[33]-salience* = 0)
(defglobal ?*partial-bibraid[32]-salience* = 0)

(deffunction define-generic-saliences-at-L33 ()
   (bind ?*activate-typed-t-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[33] can be applied before all the typed-t-whips[33] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 33 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[33] can be applied before all the t-whips[33] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 33 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[32]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[32]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[32]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[32]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[32]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[32]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[33]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[33]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[32]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L34: GENERIC RESOLUTION RULES INVOLVING 34 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L34-salience* = 0)
(defglobal ?*activate-typed-t-whip[34]-salience* = 0)
(defglobal ?*typed-t-whip[34]-salience* = 0)

(defglobal ?*activate-t-whip[34]-salience* = 0)
(defglobal ?*t-whip[34]-salience* = 0)

(defglobal ?*activate-typed-whip[34]-salience* = 0)
(defglobal ?*typed-whip[34]-salience* = 0)
(defglobal ?*typed-partial-whip[33]-salience* = 0)

(defglobal ?*activate-whip[34]-salience* = 0)
(defglobal ?*whip[34]-salience* = 0)
(defglobal ?*partial-whip[33]-salience* = 0)

(defglobal ?*activate-g2whip[34]-salience* = 0)
(defglobal ?*g2whip[34]-salience* = 0)
(defglobal ?*partial-g2whip[33]-salience-1* = 0)
(defglobal ?*partial-g2whip[33]-salience-2* = 0)
(defglobal ?*partial-g2whip[33]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[34]-salience* = 0)
(defglobal ?*typed-gwhip[34]-salience* = 0)
(defglobal ?*typed-partial-gwhip[33]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[33]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[33]-salience-3* = 0)

(defglobal ?*activate-gwhip[34]-salience* = 0)
(defglobal ?*gwhip[34]-salience* = 0)
(defglobal ?*partial-gwhip[33]-salience-1* = 0)
(defglobal ?*partial-gwhip[33]-salience-2* = 0)
(defglobal ?*partial-gwhip[33]-salience-3* = 0)

(defglobal ?*activate-braid[34]-salience* = 0)
(defglobal ?*braid[34]-salience* = 0)
(defglobal ?*partial-braid[33]-salience* = 0)

(defglobal ?*activate-gbraid[34]-salience* = 0)
(defglobal ?*gbraid[34]-salience* = 0)
(defglobal ?*partial-gbraid[33]-salience-1* = 0)
(defglobal ?*partial-gbraid[33]-salience-2* = 0)
(defglobal ?*partial-gbraid[33]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[34]-salience* = 0)
(defglobal ?*OR2-forcing-whip[34]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[34]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[34]-salience* = 0)
(defglobal ?*OR2-contrad-whip[34]-salience* = 0)

(defglobal ?*activate-OR2-whip[34]-salience* = 0)
(defglobal ?*OR2-whip[34]-salience-1* = 0)
(defglobal ?*OR2-whip[34]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[33]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[33]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[34]-salience* = 0)
(defglobal ?*OR3-forcing-whip[34]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[34]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[34]-salience* = 0)
(defglobal ?*OR3-contrad-whip[34]-salience* = 0)

(defglobal ?*activate-OR3-whip[34]-salience* = 0)
(defglobal ?*OR3-whip[34]-salience-1* = 0)
(defglobal ?*OR3-whip[34]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[33]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[33]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[34]-salience* = 0)
(defglobal ?*OR4-forcing-whip[34]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[34]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[34]-salience* = 0)
(defglobal ?*OR4-contrad-whip[34]-salience* = 0)

(defglobal ?*activate-OR4-whip[34]-salience* = 0)
(defglobal ?*OR4-whip[34]-salience-1* = 0)
(defglobal ?*OR4-whip[34]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[33]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[33]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[34]-salience* = 0)
(defglobal ?*OR5-forcing-whip[34]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[34]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[34]-salience* = 0)
(defglobal ?*OR5-contrad-whip[34]-salience* = 0)

(defglobal ?*activate-OR5-whip[34]-salience* = 0)
(defglobal ?*OR5-whip[34]-salience-1* = 0)
(defglobal ?*OR5-whip[34]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[33]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[33]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[34]-salience* = 0)
(defglobal ?*OR6-forcing-whip[34]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[34]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[34]-salience* = 0)
(defglobal ?*OR6-contrad-whip[34]-salience* = 0)

(defglobal ?*activate-OR6-whip[34]-salience* = 0)
(defglobal ?*OR6-whip[34]-salience-1* = 0)
(defglobal ?*OR6-whip[34]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[33]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[33]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[34]-salience* = 0)
(defglobal ?*OR7-forcing-whip[34]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[34]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[34]-salience* = 0)
(defglobal ?*OR7-contrad-whip[34]-salience* = 0)

(defglobal ?*activate-OR7-whip[34]-salience* = 0)
(defglobal ?*OR7-whip[34]-salience-1* = 0)
(defglobal ?*OR7-whip[34]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[33]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[33]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[34]-salience* = 0)
(defglobal ?*OR8-forcing-whip[34]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[34]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[34]-salience* = 0)
(defglobal ?*OR8-contrad-whip[34]-salience* = 0)

(defglobal ?*activate-OR8-whip[34]-salience* = 0)
(defglobal ?*OR8-whip[34]-salience-1* = 0)
(defglobal ?*OR8-whip[34]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[33]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[33]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[34]-salience* = 0)
(defglobal ?*forcing-whip[34]-value-salience* = 0)
(defglobal ?*forcing-whip[34]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[34]-salience* = 0)
(defglobal ?*forcing-gwhip[34]-value-salience* = 0)
(defglobal ?*forcing-gwhip[34]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[34]-salience* = 0)
(defglobal ?*forcing-braid[34]-value-salience* = 0)
(defglobal ?*forcing-braid[34]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[34]-salience* = 0)
(defglobal ?*forcing-gbraid[34]-value-salience* = 0)
(defglobal ?*forcing-gbraid[34]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[34]-salience* = 0)
(defglobal ?*biwhip[34]-salience* = 0)
(defglobal ?*partial-biwhip[33]-salience* = 0)

(defglobal ?*activate-bibraid[34]-salience* = 0)
(defglobal ?*bibraid[34]-salience* = 0)
(defglobal ?*partial-bibraid[33]-salience* = 0)

(deffunction define-generic-saliences-at-L34 ()
   (bind ?*activate-typed-t-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[34] can be applied before all the typed-t-whips[34] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 34 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[34] can be applied before all the t-whips[34] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 34 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[33]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[33]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[33]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[33]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[33]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[33]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[34]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[34]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[33]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L35: GENERIC RESOLUTION RULES INVOLVING 35 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L35-salience* = 0)
(defglobal ?*activate-typed-t-whip[35]-salience* = 0)
(defglobal ?*typed-t-whip[35]-salience* = 0)

(defglobal ?*activate-t-whip[35]-salience* = 0)
(defglobal ?*t-whip[35]-salience* = 0)

(defglobal ?*activate-typed-whip[35]-salience* = 0)
(defglobal ?*typed-whip[35]-salience* = 0)
(defglobal ?*typed-partial-whip[34]-salience* = 0)

(defglobal ?*activate-whip[35]-salience* = 0)
(defglobal ?*whip[35]-salience* = 0)
(defglobal ?*partial-whip[34]-salience* = 0)

(defglobal ?*activate-g2whip[35]-salience* = 0)
(defglobal ?*g2whip[35]-salience* = 0)
(defglobal ?*partial-g2whip[34]-salience-1* = 0)
(defglobal ?*partial-g2whip[34]-salience-2* = 0)
(defglobal ?*partial-g2whip[34]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[35]-salience* = 0)
(defglobal ?*typed-gwhip[35]-salience* = 0)
(defglobal ?*typed-partial-gwhip[34]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[34]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[34]-salience-3* = 0)

(defglobal ?*activate-gwhip[35]-salience* = 0)
(defglobal ?*gwhip[35]-salience* = 0)
(defglobal ?*partial-gwhip[34]-salience-1* = 0)
(defglobal ?*partial-gwhip[34]-salience-2* = 0)
(defglobal ?*partial-gwhip[34]-salience-3* = 0)

(defglobal ?*activate-braid[35]-salience* = 0)
(defglobal ?*braid[35]-salience* = 0)
(defglobal ?*partial-braid[34]-salience* = 0)

(defglobal ?*activate-gbraid[35]-salience* = 0)
(defglobal ?*gbraid[35]-salience* = 0)
(defglobal ?*partial-gbraid[34]-salience-1* = 0)
(defglobal ?*partial-gbraid[34]-salience-2* = 0)
(defglobal ?*partial-gbraid[34]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[35]-salience* = 0)
(defglobal ?*OR2-forcing-whip[35]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[35]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[35]-salience* = 0)
(defglobal ?*OR2-contrad-whip[35]-salience* = 0)

(defglobal ?*activate-OR2-whip[35]-salience* = 0)
(defglobal ?*OR2-whip[35]-salience-1* = 0)
(defglobal ?*OR2-whip[35]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[34]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[34]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[35]-salience* = 0)
(defglobal ?*OR3-forcing-whip[35]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[35]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[35]-salience* = 0)
(defglobal ?*OR3-contrad-whip[35]-salience* = 0)

(defglobal ?*activate-OR3-whip[35]-salience* = 0)
(defglobal ?*OR3-whip[35]-salience-1* = 0)
(defglobal ?*OR3-whip[35]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[34]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[34]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[35]-salience* = 0)
(defglobal ?*OR4-forcing-whip[35]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[35]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[35]-salience* = 0)
(defglobal ?*OR4-contrad-whip[35]-salience* = 0)

(defglobal ?*activate-OR4-whip[35]-salience* = 0)
(defglobal ?*OR4-whip[35]-salience-1* = 0)
(defglobal ?*OR4-whip[35]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[34]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[34]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[35]-salience* = 0)
(defglobal ?*OR5-forcing-whip[35]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[35]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[35]-salience* = 0)
(defglobal ?*OR5-contrad-whip[35]-salience* = 0)

(defglobal ?*activate-OR5-whip[35]-salience* = 0)
(defglobal ?*OR5-whip[35]-salience-1* = 0)
(defglobal ?*OR5-whip[35]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[34]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[34]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[35]-salience* = 0)
(defglobal ?*OR6-forcing-whip[35]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[35]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[35]-salience* = 0)
(defglobal ?*OR6-contrad-whip[35]-salience* = 0)

(defglobal ?*activate-OR6-whip[35]-salience* = 0)
(defglobal ?*OR6-whip[35]-salience-1* = 0)
(defglobal ?*OR6-whip[35]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[34]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[34]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[35]-salience* = 0)
(defglobal ?*OR7-forcing-whip[35]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[35]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[35]-salience* = 0)
(defglobal ?*OR7-contrad-whip[35]-salience* = 0)

(defglobal ?*activate-OR7-whip[35]-salience* = 0)
(defglobal ?*OR7-whip[35]-salience-1* = 0)
(defglobal ?*OR7-whip[35]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[34]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[34]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[35]-salience* = 0)
(defglobal ?*OR8-forcing-whip[35]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[35]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[35]-salience* = 0)
(defglobal ?*OR8-contrad-whip[35]-salience* = 0)

(defglobal ?*activate-OR8-whip[35]-salience* = 0)
(defglobal ?*OR8-whip[35]-salience-1* = 0)
(defglobal ?*OR8-whip[35]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[34]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[34]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[35]-salience* = 0)
(defglobal ?*forcing-whip[35]-value-salience* = 0)
(defglobal ?*forcing-whip[35]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[35]-salience* = 0)
(defglobal ?*forcing-gwhip[35]-value-salience* = 0)
(defglobal ?*forcing-gwhip[35]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[35]-salience* = 0)
(defglobal ?*forcing-braid[35]-value-salience* = 0)
(defglobal ?*forcing-braid[35]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[35]-salience* = 0)
(defglobal ?*forcing-gbraid[35]-value-salience* = 0)
(defglobal ?*forcing-gbraid[35]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[35]-salience* = 0)
(defglobal ?*biwhip[35]-salience* = 0)
(defglobal ?*partial-biwhip[34]-salience* = 0)

(defglobal ?*activate-bibraid[35]-salience* = 0)
(defglobal ?*bibraid[35]-salience* = 0)
(defglobal ?*partial-bibraid[34]-salience* = 0)

(deffunction define-generic-saliences-at-L35 ()
   (bind ?*activate-typed-t-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[35] can be applied before all the typed-t-whips[35] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 35 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[35] can be applied before all the t-whips[35] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 35 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[34]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[34]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[34]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[34]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[34]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[34]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[35]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[35]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[34]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; L36: GENERIC RESOLUTION RULES INVOLVING 36 CSP VARIABLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defglobal ?*first-L36-salience* = 0)
(defglobal ?*activate-typed-t-whip[36]-salience* = 0)
(defglobal ?*typed-t-whip[36]-salience* = 0)

(defglobal ?*activate-t-whip[36]-salience* = 0)
(defglobal ?*t-whip[36]-salience* = 0)

(defglobal ?*activate-typed-whip[36]-salience* = 0)
(defglobal ?*typed-whip[36]-salience* = 0)
(defglobal ?*typed-partial-whip[35]-salience* = 0)

(defglobal ?*activate-whip[36]-salience* = 0)
(defglobal ?*whip[36]-salience* = 0)
(defglobal ?*partial-whip[35]-salience* = 0)

(defglobal ?*activate-g2whip[36]-salience* = 0)
(defglobal ?*g2whip[36]-salience* = 0)
(defglobal ?*partial-g2whip[35]-salience-1* = 0)
(defglobal ?*partial-g2whip[35]-salience-2* = 0)
(defglobal ?*partial-g2whip[35]-salience-3* = 0)

(defglobal ?*activate-typed-gwhip[36]-salience* = 0)
(defglobal ?*typed-gwhip[36]-salience* = 0)
(defglobal ?*typed-partial-gwhip[35]-salience-1* = 0)
(defglobal ?*typed-partial-gwhip[35]-salience-2* = 0)
(defglobal ?*typed-partial-gwhip[35]-salience-3* = 0)

(defglobal ?*activate-gwhip[36]-salience* = 0)
(defglobal ?*gwhip[36]-salience* = 0)
(defglobal ?*partial-gwhip[35]-salience-1* = 0)
(defglobal ?*partial-gwhip[35]-salience-2* = 0)
(defglobal ?*partial-gwhip[35]-salience-3* = 0)

(defglobal ?*activate-braid[36]-salience* = 0)
(defglobal ?*braid[36]-salience* = 0)
(defglobal ?*partial-braid[35]-salience* = 0)

(defglobal ?*activate-gbraid[36]-salience* = 0)
(defglobal ?*gbraid[36]-salience* = 0)
(defglobal ?*partial-gbraid[35]-salience-1* = 0)
(defglobal ?*partial-gbraid[35]-salience-2* = 0)
(defglobal ?*partial-gbraid[35]-salience-3* = 0)

(defglobal ?*activate-OR2-forcing-whip[36]-salience* = 0)
(defglobal ?*OR2-forcing-whip[36]-value-salience* = 0)
(defglobal ?*OR2-forcing-whip[36]-candidate-salience* = 0)

(defglobal ?*activate-OR2-contrad-whip[36]-salience* = 0)
(defglobal ?*OR2-contrad-whip[36]-salience* = 0)

(defglobal ?*activate-OR2-whip[36]-salience* = 0)
(defglobal ?*OR2-whip[36]-salience-1* = 0)
(defglobal ?*OR2-whip[36]-salience-2* = 0)
(defglobal ?*partial-OR2-whip[35]-salience-1* = 0)
(defglobal ?*partial-OR2-whip[35]-salience-2* = 0)

(defglobal ?*activate-OR3-forcing-whip[36]-salience* = 0)
(defglobal ?*OR3-forcing-whip[36]-value-salience* = 0)
(defglobal ?*OR3-forcing-whip[36]-candidate-salience* = 0)

(defglobal ?*activate-OR3-contrad-whip[36]-salience* = 0)
(defglobal ?*OR3-contrad-whip[36]-salience* = 0)

(defglobal ?*activate-OR3-whip[36]-salience* = 0)
(defglobal ?*OR3-whip[36]-salience-1* = 0)
(defglobal ?*OR3-whip[36]-salience-2* = 0)
(defglobal ?*partial-OR3-whip[35]-salience-1* = 0)
(defglobal ?*partial-OR3-whip[35]-salience-2* = 0)

(defglobal ?*activate-OR4-forcing-whip[36]-salience* = 0)
(defglobal ?*OR4-forcing-whip[36]-value-salience* = 0)
(defglobal ?*OR4-forcing-whip[36]-candidate-salience* = 0)

(defglobal ?*activate-OR4-contrad-whip[36]-salience* = 0)
(defglobal ?*OR4-contrad-whip[36]-salience* = 0)

(defglobal ?*activate-OR4-whip[36]-salience* = 0)
(defglobal ?*OR4-whip[36]-salience-1* = 0)
(defglobal ?*OR4-whip[36]-salience-2* = 0)
(defglobal ?*partial-OR4-whip[35]-salience-1* = 0)
(defglobal ?*partial-OR4-whip[35]-salience-2* = 0)

(defglobal ?*activate-OR5-forcing-whip[36]-salience* = 0)
(defglobal ?*OR5-forcing-whip[36]-value-salience* = 0)
(defglobal ?*OR5-forcing-whip[36]-candidate-salience* = 0)

(defglobal ?*activate-OR5-contrad-whip[36]-salience* = 0)
(defglobal ?*OR5-contrad-whip[36]-salience* = 0)

(defglobal ?*activate-OR5-whip[36]-salience* = 0)
(defglobal ?*OR5-whip[36]-salience-1* = 0)
(defglobal ?*OR5-whip[36]-salience-2* = 0)
(defglobal ?*partial-OR5-whip[35]-salience-1* = 0)
(defglobal ?*partial-OR5-whip[35]-salience-2* = 0)

(defglobal ?*activate-OR6-forcing-whip[36]-salience* = 0)
(defglobal ?*OR6-forcing-whip[36]-value-salience* = 0)
(defglobal ?*OR6-forcing-whip[36]-candidate-salience* = 0)

(defglobal ?*activate-OR6-contrad-whip[36]-salience* = 0)
(defglobal ?*OR6-contrad-whip[36]-salience* = 0)

(defglobal ?*activate-OR6-whip[36]-salience* = 0)
(defglobal ?*OR6-whip[36]-salience-1* = 0)
(defglobal ?*OR6-whip[36]-salience-2* = 0)
(defglobal ?*partial-OR6-whip[35]-salience-1* = 0)
(defglobal ?*partial-OR6-whip[35]-salience-2* = 0)

(defglobal ?*activate-OR7-forcing-whip[36]-salience* = 0)
(defglobal ?*OR7-forcing-whip[36]-value-salience* = 0)
(defglobal ?*OR7-forcing-whip[36]-candidate-salience* = 0)

(defglobal ?*activate-OR7-contrad-whip[36]-salience* = 0)
(defglobal ?*OR7-contrad-whip[36]-salience* = 0)

(defglobal ?*activate-OR7-whip[36]-salience* = 0)
(defglobal ?*OR7-whip[36]-salience-1* = 0)
(defglobal ?*OR7-whip[36]-salience-2* = 0)
(defglobal ?*partial-OR7-whip[35]-salience-1* = 0)
(defglobal ?*partial-OR7-whip[35]-salience-2* = 0)

(defglobal ?*activate-OR8-forcing-whip[36]-salience* = 0)
(defglobal ?*OR8-forcing-whip[36]-value-salience* = 0)
(defglobal ?*OR8-forcing-whip[36]-candidate-salience* = 0)

(defglobal ?*activate-OR8-contrad-whip[36]-salience* = 0)
(defglobal ?*OR8-contrad-whip[36]-salience* = 0)

(defglobal ?*activate-OR8-whip[36]-salience* = 0)
(defglobal ?*OR8-whip[36]-salience-1* = 0)
(defglobal ?*OR8-whip[36]-salience-2* = 0)
(defglobal ?*partial-OR8-whip[35]-salience-1* = 0)
(defglobal ?*partial-OR8-whip[35]-salience-2* = 0)

(defglobal ?*activate-forcing-whip[36]-salience* = 0)
(defglobal ?*forcing-whip[36]-value-salience* = 0)
(defglobal ?*forcing-whip[36]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gwhip[36]-salience* = 0)
(defglobal ?*forcing-gwhip[36]-value-salience* = 0)
(defglobal ?*forcing-gwhip[36]-candidate-salience* = 0)

(defglobal ?*activate-forcing-braid[36]-salience* = 0)
(defglobal ?*forcing-braid[36]-value-salience* = 0)
(defglobal ?*forcing-braid[36]-candidate-salience* = 0)

(defglobal ?*activate-forcing-gbraid[36]-salience* = 0)
(defglobal ?*forcing-gbraid[36]-value-salience* = 0)
(defglobal ?*forcing-gbraid[36]-candidate-salience* = 0)

(defglobal ?*activate-biwhip[36]-salience* = 0)
(defglobal ?*biwhip[36]-salience* = 0)
(defglobal ?*partial-biwhip[35]-salience* = 0)

(defglobal ?*activate-bibraid[36]-salience* = 0)
(defglobal ?*bibraid[36]-salience* = 0)
(defglobal ?*partial-bibraid[35]-salience* = 0)

(deffunction define-generic-saliences-at-L36 ()
   (bind ?*activate-typed-t-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-t-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Typed-Whips and Typed-t-Whips are both active, lower the salience of Typed-Whips,
   ;;; so that no typed-whip[36] can be applied before all the typed-t-whips[36] have had their chance
   ;;; Beware: this makes typed-whips less efficient
   (if (and ?*Typed-Whips* ?*Typed-t-Whips* (<= 36 ?*typed-t-whips-max-length*)) then
      (bind ?*activate-typed-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*typed-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-t-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*t-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-whip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   ;;; in case Whips and t-Whips are both active, lower the salience of Whips,
   ;;; so that no whip[36] can be applied before all the t-whips[36] have had their chance
   ;;; Beware: this makes whips less efficient
   (if (and ?*Whips* ?*t-Whips* (<= 36 ?*t-whips-max-length*)) then
      (bind ?*activate-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-g2whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*g2whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-g2whip[35]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-typed-gwhip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?typed-*gwhip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*typed-partial-gwhip[35]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gwhip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gwhip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gwhip[35]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-braid[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*braid[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-braid[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-gbraid[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*gbraid[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-gbraid[35]-salience-3* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR2-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[36]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR2-whip[36]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR2-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR2-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR2-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR3-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR3-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[36]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR3-whip[36]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR3-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR3-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR3-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR4-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR4-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[36]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR4-whip[36]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR4-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR4-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR4-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR5-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR5-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[36]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR5-whip[36]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR5-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR5-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR5-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR6-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR6-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[36]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR6-whip[36]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR6-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR6-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR6-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR7-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR7-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[36]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR7-whip[36]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR7-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR7-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR7-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-OR8-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-contrad-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-OR8-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[36]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*OR8-whip[36]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[35]-salience-1* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-OR8-whip[35]-salience-2* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (if (not ?*ORk-Forcing-Whips-before-ORk-Whips* ) then
      (bind ?*activate-OR8-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
      (bind ?*OR8-forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   )

   (bind ?*activate-forcing-whip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-whip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gwhip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gwhip[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-braid[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-braid[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-forcing-gbraid[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[36]-value-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*forcing-gbraid[36]-candidate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-biwhip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*biwhip[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-biwhip[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

   (bind ?*activate-bibraid[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*bibraid[36]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
   (bind ?*partial-bibraid[35]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; AFTER GENERIC SALIENCES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defglobal ?*all-biwhip-contrads-count-salience* = 0)
(defglobal ?*all-bibraid-contrads-count-salience* = 0)

(deffunction end-define-generic-bi-saliences ()
    (bind ?*all-biwhip-contrads-count-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*all-bibraid-contrads-count-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; IN CASE TRIAL-AND-ERROR IS ALLOWED: HYPOTHESIS GENERATION, PHASE AND CONTEXT MANAGEMENT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; The following must be after all the resolution rules

(defglobal ?*activate-TE-salience* = 0)
(defglobal ?*start-TE-salience* = 0)
(defglobal ?*TE-salience* = 0)
(defglobal ?*TEb-salience* = 0)
(defglobal ?*level3-no-contrad-found-in-context-salience* = 0)
(defglobal ?*level3-generate-special-context-salience* = 0)
(defglobal ?*level3-generate-context-salience* = 0)
(defglobal ?*level3-iterate-phase-salience* = 0)

(defglobal ?*level2-no-contrad-found-in-context-salience* = 0)
(defglobal ?*level2-generate-special-context-salience* = 0)
(defglobal ?*level2-generate-context-salience* = 0)
(defglobal ?*level2-iterate-phase-salience* = 0)

(defglobal ?*level1-no-contrad-found-in-context-salience* = 0)
(defglobal ?*level1-generate-special-context-salience* = 0)
(defglobal ?*level1-generate-context-salience* = 0)
(defglobal ?*level1-iterate-phase-salience* = 0)

(defglobal ?*no-contrad-found-in-context-salience* = 0)
(defglobal ?*generate-context-salience* = 0)
(defglobal ?*iterate-phase-salience* = 0)

(defglobal ?*end-TE-salience* = 0)
(defglobal ?*TE-clean-salience* = 0)
(defglobal ?*biTE-re-activate-salience* = 0)


(deffunction define-TE-saliences ()
    (bind ?*activate-TE-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*start-TE-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*TE-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*TEb-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*level3-no-contrad-found-in-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*level3-generate-special-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*level3-generate-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*level3-iterate-phase-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*level2-no-contrad-found-in-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*level2-generate-special-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*level2-generate-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*level2-iterate-phase-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*level1-no-contrad-found-in-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*level1-generate-special-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*level1-generate-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*level1-iterate-phase-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*no-contrad-found-in-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*generate-context-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?iterate-phase-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))

    (bind ?*end-TE-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*TE-clean-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))


    ;;; if both T&E and bi-T&E are used:
    ;;; initially, T&E is used before bi-TE (in spite of its lower salience), because there is no (technique 0 biTE) fact;
    ;;; when T&E has finished, bi-T&E is activated, with salience > T&E, so that it can't be interrupted by TE
    ;;; it is then self de-activated, so that it can't interrupt T&E
    ;;; and so on

    (bind ?*biTE-re-activate-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)



(defglobal ?*DFS-no-contrad-found-in-context-salience* = 0)
(defglobal ?*DFS-contradiction-found-in-context-salience* = 0)
(defglobal ?*DFS-solution-found-in-context-salience* = 0)
(defglobal ?*DFS-generate-special-context-salience* = 0)
(defglobal ?*DFS-generate-context-salience* = 0)


(deffunction define-DFS-saliences ()
    (bind ?*DFS-no-contrad-found-in-context-salience* (- ?*next-rule-salience* 1))
    (bind ?*DFS-contradiction-found-in-context-salience* (- ?*next-rule-salience* 1))
    (bind ?*DFS-solution-found-in-context-salience* (- ?*next-rule-salience* 1))
    (bind ?*DFS-generate-special-context-salience* (- ?*next-rule-salience* 1))
    (bind ?*DFS-generate-context-salience* (- ?*next-rule-salience* 1))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; MISCELLANEA
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; the following rules are not programmed in the generic part of CSP-Rules
;;; but it is convenient to have their saliences defined here for applications sake

(defglobal ?*activate-pairs-salience* = 0)
(defglobal ?*pairs-salience* = 0)

(defglobal ?*activate-triplets-salience* = 0)
(defglobal ?*triplets-salience* = 0)

(defglobal ?*activate-quads-salience* = 0)
(defglobal ?*quads-salience* = 0)

(defglobal ?*activate-subset[5]-salience* = 0)
(defglobal ?*subset[5]-salience* = 0)

(defglobal ?*activate-subset[6]-salience* = 0)
(defglobal ?*subset[6]-salience* = 0)


(deffunction define-generic-template-saliences ()
    TRUE
)






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;
;;; DEFINE APPLICATION-SPECIFIC SALIENCES AT EACH LEVEL, BOTH PRE-GENERIC AND POST-GENERIC
;;;
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; These specific salience functions may be redefined by each application
;;; Saliences for Subsets or exotic patterns can typically be defined by these functions
;;; as shown below


(deffunction define-specific-saliences-at-L1 () TRUE)

(deffunction define-specific-saliences-at-L2 () 
    (bind ?*activate-pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*pairs-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L3 ()
    (bind ?*activate-triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*triplets-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L4 ()
    (bind ?*activate-quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*quads-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L5 () 
    (bind ?*activate-subset[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*subset[5]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L6 () 
    (bind ?*activate-subset[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
    (bind ?*subset[6]-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)

(deffunction define-specific-saliences-at-L7 () TRUE)
(deffunction define-specific-saliences-at-L8 () TRUE)
(deffunction define-specific-saliences-at-L9 () TRUE)
(deffunction define-specific-saliences-at-L10 () TRUE)
(deffunction define-specific-saliences-at-L11 () TRUE)
(deffunction define-specific-saliences-at-L12 () TRUE)
(deffunction define-specific-saliences-at-L13 () TRUE)
(deffunction define-specific-saliences-at-L14 () TRUE)
(deffunction define-specific-saliences-at-L15 () TRUE)
(deffunction define-specific-saliences-at-L16 () TRUE)
(deffunction define-specific-saliences-at-L17 () TRUE)
(deffunction define-specific-saliences-at-L18 () TRUE)
(deffunction define-specific-saliences-at-L19 () TRUE)
(deffunction define-specific-saliences-at-L20 () TRUE)
(deffunction define-specific-saliences-at-L21 () TRUE)
(deffunction define-specific-saliences-at-L22 () TRUE)
(deffunction define-specific-saliences-at-L23 () TRUE)
(deffunction define-specific-saliences-at-L24 () TRUE)
(deffunction define-specific-saliences-at-L25 () TRUE)
(deffunction define-specific-saliences-at-L26 () TRUE)
(deffunction define-specific-saliences-at-L27 () TRUE)
(deffunction define-specific-saliences-at-L28 () TRUE)
(deffunction define-specific-saliences-at-L29 () TRUE)
(deffunction define-specific-saliences-at-L30 () TRUE)
(deffunction define-specific-saliences-at-L31 () TRUE)
(deffunction define-specific-saliences-at-L32 () TRUE)
(deffunction define-specific-saliences-at-L33 () TRUE)
(deffunction define-specific-saliences-at-L34 () TRUE)
(deffunction define-specific-saliences-at-L35 () TRUE)
(deffunction define-specific-saliences-at-L36 () TRUE)


(deffunction define-post-generic-saliences-at-L1 () TRUE)
(deffunction define-post-generic-saliences-at-L2 () TRUE)
(deffunction define-post-generic-saliences-at-L3 () TRUE)
(deffunction define-post-generic-saliences-at-L4 () TRUE)
(deffunction define-post-generic-saliences-at-L5 () TRUE)
(deffunction define-post-generic-saliences-at-L6 () TRUE)
(deffunction define-post-generic-saliences-at-L7 () TRUE)
(deffunction define-post-generic-saliences-at-L8 () TRUE)
(deffunction define-post-generic-saliences-at-L9 () TRUE)
(deffunction define-post-generic-saliences-at-L10 () TRUE)
(deffunction define-post-generic-saliences-at-L11 () TRUE)
(deffunction define-post-generic-saliences-at-L12 () TRUE)
(deffunction define-post-generic-saliences-at-L13 () TRUE)
(deffunction define-post-generic-saliences-at-L14 () TRUE)
(deffunction define-post-generic-saliences-at-L15 () TRUE)
(deffunction define-post-generic-saliences-at-L16 () TRUE)
(deffunction define-post-generic-saliences-at-L17 () TRUE)
(deffunction define-post-generic-saliences-at-L18 () TRUE)
(deffunction define-post-generic-saliences-at-L19 () TRUE)
(deffunction define-post-generic-saliences-at-L20 () TRUE)
(deffunction define-post-generic-saliences-at-L21 () TRUE)
(deffunction define-post-generic-saliences-at-L22 () TRUE)
(deffunction define-post-generic-saliences-at-L23 () TRUE)
(deffunction define-post-generic-saliences-at-L24 () TRUE)
(deffunction define-post-generic-saliences-at-L25 () TRUE)
(deffunction define-post-generic-saliences-at-L26 () TRUE)
(deffunction define-post-generic-saliences-at-L27 () TRUE)
(deffunction define-post-generic-saliences-at-L28 () TRUE)
(deffunction define-post-generic-saliences-at-L29 () TRUE)
(deffunction define-post-generic-saliences-at-L30 () TRUE)
(deffunction define-post-generic-saliences-at-L31 () TRUE)
(deffunction define-post-generic-saliences-at-L32 () TRUE)
(deffunction define-post-generic-saliences-at-L33 () TRUE)
(deffunction define-post-generic-saliences-at-L34 () TRUE)
(deffunction define-post-generic-saliences-at-L35 () TRUE)
(deffunction define-post-generic-saliences-at-L36 () TRUE)



(deffunction define-specific-template-saliences ()
    TRUE
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DEFINE ALL SALIENCES AT EACH LEVEL
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; At each level, there are four types of saliences:
;;; - a (generic) first salience for this level for level management purposes (currently not used),
;;; - (pre-generic) application-specific saliences,
;;; - generic saliences,
;;; - and post-generic saliences (post-generic saliences may be e.g. set-covers) (currently not used).
;;; The generic saliences shouldn't be changed by any application.

(deffunction define-first-L2-salience ()    (bind ?*first-L2-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L3-salience ()    (bind ?*first-L3-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L4-salience ()    (bind ?*first-L4-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L5-salience ()    (bind ?*first-L5-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L6-salience ()    (bind ?*first-L6-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L7-salience ()    (bind ?*first-L7-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L8-salience ()    (bind ?*first-L8-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L9-salience ()    (bind ?*first-L9-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L10-salience ()    (bind ?*first-L10-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L11-salience ()    (bind ?*first-L11-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L12-salience ()    (bind ?*first-L12-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L13-salience ()    (bind ?*first-L13-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L14-salience ()    (bind ?*first-L14-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L15-salience ()    (bind ?*first-L15-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L16-salience ()    (bind ?*first-L16-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L17-salience ()    (bind ?*first-L17-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L18-salience ()    (bind ?*first-L18-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L19-salience ()    (bind ?*first-L19-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L20-salience ()    (bind ?*first-L20-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L21-salience ()    (bind ?*first-L21-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L22-salience ()    (bind ?*first-L22-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L23-salience ()    (bind ?*first-L23-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L24-salience ()    (bind ?*first-L24-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L25-salience ()    (bind ?*first-L25-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L26-salience ()    (bind ?*first-L26-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L27-salience ()    (bind ?*first-L27-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L28-salience ()    (bind ?*first-L28-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L29-salience ()    (bind ?*first-L29-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L30-salience ()    (bind ?*first-L30-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L31-salience ()    (bind ?*first-L31-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L32-salience ()    (bind ?*first-L32-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L33-salience ()    (bind ?*first-L33-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L34-salience ()    (bind ?*first-L34-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L35-salience ()    (bind ?*first-L35-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))
(deffunction define-first-L36-salience ()    (bind ?*first-L36-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1))))



(deffunction define-saliences-at-L1 ()
    (define-specific-saliences-at-L1)
    (define-generic-saliences-at-L1)
    (define-post-generic-saliences-at-L1)
)
(deffunction define-saliences-at-L2 ()
   (define-first-L2-salience)
   (define-specific-saliences-at-L2)
   (define-generic-saliences-at-L2)
   (define-post-generic-saliences-at-L2)
)
(deffunction define-saliences-at-L3 ()
   (define-first-L3-salience)
   (define-specific-saliences-at-L3)
   (define-generic-saliences-at-L3)
   (define-post-generic-saliences-at-L3)
)
(deffunction define-saliences-at-L4 ()
   (define-first-L4-salience)
   (define-specific-saliences-at-L4)
   (define-generic-saliences-at-L4)
   (define-post-generic-saliences-at-L4)
)
(deffunction define-saliences-at-L5 ()
   (define-first-L5-salience)
   (define-specific-saliences-at-L5)
   (define-generic-saliences-at-L5)
   (define-post-generic-saliences-at-L5)
)
(deffunction define-saliences-at-L6 ()
   (define-first-L6-salience)
   (define-specific-saliences-at-L6)
   (define-generic-saliences-at-L6)
   (define-post-generic-saliences-at-L6)
)
(deffunction define-saliences-at-L7 ()
   (define-first-L7-salience)
   (define-specific-saliences-at-L7)
   (define-generic-saliences-at-L7)
   (define-post-generic-saliences-at-L7)
)
(deffunction define-saliences-at-L8 ()
   (define-first-L8-salience)
   (define-specific-saliences-at-L8)
   (define-generic-saliences-at-L8)
   (define-post-generic-saliences-at-L8)
)
(deffunction define-saliences-at-L9 ()
   (define-first-L9-salience)
   (define-specific-saliences-at-L9)
   (define-generic-saliences-at-L9)
   (define-post-generic-saliences-at-L9)
)
(deffunction define-saliences-at-L10 ()
   (define-first-L10-salience)
   (define-specific-saliences-at-L10)
   (define-generic-saliences-at-L10)
   (define-post-generic-saliences-at-L10)
)
(deffunction define-saliences-at-L11 ()
   (define-first-L11-salience)
   (define-specific-saliences-at-L11)
   (define-generic-saliences-at-L11)
   (define-post-generic-saliences-at-L11)
)
(deffunction define-saliences-at-L12 ()
   (define-first-L12-salience)
   (define-specific-saliences-at-L12)
   (define-generic-saliences-at-L12)
   (define-post-generic-saliences-at-L12)
)
(deffunction define-saliences-at-L13 ()
   (define-first-L13-salience)
   (define-specific-saliences-at-L13)
   (define-generic-saliences-at-L13)
   (define-post-generic-saliences-at-L13)
)
(deffunction define-saliences-at-L14 ()
   (define-first-L14-salience)
   (define-specific-saliences-at-L14)
   (define-generic-saliences-at-L14)
   (define-post-generic-saliences-at-L14)
)
(deffunction define-saliences-at-L15 ()
   (define-first-L15-salience)
   (define-specific-saliences-at-L15)
   (define-generic-saliences-at-L15)
   (define-post-generic-saliences-at-L15)
)
(deffunction define-saliences-at-L16 ()
   (define-first-L16-salience)
   (define-specific-saliences-at-L16)
   (define-generic-saliences-at-L16)
   (define-post-generic-saliences-at-L16)
)
(deffunction define-saliences-at-L17 ()
   (define-first-L17-salience)
   (define-specific-saliences-at-L17)
   (define-generic-saliences-at-L17)
   (define-post-generic-saliences-at-L17)
)
(deffunction define-saliences-at-L18 ()
   (define-first-L18-salience)
   (define-specific-saliences-at-L18)
   (define-generic-saliences-at-L18)
   (define-post-generic-saliences-at-L18)
)
(deffunction define-saliences-at-L19 ()
   (define-first-L19-salience)
   (define-specific-saliences-at-L19)
   (define-generic-saliences-at-L19)
   (define-post-generic-saliences-at-L19)
)
(deffunction define-saliences-at-L20 ()
   (define-first-L20-salience)
   (define-specific-saliences-at-L20)
   (define-generic-saliences-at-L20)
   (define-post-generic-saliences-at-L20)
)
(deffunction define-saliences-at-L21 ()
   (define-first-L21-salience)
   (define-specific-saliences-at-L21)
   (define-generic-saliences-at-L21)
   (define-post-generic-saliences-at-L21)
)
(deffunction define-saliences-at-L22 ()
   (define-first-L22-salience)
   (define-specific-saliences-at-L22)
   (define-generic-saliences-at-L22)
   (define-post-generic-saliences-at-L22)
)
(deffunction define-saliences-at-L23 ()
   (define-first-L23-salience)
   (define-specific-saliences-at-L23)
   (define-generic-saliences-at-L23)
   (define-post-generic-saliences-at-L23)
)
(deffunction define-saliences-at-L24 ()
   (define-first-L24-salience)
   (define-specific-saliences-at-L24)
   (define-generic-saliences-at-L24)
   (define-post-generic-saliences-at-L24)
)
(deffunction define-saliences-at-L25 ()
   (define-first-L25-salience)
   (define-specific-saliences-at-L25)
   (define-generic-saliences-at-L25)
   (define-post-generic-saliences-at-L25)
)
(deffunction define-saliences-at-L26 ()
   (define-first-L26-salience)
   (define-specific-saliences-at-L26)
   (define-generic-saliences-at-L26)
   (define-post-generic-saliences-at-L26)
)
(deffunction define-saliences-at-L27 ()
   (define-first-L27-salience)
   (define-specific-saliences-at-L27)
   (define-generic-saliences-at-L27)
   (define-post-generic-saliences-at-L27)
)
(deffunction define-saliences-at-L28 ()
   (define-first-L28-salience)
   (define-specific-saliences-at-L28)
   (define-generic-saliences-at-L28)
   (define-post-generic-saliences-at-L28)
)
(deffunction define-saliences-at-L29 ()
   (define-first-L29-salience)
   (define-specific-saliences-at-L29)
   (define-generic-saliences-at-L29)
   (define-post-generic-saliences-at-L29)
)
(deffunction define-saliences-at-L30 ()
   (define-first-L30-salience)
   (define-specific-saliences-at-L30)
   (define-generic-saliences-at-L30)
   (define-post-generic-saliences-at-L30)
)
(deffunction define-saliences-at-L31 ()
   (define-first-L31-salience)
   (define-specific-saliences-at-L31)
   (define-generic-saliences-at-L31)
   (define-post-generic-saliences-at-L31)
)
(deffunction define-saliences-at-L32 ()
   (define-first-L32-salience)
   (define-specific-saliences-at-L32)
   (define-generic-saliences-at-L32)
   (define-post-generic-saliences-at-L32)
)
(deffunction define-saliences-at-L33 ()
   (define-first-L33-salience)
   (define-specific-saliences-at-L33)
   (define-generic-saliences-at-L33)
   (define-post-generic-saliences-at-L33)
)
(deffunction define-saliences-at-L34 ()
   (define-first-L34-salience)
   (define-specific-saliences-at-L34)
   (define-generic-saliences-at-L34)
   (define-post-generic-saliences-at-L34)
)
(deffunction define-saliences-at-L35 ()
   (define-first-L35-salience)
   (define-specific-saliences-at-L35)
   (define-generic-saliences-at-L35)
   (define-post-generic-saliences-at-L35)
)
(deffunction define-saliences-at-L36 ()
   (define-first-L36-salience)
   (define-specific-saliences-at-L36)
   (define-generic-saliences-at-L36)
   (define-post-generic-saliences-at-L36)
)



(deffunction define-template-saliences ()
	(define-specific-template-saliences)
	(define-generic-template-saliences)
)


;;; final saliences

(deffunction define-specific-final-saliences () TRUE)

(defglobal ?*print-final-state-salience* = 0)

(deffunction define-generic-final-saliences ()
    ;;; in case no solution is found
    (bind ?*print-final-state-salience* (bind ?*next-rule-salience* (- ?*next-rule-salience* 1)))
)


(deffunction define-final-saliences () 
	(define-specific-final-saliences)
	(define-generic-final-saliences)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; FINALLY, INITIALISE ALL THE SALIENCES ACCORDING TO THEIR LEVEL
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(deffunction initialise-saliences ()
	(define-saliences-at-L0)
	(define-no-confluence-saliences) ;;; <<<< do not forget these
	(define-saliences-at-L1)
    (define-bivalue-saliences) ;;; <<<< do not forget these
    (define-k-value-saliences) ;;; <<<< do not forget these
	(define-saliences-at-L2)
	(define-saliences-at-L3)
	(define-saliences-at-L4)
	(define-saliences-at-L5)
	(define-saliences-at-L6)
	(define-saliences-at-L7)
	(define-saliences-at-L8)
	(define-saliences-at-L9)
	(define-saliences-at-L10)
	(define-saliences-at-L11)
	(define-saliences-at-L12)
	(define-saliences-at-L13)
	(define-saliences-at-L14)
	(define-saliences-at-L15)
	(define-saliences-at-L16)
	(define-saliences-at-L17)
	(define-saliences-at-L18)
	(define-saliences-at-L19)
	(define-saliences-at-L20)
	(define-saliences-at-L21)
	(define-saliences-at-L22)
	(define-saliences-at-L23)
	(define-saliences-at-L24)
	(define-saliences-at-L25)
	(define-saliences-at-L26)
	(define-saliences-at-L27)
	(define-saliences-at-L28)
	(define-saliences-at-L29)
	(define-saliences-at-L30)
	(define-saliences-at-L31)
	(define-saliences-at-L32)
	(define-saliences-at-L33)
	(define-saliences-at-L34)
	(define-saliences-at-L35)
	(define-saliences-at-L36)
    (end-define-generic-bi-saliences)

    (define-TE-saliences)
    (define-template-saliences)
    (define-DFS-saliences)
    (bind ?*next-rule-salience* (- ?*next-rule-salience* 1 ?*DFS-max-depth*))
    (define-final-saliences)
    (bind ?*saliences-initialised* TRUE)
)






