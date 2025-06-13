
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              SLITHERRULES CONFIGURATION FILE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;  https://github.com/denis-berthier/CSP-Rules-V2.1  ;;;
               ;;;            January 2006 - December 2023            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(clear)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; INSTALLATION ONLY:
;;; Define environment variables: OS and installation directory
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Default setting is for Unix and MacOS,
;;; but it should also work for recent versions of Windows:
(defglobal ?*Directory-symbol* = "/")


;;; Define your general CSP-Rules installation directory (including the ending directory symbol /).
;;; This is the directory in which the CSP-Rules-V2.1 version is installed, not the CSP-Rules-V2.1 directory.
;;; By defining the path in an absolute way, you will be able to launch CSP-Rules-V2.1 from anywhere.
;;; You need to write something as follows.
;;; For Unix (including MacOS):
 (defglobal ?*CSP-Rules* = "/Users/berthier/Projects/CSP-Rules/")   ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;;; For Windows:
; (defglobal ?*CSP-Rules* = "c:/Users/berthier/Projects/CSP-Rules/") ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


;;; compatibility with JESS is no longer guaranteed and CLIPS is the default inference engine
;;; the version of CLIPS used may be defined here (used only for displaying it in the banner)
(defglobal ?*Clips-version* = "6.33-r956");                                  <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


;;; Description of the computer used to run CSP-Rules
(defglobal ?*Computer-description* =
    "MacBookPro 16'' M1Max 2021 3.2GHz, 64GB LPDDR5, MacOS 14.4"
)                                                                            <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Define the application
;;; Define useful directories and load all the globals
;;; (they must be available before choosing the configuration of rules)
;;;
;;; do NOT change any of the following
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; an ?*Application* must be defined as the name of the application (here, SlitherRules), not as the name of the puzzle (Slitherlink)
;;; this name must coincide with the leading part of the name of the directory for the application inside the CSP-Rules-V2.1 directory
;;; the version number of the ?*Application* must also be defined
;;; this allows to have several versions of the same application based on the same version of CSP-Rules
(defglobal ?*Application* = "SlitherRules")
(defglobal ?*Application-VersionNumber* = 2.1)

(defglobal ?*CSP-Rules-current-version* = (str-cat ?*CSP-Rules* "CSP-Rules-V2.1" ?*Directory-symbol*))
(defglobal ?*CSP-Rules-Generic-Dir* = (str-cat ?*CSP-Rules-current-version* "CSP-Rules-Generic" ?*Directory-symbol*))
(defglobal ?*CSP-Rules-Generic-Loader* = (str-cat ?*CSP-Rules-Generic-Dir* "CSP-Rules-Generic-Loader.clp"))

(defglobal ?*Application-Dir* = (str-cat ?*CSP-Rules-current-version* ?*Application* "-V" ?*Application-VersionNumber* ?*Directory-symbol*))
(defglobal ?*Application-Loader* = (str-cat ?*Application-Dir* ?*Application* "-Loader.clp"))

;;; load declarations of the global variables necessary for the upcoming choices
(load (str-cat ?*CSP-Rules-Generic-Dir* "GENERAL" ?*Directory-symbol* "globals.clp"))
(load (str-cat ?*Application-Dir* "GENERAL" ?*Directory-symbol* "globals.clp"))





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; General application-specific choices
;;; Default selection of the application-specific resolution rules to be used
;;; By default, only BRT and the CTR-CTR rules are loaded)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                                                      ;;;
;;;                                      DEFINE YOUR CONFIGURATION HERE:                                 ;;;
;;;                                         Choose general settings                                      ;;;
;;;                     Define your resolution theory (i.e. your set of resolution rules)                ;;;
;;;                         Simply delete the leading semicolon of the proper line(s)                    ;;;
;;;                In order to avoid errors, delete semi-colons in only one section at a time            ;;;
;;;                                                                                                      ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                                                      ;;;
;;;                                                                                                      ;;;
;;;                                                                                                      ;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 0) Choose general settings
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; DON'T CHANGE ANYTHING IN THIS SECTION UNLESS YOU HAVE SOME REASON

;;; Possibly change the type of optimisation for the chain rules.
;;; Default is pre-defined as SPEED.
;;; Don't change this unless you meet a memory overflow problem.
; (bind ?*chain-rules-optimisation-type* MEMORY)


;;; In the previous standard behaviour of CSP-Rules, when a pattern could have produced more than one elimination,
;;; the activation of a simpler rule by the first elimination could prevent further potential eliminations.
;;; This default behaviour is now changed:
;;; - for Whips[1],
;;; - for bivalue-chains (typed or not), z-chains (typed or not) and t-Whips (typed or not),
;;; - for Oddagons.
;;; However, CSP-Rules allows to revert to the previous behaviour,
;;; independently for each of the above four groups of rules.
;;; Un-comment the relevant line(s) below if you want these rules to be "interrupted" as all the other rules.
;;; Notice that ?*blocked-Subsets* = TRUE, ?*blocked-chains* = TRUE or ?*blocked-oddagons* = TRUE
;;; will imply ?*blocked-Whips[1]* = TRUE
; (bind ?*blocked-Whips[1]* FALSE)
; (bind ?*blocked-chains* FALSE) ; i.e. bivalue-chains, z-chains and t-Whips (typed or not)
; (bind ?*blocked-oddagons* FALSE)
;;; The old interrupted behaviour can be globally selected by ?*unblocked-behaviour* to TRUE;
;;; (equivalent to setting the above four values to FALSE):
; (bind ?*unblocked-behaviour* TRUE)


;;; Choose what's printed as the output:
;;; The following default combination (keeping all the semi-colons) is what has been used in [PBCS2].
;;; Changes below will print more or less details.
; (bind ?*print-init-details* TRUE)
; (bind ?*print-ECP-details* TRUE)
; (bind ?*print-actions* FALSE)
; (bind ?*print-levels* TRUE)
; (bind ?*print-main-levels* TRUE)
; (bind ?*print-solution* FALSE)

;;; As H/V-singles, I-singles, P-singles and B-singles are trivial rules that appear very often,
;;; their output is not printed by default.
;;; Printing can be enabled here:
 (bind ?*print-HV-single* TRUE)
 (bind ?*print-I-single* TRUE)
 (bind ?*print-P-single* TRUE)
 (bind ?*print-B-single* TRUE)


;;; By default, the final output is not printed in any form.
;;; But you can independently choose to print it in two forms: H/V borders and in/out (IO) cells.
;;; (However, IO will be effectively printed only if rules for Colours are activated.)
 (bind ?*print-IO-solution* TRUE)
 (bind ?*print-HV-solution* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1) Choose ordinary resolution rules
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 ;;; My standard config and its usual variants
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Without Loops, most puzzles cannot be solved;
;;; they are therefore always activated in my usual configuration.
;;; By default, ?*loops-max-length* is set to 300;
;;; it may have to be increased for very large puzzles (size > 15); change it here:
; (bind ?*loops-max-length* 300)
 (bind ?*Loops* TRUE)
;;; extended-Loops are useful in some circumstances
;;; their max-length is the same as Loops.
 (bind ?*xtd-Loops* TRUE)

;;; Propagation of colours (or in/out positions) is also a very general and useful method.
 (bind ?*Colours* TRUE)

;;; By default, all the application-specific rules are FALSE
;;; They are enabled in  my standard configuration:
; (bind ?*special-Whips[1]* TRUE)
 (bind ?*W1-equiv-patterns* TRUE)
 (bind ?*non-W1-equiv-patterns* TRUE)

;;; generic:
; (bind ?*Whips[1]* TRUE) ; allows to more easily activate only whips[1]
;;; Beware that, for large puzzles, the whips maximum length may have to be reduced
;;; due to the high branchiung factor of Slitherlink and resulting potential memory overflow
 (bind ?*Whips[1]* TRUE)
 (bind ?*Bivalue-Chains* TRUE)
 (bind ?*Whips* TRUE)
 


;;; Some additional rules I use frequently:
; (bind ?*z-Chains* TRUE)
; (bind ?*t-Whips* TRUE)

;;; Some rules I use occasionally:
; (bind ?*G2-Whips* = TRUE)

;;; Some rules I almost never use:
; (bind ?*Braids* TRUE)


;;; The maximum length of all the generic chains can be lowered at once:
 (defglobal ?*all-chains-max-length* = 5)

;;; Maximum lengths can also be lowered individually:
; (bind ?*bivalue-chains-max-length* 20)
; (bind ?*z-chains-max-length* 20)
; (bind ?*t-whips-max-length* 36)
; (bind ?*whips-max-length* 36)
; (bind ?*g2whips-max-length* 36)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 2) Choose typical T&E config options, for various predefined purposes
;;;
;;; DO NOT FORGET TO DISABLE ALL THE RULES IN THE OTHER SECTIONS
;;; BEFORE ACTIVATING T&E
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; Un-comment the proper line below to change the level of details you want to be printed:
; (bind ?*print-actions* FALSE)
; (bind ?*print-levels* TRUE)
; (bind ?*print-ECP-details* TRUE)
; (bind ?*print-solution* FALSE)
; (bind ?*print-hypothesis* FALSE)
; (bind ?*print-phase* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; 2a) for checking membership in T&E(*, k), k = 1,2,3
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; In Slitherlink, only the H or V candidates are used as hypotheses.
;;; Choose one of the following 2 depths of T&E:

; (bind ?*TE1* TRUE) ;;; for T&E at level 1
; (bind ?*TE2* TRUE) ;;; for T&E at level 2

;;; For Slitherlink, it is recommended to use whips[1], i.e. to use gT&E instead of T&E
; (bind ?*Whips[1]* TRUE)
; (bind ?*Loops* TRUE)
; (bind ?*xtd-Loops* TRUE)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3) Choose DFS (depth-first search) options
;;;
;;; DO NOT FORGET TO DISABLE ALL THE RULES IN THE OTHER SECTIONS BEFORE ACTIVATING DFS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; DFS can be used to provide a relatively fast solution

; (bind ?*print-actions* FALSE)
; (bind ?*print-levels* TRUE)
; (bind ?*print-ECP-details* TRUE)
; (bind ?*print-solution* FALSE)
; (bind ?*print-hypothesis* FALSE)
; (bind ?*print-solution* FALSE)
; (bind ?*print-phase* TRUE)

;;; To activate DFS:
; (bind ?*DFS* TRUE)
;;; To activate priority for bivalue cells, activate this line, in addition to the above line:
; (bind ?*special-DFS* TRUE)

;;; In Slitherlink, it is almost always necessary to activate whips[1] and Loops with DFS:
; (bind ?*Whips[1]* TRUE)
; (bind ?*Loops* TRUE)
;;; Extended-Loops are an option
; (bind ?*xtd-Loops* TRUE)



;;;                                                                                                      ;;;
;;;                                                                                                      ;;;
;;;                                                                                                      ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;                                                                                                      ;;;
;;;                                         end of allowed changes                                       ;;;
;;;                                                                                                      ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; AUTOMATIC CONFIGURATION AND LOADING (DO NOT CHANGE ANYTHING BELOW THIS LINE)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Now, after checking consistency of the config, load all.
;;; The generic loader also loads the application-specific files:
(if (check-config-selection) then (batch ?*CSP-Rules-Generic-Loader*))

